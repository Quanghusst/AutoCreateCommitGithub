@echo off
for %%F in (%cd%) do set folderName=%%~nxF
echo %folderName%
gh repo create %folderName% --public --confirm
pause
findstr runGit.bat .gitignore || echo runGit.bat >> .gitignore
git init
git pull origin main
git add .
git commit -m "Commit at %date%"
git branch -M main
git remote add origin https://github.com/Quanghusst/%folderName%.git
git push -u origin main
pause
