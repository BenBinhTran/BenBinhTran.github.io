Write-Host "EASY CHILL PhoenixFlix HTML Protection" -ForegroundColor Cyan
Write-Host "========================================="

# 1. Check if index.html exists
if (-not (Test-Path "index.html")) {
    Write-Error "index.html not found in the current directory."
    Pause
    exit
}

# 2. Check for Node.js
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Error "Node.js is not installed. Please install Node.js to continue."
    Pause
    exit
}

# 3. Check and Install html-minifier if missing
if (-not (Test-Path "node_modules/html-minifier")) {
    Write-Host " Installing html-minifier module..." -ForegroundColor Yellow
    npm install html-minifier
}

# 4. Create a temporary Node.js script
# This script reads your NEW index.html, backs it up to index.html.bak, and then minifies index.html
$jsCode = @"
const fs = require('fs');
try {
    const minify = require('html-minifier').minify;
    const file = 'index.html';
    const backup = 'index.html.bak';

    console.log('[*] Reading current ' + file + '...');
    const content = fs.readFileSync(file, 'utf8');

    // Preserve the top header comment
    let header = '';
    const headerMatch = content.match(/^<!--[\s\S]*?-->/);
    if (headerMatch) header = headerMatch[0] + '\n';

    // SAFETY STEP: Save the readable code to .bak before minifying
    console.log('[*] Updating backup at ' + backup + ' with new content...');
    fs.writeFileSync(backup, content);

    console.log('[*] Minifying content...');
    const result = minify(content, {
        collapseWhitespace: true,
        removeComments: true,
        collapseBooleanAttributes: true,
        removeAttributeQuotes: true,
        removeEmptyAttributes: true,
        minifyCSS: true,
        minifyJS: false, // Keep JS readable for animations
        removeScriptTypeAttributes: true,
        removeStyleLinkTypeAttributes: true
    });

    fs.writeFileSync(file, header + result);
    console.log('[+] Successfully protected ' + file);
} catch (e) {
    console.error('[-] Error:', e.message);
    process.exit(1);
}
"@

$tempJsFile = "temp-protect-logic.js"
Set-Content -Path $tempJsFile -Value $jsCode -Encoding UTF8

# 5. Run the Node script
node $tempJsFile

# 6. Cleanup
if (Test-Path $tempJsFile) {
    Remove-Item $tempJsFile
}

Write-Host " Done. Your site is protected." -ForegroundColor Green
Pause
