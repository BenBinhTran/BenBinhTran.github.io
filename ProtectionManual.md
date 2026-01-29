# Website Protection & Publication Guide
This manual provides the commands to protect your code and publish it to GitHub.
## 1. Protection (Minification)
Before publishing, run the protection script to minify your HTML and make it harder to copy.
1.  Open PowerShell in this folder.
2.  Run the script:
    ```powershell
    ./protect.ps1
    ```
3.  Check that `index.html` is minified and `index.html.bak` (original) is created.

## 2. Publishing to GitHub
Use the following Git commands in your terminal to upload your changes to **PhoenixWeaver**.

### A. First Time Setup (One time only)
Run these commands if you haven't connected this folder to GitHub yet:

```bash
git init
git branch -M main
git remote add origin https://github.com/BinhBenTran/BenTran_CV.git
```

```
### B. Update & Publish (Routine)
Run these commands every time you update your site:
```bash
# 1. Stage all changes
git add .

# 2. Commit with a message
git commit -m "Update website content and protection"

# 3. Push to GitHub
git push -u origin main

```
Since you already have a remote named origin, you cannot "add" it again. Instead, you must update it.
1. Fix the Git Remote URL
Run this command in your terminal to point your repository to the correct location:
powershell
git remote set-url origin https://github.com/BinhBenTran/BenTran_CV.git
After running that, you can push normally


=================================================================================================================================
Fixing the "No Module" Error: The error happens because the html-minifier package isn't installed in that specific folder. The script below will automatically install it for you.
Universal PowerShell Script: You do not need different scripts for different index.html files. Since the logic (preserve header -> minify -> save) is the same for all of them, I have created a single protect.ps1 script.
You can copy this protect.ps1 file into any folder (like your AccountingFirmDemo folder), run it, and it will protect the index.html inside that specific folder. It contains all the necessary JavaScript logic embedded within it, so you don't need to copy multiple files.


1. Create protect.ps1
This script checks for the required module (installing it if missing), creates a temporary minification task, and executes it on the local index.html.


New file: protect.ps1
+78
 Show full code block 
Write-Host "🛡️  PhoenixFlix HTML Protection" -ForegroundColor Cyan
Write-Host "==============================="


# 1. Check if index.html exists
if (-not (Test-Path "index.html")) {
    Write-Error "❌ index.html not found in the current directory."
    Write-Host "   Please copy this script to the folder containing your index.html."
    Pause
    exit
}


# 2. Check for Node.js
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Error "❌ Node.js is not installed. Please install Node.js to continue."
    Pause
    exit
}


# 3. Check and Install html-minifier if missing
if (-not (Test-Path "node_modules/html-minifier")) {
    Write-Host "📦 Installing html-minifier module..." -ForegroundColor Yellow
    npm install html-minifier
}


# 4. Create a temporary Node.js script with the minification logic
#    This ensures the logic travels with this PS1 file.
$jsCode = @"
const fs = require('fs');
try {
    const minify = require('html-minifier').minify;
    const file = 'index.html';
    const backup = 'index.html.bak';


    console.log('📖 Reading ' + file + '...');
    const content = fs.readFileSync(file, 'utf8');


    // Preserve the top header comment
    let header = '';
    const headerMatch = content.match(/^<!--[\s\S]*?-->/);
    if (headerMatch) header = headerMatch[0] + '\n';


    console.log('💾 Creating backup at ' + backup + '...');
    fs.writeFileSync(backup, content);


    console.log('⚡ Minifying content...');
    const result = minify(content, {
        collapseWhitespace: true,
        removeComments: true,
        collapseBooleanAttributes: true,
        removeAttributeQuotes: true,
        removeEmptyAttributes: true,
        minifyCSS: true,
        minifyJS: true,
        removeScriptTypeAttributes: true,
        removeStyleLinkTypeAttributes: true
    });


    fs.writeFileSync(file, header + result);
    console.log('✅ Successfully protected ' + file);
} catch (e) {
    console.error('❌ Error:', e.message);
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

Write-Host "✨ Done." -ForegroundColor Green
Pause
How to use this for your other files:
Copy the protect.ps1 file created above.
Paste it into D:\PHOENIXFLIX\PhoenixflixChristmasNYECEXs_V15\public\AccountingFirmDemo (or any other folder).
Right-click the file and select "Run with PowerShell".
This single script will handle the installation of dependencies and the protection of the specific index.html in that folder, regardless of the project.

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

Yes, you can absolutely delete those files (minification-index.js, protect.ps1, protect-main.bat) after running them. The resulting index.html is a standalone file and does not require the scripts to work on the web.

However, please keep these critical points in mind before you delete and publish:

The Backup File (index.html.bak): The script creates this backup of your original code. Do not lose this file. Since index.html is now minified (hard to read), you will need the .bak file if you ever want to edit your website content in the future.
Node Modules: The script installs a folder called node_modules (and a package-lock.json). You should delete these as well before publishing to GitHub, as they are large and unnecessary for a static website repo.
Recommended: Use .gitignore instead of deleting
Instead of deleting these files every time you want to push to GitHub, it is standard practice to use a .gitignore file. This tells GitHub to ignore your tools and backups, allowing you to keep them on your computer for future updates without cluttering your repository.

Here is how to create a .gitignore file for your project:

New file: .gitignore
+13
 Show full code block 
# Ignore Node.js dependencies
node_modules/
package-lock.json
package.json

# Ignore protection scripts
minification-index.js
minification-pages.js
protect.ps1
protect-main.bat

# Ignore backup files (Keep these safe locally!)
*.bak
Summary of Cleanup Steps (if you prefer deleting)
If you prefer to delete everything manually to have a clean folder for upload:

Verify index.html works in your browser.
Move index.html.bak to a safe place (this is your source code).
Delete:
minification-index.js
minification-pages.js (if present)
protect.ps1
protect-main.bat
node_modules/ (folder)
package-lock.json
Publish the remaining files to GitHub.

===============================================================================
Based on the new protect.ps1 script, you can safely delete the old manual scripts and dependency files before running it. The PowerShell script is designed to be self-contained and will reinstall what it needs.

Files You Can Delete Immediately
Since protect.ps1 handles the logic and installation, you can remove these files to clean up your folder:

minification-index.js (Old logic, no longer needed)
minification-pages.js (Old logic, no longer needed)
protect-main.bat (Old batch runner, replaced by the .ps1)
node_modules (Folder) - The script will reinstall this automatically if missing.
package-lock.json - The script will regenerate this.
package.json - (If it only exists for this tool, you can delete it; the script will work without it).
Files You Must KEEP
index.html (Your source code)
protect.ps1 (The new script you are about to run)
.gitignore
README.md
Your images (e.g., sky.jpg, Radar.jpg)
Update to .gitignore
I recommend adding temp-protect-logic.js to your .gitignore. This is the temporary file created by protect.ps1. If the script ever stops unexpectedly before cleaning up, you don't want this temporary file accidentally uploaded to GitHub.

==============================================================================================================
The "working file" (your original, un-minified code) is currently located only on your local computer, named index.html.bak.

It is not on GitHub because your .gitignore file is set to ignore *.bak files. This is actually good for protection—it means your clean source code isn't publicly visible in the repository, only the protected (minified) version is.

How to Edit Your Website Again
To make changes, you need to restore the backup file locally. I have created a simple script to do this for you.

1. Create restore.ps1
This script will overwrite the minified index.html with your original index.html.bak so you can edit it.

New file: restore.ps1
+11
 Show full code block 
Write-Host "🔄 Restoring Working File..." -ForegroundColor Cyan

if (Test-Path "index.html.bak") {
    Copy-Item "index.html.bak" "index.html" -Force
    Write-Host "✅ Success! 'index.html' has been restored to the original un-minified version." -ForegroundColor Green
    Write-Host "📝 You can now edit the file."
} else {
    Write-Host "❌ Error: Backup file 'index.html.bak' not found." -ForegroundColor Red
    Write-Host "   Did you run the protection script?"
}
Pause
2. Update .gitignore
We should also ignore this new script so it doesn't get uploaded to GitHub.

.gitignore
-0
+1
# Ignore documentation related to protection
ProtectionManual.md
publish.ps1
restore.ps1
Summary of your Workflow
To Edit: Run restore.ps1. Edit index.html normally.
To Publish: Run protect.ps1 (creates backup & minifies), then run publish.ps1 (uploads to GitHub).

=====================================================
Yes, Vercel and Render will work perfectly with just your index.html file. You do not need the node_modules folder or the Node.js environment on the hosting server.

Here is why:

It is a Static Site: Your index.html is a standalone file. It contains all the HTML, CSS, and JavaScript required for the browser to run your website.
Node.js was just a Tool: You only used Node.js to create (minify/protect) the file. Once the file is created, it doesn't need Node.js anymore. It's like baking a cake: you need the mixer (Node.js) to make the batter, but you don't serve the mixer to the guests, you just serve the cake (index.html).
Your Configuration is Correct: Your .gitignore file is already set up to ignore node_modules, package.json, and package-lock.json.
This means when you push to GitHub, those Node.js folders are not uploaded.
Vercel/Render will see only your index.html and images, recognize it as a "Static Site," and host it immediately without any errors.
You are good to go!
===============================================

The error "Deployment request did not have a git author with contributing access to the project on Vercel" happens because the email address attached to your Git commit does not match the email address of your Vercel account. Vercel blocks this for security reasons.

To fix this, you need to update your local Git identity to match your Vercel email and then update the commit.

I have created a script called fix-vercel-identity.ps1 to do this for you automatically.

1. Create fix-vercel-identity.ps1
New file: fix-vercel-identity.ps1
+30
 Show full code block 
Write-Host "🔧 Vercel Identity Fixer" -ForegroundColor Cyan
Write-Host "========================"
Write-Host "This error occurs because Vercel requires the Git Commit Author to match a Vercel Team Member."
Write-Host ""

# 1. Get the correct email
$email = Read-Host "Enter the EMAIL address associated with your Vercel account"

if ([string]::IsNullOrWhiteSpace($email)) {
    Write-Error "❌ Email is required."
    Pause
    exit
}

# 2. Configure Git locally for this repository
git config user.email $email
git config user.name "BinhBenTran"

Write-Host "👤 Identity set to: BinhBenTran <$email>" -ForegroundColor Gray

# 3. Amend the last commit
Write-Host "📝 Updating the last commit with this identity..."
git commit --amend --reset-author --no-edit

# 4. Force push to GitHub
Write-Host "⬆️  Pushing changes to GitHub..."
git push -u origin main --force

Write-Host "`n✅ Done! Vercel should now automatically detect the new commit and deploy." -ForegroundColor Green
Pause
2. Update .gitignore
Add the new script to your ignore list.

