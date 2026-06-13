# =========================================================
# Kids Tiffin — GitHub Pages Setup Script
# Run this from PowerShell inside the kids-tiffin-website folder
# Usage: Right-click this file > "Run with PowerShell"
# =========================================================

# --- EDIT THIS ---
$GITHUB_USERNAME = "YOUR_GITHUB_USERNAME"   # e.g. "johnsmith"
$REPO_NAME       = "kids-tiffin"
# -----------------

$ErrorActionPreference = "Stop"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir

Write-Host ""
Write-Host "=== Kids Tiffin — GitHub Setup ===" -ForegroundColor Cyan
Write-Host ""

# 1. Init git
git init
git add -A
git commit -m "Initial commit — Kids Tiffin website"

# 2. Set remote
$remoteUrl = "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
git remote remove origin 2>$null
git remote add origin $remoteUrl
git branch -M main

# 3. Push
Write-Host ""
Write-Host "Pushing to $remoteUrl ..." -ForegroundColor Yellow
git push -u origin main

Write-Host ""
Write-Host "Done! Next steps:" -ForegroundColor Green
Write-Host "1. Go to: https://github.com/$GITHUB_USERNAME/$REPO_NAME/settings/pages"
Write-Host "2. Under 'Source', select 'GitHub Actions'"
Write-Host "3. Your site will be live at: https://$GITHUB_USERNAME.github.io/$REPO_NAME"
Write-Host ""
