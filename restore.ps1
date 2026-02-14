Write-Host "🔄 Restoring Working File..." -ForegroundColor Cyan

if (Test-Path "index.html.bak") {
    Copy-Item "index.html.bak" "index.html" -Force
    Write-Host "✅ Success! 'index.html' has been restored to the original un-minified version." -ForegroundColor Green
    Write-Host "📝 You can now edit the file."
} else {
    Write-Host "❌ Error: Backup file 'index.html.bak' not found." -ForegroundColor Red
    Write-Host "   If you lost the backup, try right-clicking index.html in VS Code and selecting 'Format Document'."
}
Pause