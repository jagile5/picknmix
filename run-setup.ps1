# Run this from PowerShell, from an empty folder.
# Right-click this file -> "Run with PowerShell", or from an open PowerShell
# window: .\run-setup.ps1
#
# If you get an error about scripts being disabled, run this once first
# (in an admin PowerShell): Set-ExecutionPolicy -Scope CurrentUser RemoteSigned

$ErrorActionPreference = "Stop"

if (-not (Get-Command packwiz -ErrorAction SilentlyContinue)) {
    Write-Host "packwiz isn't on your PATH yet." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Easiest install on Windows:"
    Write-Host "  1. Install Go: https://go.dev/dl/  (download the Windows installer, run it, next-next-finish)"
    Write-Host "  2. Open a NEW PowerShell window (so it picks up the updated PATH)"
    Write-Host "  3. Run: go install github.com/packwiz/packwiz@latest"
    Write-Host "  4. This puts packwiz.exe in: $env:USERPROFILE\go\bin"
    Write-Host "     If step 3 finishes with no errors but 'packwiz' still isn't found,"
    Write-Host "     add that folder to your PATH:"
    Write-Host "     Settings -> System -> About -> Advanced system settings ->"
    Write-Host "     Environment Variables -> edit 'Path' under User variables -> New ->"
    Write-Host "     paste: $env:USERPROFILE\go\bin"
    Write-Host "  5. Open another new PowerShell window and re-run this script"
    exit 1
}

Write-Host "packwiz found." -ForegroundColor Green
Write-Host ""

if (-not (Test-Path "pack.toml")) {
    Write-Host "== No pack.toml found, running packwiz init ==" -ForegroundColor Cyan
    Write-Host "When prompted:"
    Write-Host "  Minecraft version -> 1.21.1"
    Write-Host "  Mod loader        -> neoforge"
    Write-Host "  NeoForge version  -> pick the newest offered for 1.21.1"
    Write-Host ""
    packwiz init
} else {
    Write-Host "== pack.toml already exists, skipping init ==" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "== Adding mods (this is the long part, grab a coffee) ==" -ForegroundColor Cyan
& "$PSScriptRoot\add-mods.ps1"

Write-Host ""
Write-Host "== Exporting a testable .mrpack ==" -ForegroundColor Cyan
packwiz mr export

Write-Host ""
Write-Host "Done. You should have a .mrpack file in this folder now." -ForegroundColor Green
Write-Host "Import it into Prism Launcher: Add Instance -> Import -> select the .mrpack"
