Write-Host " PhoenixFlix HTML Protection (Aggressive Mode)" -ForegroundColor Red
Write-Host "=============================================="
Write-Host "  Warning: This mode minifies JavaScript. Check animations after running."

# 1. Auto-Restore if backup exists
if (Test-Path "index.html.bak") {
    Write-Host "  Restoring source from backup before processing..." -ForegroundColor Gray
    Copy-Item "index.html.bak" "index.html" -Force
}

# 2. Check if index.html exists
if (-not (Test-Path "index.html")) {
    Write-Error "index.html not found."
    Pause
    exit
}

# 3. Check for Node.js
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Error "Node.js is not installed."
    Pause
    exit
}

# 4. Check and Install html-minifier
if (-not (Test-Path "node_modules/html-minifier")) {
    Write-Host " Installing html-minifier module..." -ForegroundColor Yellow
    npm install html-minifier
}

# 5. Create a temporary Node.js script with AGGRESSIVE minification logic
$jsCode = @"
const fs = require('fs');
try {
    const minify = require('html-minifier').minify;
    const file = 'index.html';
    const backup = 'index.html.bak';

    console.log('[*] Reading ' + file + '...');
    const content = fs.readFileSync(file, 'utf8');

    // Preserve the top header comment
    let header = '';
    const headerMatch = content.match(/^<!--[\s\S]*?-->/);
    if (headerMatch) header = headerMatch[0] + '\n';

    console.log('[*] Creating backup at ' + backup + '...');
    fs.writeFileSync(backup, content);

    console.log('[*] Minifying content (Aggressive Mode)...');
    const result = minify(content, {
        collapseWhitespace: true,
        removeComments: true,
        collapseBooleanAttributes: true,
        removeAttributeQuotes: true,
        removeEmptyAttributes: true,
        minifyCSS: true,
        minifyJS: true, // ENABLED: Aggressive JS compression
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

# 6. Run the Node script
node $tempJsFile

# 7. Cleanup
if (Test-Path $tempJsFile) {
    Remove-Item $tempJsFile
}

Write-Host " Done. Aggressive protection applied." -ForegroundColor Green
Pause