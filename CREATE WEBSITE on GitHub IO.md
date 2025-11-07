# Publishing CV to GitHub

## ⚠️ Important: Repository Name Must Match GitHub Username

**Your GitHub account is:** `BinhBenTran` (from https://github.com/BinhBenTran/BinhBenTran)

**Therefore, you can create:** `BinhBenTran.github.io` ✅

The repository name **must exactly match** your GitHub username for `username.github.io` to work.

---

## Setup BinhBenTran.github.io

Since your account is `BinhBenTran`, follow these steps:

1. **Create a GitHub repository** named exactly `BinhBenTran.github.io`
   - Go to https://github.com/new
   - Repository name: `BinhBenTran.github.io` (must match your GitHub username exactly)
   - Make it **Public** (required for free GitHub Pages)
   - Do NOT initialize with README, .gitignore, or license
   - Click "Create repository"

2. **Navigate to your CV directory**
```bash
cd D:\CV\BinhBenTran_CV
```

3. **Update the remote repository** (or add if it doesn't exist):
```bash
git remote set-url origin https://github.com/BinhBenTran/BinhBenTran.github.io.git
```

Or if no remote exists:
```bash
git remote add origin https://github.com/BinhBenTran/BinhBenTran.github.io.git
```

### 5. Add files to staging
```bash
git add BinhBenTran_CV_Radar_Satellite.html
git add README.md
git add index.html
git add publish_to_github.md
```

Or add all files:
```bash
git add .
```

### 6. Commit the changes
```bash
git commit -m "Add interactive RF & Microwave Engineer CV with radar and satellite themes"
```

### 7. Push to GitHub
```bash
git branch -M main
git push -u origin main
```

## GitHub Pages Setup

**For `username.github.io` repositories:**
- GitHub Pages is **automatically enabled**!
- Your site will be live at: `https://BinhBenTran.github.io`
- It may take a few minutes to become available after pushing
- The `index.html` file will be served as the homepage
- **No manual setup needed** - just push to the `main` branch!

**For other repositories:**
1. Go to your repository on GitHub
2. Click on **Settings**
3. Scroll down to **Pages** section
4. Under **Source**, select **Deploy from a branch**
5. Select **main** branch and **/ (root)** folder
6. Click **Save**
7. Your CV will be available at: `https://username.github.io/repository-name/`

## Quick Setup for BinhBenTran.github.io

**After creating the repository on GitHub, run these commands:**

```powershell
cd D:\CV\BinhBenTran_CV
git remote set-url origin https://github.com/BinhBenTran/BinhBenTran.github.io.git
git branch -M main
git push -u origin main
```

**Your site will be live at:** `https://BinhBenTran.github.io`

## Alternative: Use a Different Repository Name

If you want to keep your existing repository structure, you can:

1. **Create a regular repository** (e.g., `BinhBenTran_RF_CV`)
2. **Make it Public**
3. **Enable GitHub Pages manually** in Settings → Pages
4. **Your site will be at:** `https://BinhBenTran.github.io/BinhBenTran_RF_CV/`

But for a cleaner URL (`BinhBenTran.github.io`), use the `BinhBenTran.github.io` repository name.

## Important Notes

- The repository name **must match** your GitHub username exactly: `username.github.io`
- The repository **must be public** (free accounts can't use private repos for GitHub Pages)
- GitHub Pages is **automatically enabled** for `username.github.io` repositories
- Your `index.html` will be the homepage
- Changes may take 1-10 minutes to appear after pushing

//FIXME
Create the repository
Go to https://github.com/new
Repository name: BinhBenTran.github.io (exact name)
Make it Public
Do not initialize with README, .gitignore, or license
Click "Create repository"
After you create it, I'll push your files.
Alternatively, if you want to use the existing BinhBenTran repository, I can update the remote to point there. The URL will be BinhBenTran.github.io/BinhBenTran/ instead of BinhBenTran.github.io.
Which do you prefer?
Create BinhBenTran.github.io (clean URL)
Use the existing BinhBenTran repository (longer URL)