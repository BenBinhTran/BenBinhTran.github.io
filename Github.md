# GitHub Publishing Scripts

Here are scripts you can copy and paste into a bash terminal (like Git Bash on Windows or any terminal on macOS/Linux) to publish your code to GitHub.

---

## Scenario 1: Pushing Updates to an Existing Repository

Use this script when you have already published your repository and just want to upload new changes. This is the most common scenario for your `BenTran_CV` project.

```bash
# 1. Navigate to your project directory in the terminal
cd "d:\My Documents\BenTran_CV\BenTran_CV"

# 2. Check the status of your files to see what has changed
git status

# 3. Add all new and modified files to be committed
git add .

# 4. Commit your changes with a descriptive message
#    (You can change the message inside the quotes)
git commit -m "🏆 BenBinhTran CV IO: 11072026"

# 5. Push your committed changes to GitHub
git push
```

---

## Scenario 2: Publishing a New Project for the First Time

Use this script only when you are uploading a brand new project to GitHub that doesn't exist online yet.

```bash
# 1. Navigate to your new project's folder
# cd /path/to/your/new-project

# 2. Initialize a new Git repository
git init

# 3. Add all files to be committed
git add .

# 4. Create the first commit
git commit -m "🏆 BenBinhTran IO -170726"

# 5. Link it to the new repository you created on GitHub.com
#    (Replace the URL with your new repository's URL)
git remote add origin https://github.com/BenBinhTran/BenBinhTran.github.io

# 6. Push your project to GitHub
git push -u origin main
```