<#
  Local preview of the site at http://localhost:4000 (Docker).
    .\scripts\preview.ps1 start   # starts Docker Desktop if needed, then the site, then opens the browser
    .\scripts\preview.ps1 stop
    .\scripts\preview.ps1 logs    # build errors show up here
  Drafts (draft: true) are visible in the preview, never on the live site.
#>
param([ValidateSet('start', 'stop', 'logs', 'open')][string]$Action = 'start')

$name = 'oqueber-preview'
$url = 'http://localhost:4000'
$root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path

function Test-Docker { docker info *> $null; return ($LASTEXITCODE -eq 0) }

function Wait-Docker {
  if (Test-Docker) { return }
  Write-Host 'Starting Docker Desktop...'
  Start-Process "$env:ProgramFiles\Docker\Docker\Docker Desktop.exe"
  for ($i = 0; $i -lt 60; $i++) { Start-Sleep 3; if (Test-Docker) { return } }
  throw 'Docker Desktop did not start. Open it manually and try again.'
}

function Wait-Site {
  Write-Host 'Building the site (first time ~2 min, then a few seconds)...'
  for ($i = 0; $i -lt 90; $i++) {
    try { Invoke-WebRequest $url -UseBasicParsing -TimeoutSec 3 | Out-Null; return $true } catch { Start-Sleep 2 }
  }
  return $false
}

switch ($Action) {
  'start' {
    Wait-Docker
    $exists = docker ps -a --filter "name=^$name$" --format '{{.Names}}'
    if ($exists) {
      docker start $name | Out-Null
    } else {
      docker run -d --name $name -p 4000:4000 -v "${root}:/site" -v oqueber-gems:/usr/local/bundle -w /site ruby:3.3 `
        bash -c 'bundle install --quiet && bundle exec jekyll serve --host 0.0.0.0 --force_polling' | Out-Null
    }
    if (Wait-Site) {
      Write-Host "Preview running at $url - it rebuilds when you save a file." -ForegroundColor Green
      Start-Process $url
    } else {
      Write-Host 'The site did not answer. Last log lines:' -ForegroundColor Yellow
      docker logs --tail 30 $name
    }
  }
  'stop' { docker rm -f $name | Out-Null; Write-Host 'Preview stopped.' }
  'logs' { docker logs --tail 60 $name }
  'open' { Start-Process $url }
}
