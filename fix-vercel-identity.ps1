Write-Host " Vercel Identity Fixer" -ForegroundColor Cyan
Write-Host "========================"
Write-Host "This error occurs because Vercel requires the Git Commit Author to match a Vercel Team Member."
Write-Host ""

# 1. Get the correct email
$email = Read-Host "Enter the EMAIL address associated with your Vercel account"

if ([string]::IsNullOrWhiteSpace($email)) {
    Write-Error " Email is required."
    Pause
    exit
}

# 2. Configure Git locally for this repository
git config user.email $email
git config user.name "BinhBenTran"

Write-Host " Identity set to: BinhBenTran <$email>" -ForegroundColor Gray

# 3. Amend the last commit
Write-Host " Updating the last commit with this identity..."
git commit --amend --reset-author --no-edit

# 4. Force push to GitHub
Write-Host " Pushing changes to GitHub..."
git push -u origin main --force

Write-Host "`n Done! Vercel should now automatically detect the new commit and deploy." -ForegroundColor Green
Pause