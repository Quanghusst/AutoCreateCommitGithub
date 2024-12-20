@echo off
:: Lấy tên người dùng (chủ sở hữu) repository bằng gh
for /f "delims=" %%u in ('gh repo view --json owner --jq ".owner.login"') do set ownerName=%%u
echo Repository Owner: %ownerName%

for /f "delims=" %%u in ('gh api user --jq ".login"') do set username=%%u
echo GitHub Username: %username%
for %%F in (%cd%) do set folderName=%%~nxF
echo %folderName%


SET /P branchString=Please enter a branch: 
SET /P messageString=Please enter a message: 
echo ========================== CREATE REPO ======================================
echo.   
gh repo create %folderName% --public --confirm
pause
echo.   
echo ========================== CREATE FILE: .gitignore ==========================
echo.   
findstr runGit.bat .gitignore || echo runGit.bat >> .gitignore
echo.   
echo ========================== PULL and PUSH ====================================
echo.
git init
git pull origin main
git add .
git commit -m "Commit at %hh%:%mm% %ap% %dd%/%mm%/%yyyy%"
git branch -M main
git remote add origin https://github.com/%username%/%folderName%.git
git push -u origin main
echo.
echo ================================ END ========================================
pause
