<#
  Creates a new tool wiki page:  content/_tools/<slug>/index.md
  Drop photo.jpg (and any datasheets) in that folder.

  Any Lab article that lists the same name in `tools:` links to it automatically:
    tools: [Parches calefactables USB 5 V]  →  content/_tools/parches-calefactables-usb-5-v/

  Usage (from the repo folder):
    .\new-tool.ps1 "ESP32-CAM"
    .\new-tool.ps1 "Batería 18650"
#>
param(
  [Parameter(Mandatory = $true, Position = 0)][string]$Name,
  [ValidateSet('es', 'en')][string]$Lang = 'es'
)

# Same rule the site uses to match names: "Batería 18650" -> "bateria-18650"
$plain = $Name.Normalize([Text.NormalizationForm]::FormD) -replace '\p{Mn}', ''
$slug = ($plain.ToLowerInvariant() -replace '[^a-z0-9]+', '-').Trim('-')

$dir = Join-Path $PSScriptRoot "content/_tools/$slug"
if (Test-Path $dir) { Write-Error "Already exists: $dir"; exit 1 }
New-Item -ItemType Directory -Force $dir | Out-Null

$template = @"
---
title: $Name
lang: $Lang
summary: Qué es y para qué lo uso, en una frase.
# image: photo.jpg        # default — drop photo.jpg in this folder
specs:                    # "label: value" lines, shown as a data sheet
  Alimentación:
  Precio aprox.:
# links:
#   - label: Comprar
#     url: https://…
#   - label: Datasheet
#     url: https://…
---

Lo que he aprendido usándolo: trucos, problemas, alternativas.
"@

[IO.File]::WriteAllText((Join-Path $dir 'index.md'), $template, (New-Object Text.UTF8Encoding $false))

Write-Host "Created $dir" -ForegroundColor Green
Write-Host "Name to use in an article's tools: list ->  $Name"
if (Get-Command code -ErrorAction SilentlyContinue) { code (Join-Path $dir 'index.md') }
