Write-Host "Configuring Git for BinhBenTran..." -ForegroundColor Cyan

# 1. Reset the remote to ensure it points ONLY to BinhBenTran
git remote remove origin 2>$null
git remote add origin https://github.com/BinhBenTran/BinhBenTran.github.io

Write-Host "Remote set to: https://github.com/BinhBenTran/BinhBenTran.github.io" -ForegroundColor Green

# 2. Authentication Check (GitHub CLI)
if (Get-Command gh -ErrorAction SilentlyContinue) {
    Write-Host "`n GitHub CLI detected. Starting browser login..." -ForegroundColor Yellow
    Write-Host "   (Please authorize 'GitHub CLI' in the browser window that opens)"
    
    # --web flag forces the browser flow
    gh auth login --web --hostname github.com
    
    # Ensure git uses these credentials
    gh auth setup-git
} else {
    Write-Host "`n GitHub CLI (gh) not found. Relying on Git Credential Manager." -ForegroundColor Yellow
    Write-Host "   If a login window appears, please sign in as 'BinhBenTran'."
}

# 3. Stage and Commit any changes >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Write-Host "`n Staging and Committing..."
git add .
git commit -m "271225 1715 Update website content and protection" *>$null

# 4. Push to GitHub
Write-Host " Attempting to push (Force)..." -ForegroundColor Cyan
# Using --force to overwrite remote history (solves 'fetch first' error)
git push -u origin main --force

if ($LASTEXITCODE -ne 0) {
    Write-Host "`n ERROR: Push failed. Please check if the repo exists on GitHub." -ForegroundColor Red
} else {
    Write-Host "`n SUCCESS: Published to BinhBenTran/BenTran_CV" -ForegroundColor Green
}
Pause