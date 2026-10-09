<#
  Creates a new Lab article:  content/_lab/YYYY/MM/DD/<slug>/index.md
  plus the media folders photos/, audio/ and code/ next to it.

  Usage (from the repo folder):
    .\new-idea.ps1 "Lámpara que sigue el sol"
    .\new-idea.ps1 "Robot de riego" -Status working
    .\new-idea.ps1 "Weather station" -Lang en -Date 2025-06-01
#>
param(
  [Parameter(Mandatory = $true, Position = 0)][string]$Title,
  [ValidateSet('idea', 'working', 'done')][string]$Status = 'idea',
  [ValidateSet('es', 'en')][string]$Lang = 'es',
  [datetime]$Date = (Get-Date)
)

# "Lámpara que sigue el sol" -> "lampara-que-sigue-el-sol"
$plain = $Title.Normalize([Text.NormalizationForm]::FormD) -replace '\p{Mn}', ''
$slug = ($plain.ToLowerInvariant() -replace '[^a-z0-9]+', '-').Trim('-')

$dir = Join-Path $PSScriptRoot ("content/_lab/{0}/{1}" -f $Date.ToString('yyyy/MM/dd'), $slug)
if (Test-Path $dir) { Write-Error "Already exists: $dir"; exit 1 }

foreach ($sub in 'photos', 'audio', 'code') { New-Item -ItemType Directory -Force (Join-Path $dir $sub) | Out-Null }

$template = @"
---
title: $Title
date: $($Date.ToString('yyyy-MM-dd'))
draft: true              # hidden on the live site — delete this line to publish
status: $Status          # idea | working | done
lang: $Lang
summary: Una frase que explique la idea a cualquiera.
tools: []             # e.g. [ESP32, Impresora 3D, Python]
ask:                  # optional open question for readers, e.g. ¿Qué sensor usarías?
# cover: poster.jpg   # default; drop poster.jpg in this folder
# links:
#   - label: Thingiverse
#     url: https://…
#
# Write markdown under each marker below (leave one empty and the site shows a friendly note):
#   result  → how it ended: what works, what doesn't
#   brief   → the problem and why it matters
#   process → how you build it; photos/ and audio/ show up here automatically
#   tools   → extra notes; files in code/ are listed here for download
#   log     → one dated line per step (newest shows first; VS Code snippet: "log")
---

<!-- result -->

<!-- brief -->

<!-- process -->

<!-- tools -->

<!-- log -->
- $($Date.ToString('yyyy-MM-dd')) $(if ($Lang -eq 'en') { 'The idea is born.' } else { 'Nace la idea.' })
"@

[IO.File]::WriteAllText((Join-Path $dir 'index.md'), $template, (New-Object Text.UTF8Encoding $false))

Write-Host "Created $dir" -ForegroundColor Green
Write-Host "Next: drop poster.jpg there, photos in photos/, then write index.md."
if (Get-Command code -ErrorAction SilentlyContinue) { code (Join-Path $dir 'index.md') }