.gitignore
-0
+1
ProtectionManual.md
publish.ps1
restore.ps1
fix-vercel-identity.ps1
How to use:
Right-click fix-vercel-identity.ps1 and select "Run with PowerShell".
When asked, enter the exact email address you use to log in to Vercel.
The script will update your commit and push it to GitHub.
Go back to your Vercel dashboard; the deployment should now start automatically (or you can try creating it again).

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
It can be frustrating when a script that used to work suddenly stops without any apparent changes. Since I don't have the content of your protect.ps1 file, I will guide you through the most common "silent killers" for PowerShell scripts.

Here are the steps to diagnose and fix the issue, ordered from the most likely to the least likely causes.

1. Check Execution Policy
Even if you haven't changed the file, your environment (or a Group Policy update) might have reset your permissions to run scripts.

Run this command to see your current policy:

powershell
Get-ExecutionPolicy
If it returns Restricted, scripts are blocked. To fix this for just your current session (safe and temporary), run:

powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
Then try running .\protect.ps1 again.

2. Unblock the File (Mark of the Web)
If the file was moved, copied, or downloaded, Windows might have flagged it as "unsafe," preventing it from executing logic without throwing a loud error.

Run this command to explicitly trust the file:

powershell
Unblock-File -Path .\protect.ps1
3. Run with Administrator Privileges
If the script modifies system files, registry keys, or services, it will fail silently if your PowerShell terminal isn't elevated.

