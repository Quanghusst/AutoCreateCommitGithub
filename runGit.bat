@echo off
for %%F in (%cd%) do set folderName=%%~nxF
echo %folderName%
gh repo create %folderName% --public --confirm
pause
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Quanghusst/%folderName%.git
git push -u origin main
pause