Right-click your PowerShell or Terminal icon.
Select Run as Administrator.
Try the script again.
4. Catch Silent Errors
If the script is running but crashing immediately, the window might be closing too fast, or the error might be suppressed.

Try running the script specifically calling the PowerShell executable with the -NoExit flag to keep the window open so you can read any red error text:

powershell
powershell.exe -NoExit -File .\protect.ps1
Alternatively, check the global error variable immediately after the script fails to run:

powershell
.\protect.ps1
$Error[0] | Select-Object *
5. Verify File Encoding
If you edited the file recently in a different editor (like Notepad vs. VS Code), the encoding might have changed (e.g., from UTF-8 to UTF-16 or UTF-8 with BOM). PowerShell can sometimes struggle to read the file correctly if the encoding is unexpected.

Open the file in a text editor like Notepad.
Go to File > Save As.
Ensure the Encoding is set to UTF-8 (or UTF-8 with BOM).
6. Add Debugging "Breadcrumbs"
If none of the above works, the script might be running but skipping logic due to a condition (like an if statement) evaluating differently than before.

Add Write-Host lines to the top and middle of your script to see how far it gets:

powershell
Write-Host "Script started..." -ForegroundColor Green

# ... your existing code ...

Write-Host "Made it to the middle..." -ForegroundColor Yellow
If you can share the code inside protect.ps1, I can give you a specific analysis of what might be failing.