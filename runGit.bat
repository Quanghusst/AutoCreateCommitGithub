@echo off
:: Lấy tên người dùng (chủ sở hữu) repository bằng gh
for /f "delims=" %%u in ('gh repo view --json owner --jq ".owner.login"') do set ownerName=%%u
echo Repository Owner: %ownerName%

for /f "delims=" %%u in ('gh api user --jq ".login"') do set username=%%u
echo GitHub Username: %username%
for %%F in (%cd%) do set folderName=%%~nxF
echo %folderName%

echo.
echo  _          _                                                     _                                                 
echo ^| ^| ___  __^| ^| __ _ _ __   __ _  __ _ _   _  __ _ _ __   __ _  __^| ^| __ _ _ __   __ _  __ _ _   _  __ _ _ __   __ _ 
echo ^| ^|/ _ \/ _` ^|/ _` ^| '_ \ / _` ^|/ _` ^| ^| ^| ^|/ _` ^| '_ \ / _` ^|/ _` ^|/ _` ^| '_ \ / _` ^|/ _` ^| ^| ^| ^|/ _` ^| '_ \ / _` ^|
echo ^| ^|  __/ (_^| ^| (_^| ^| ^| ^| ^| (_^| ^| (_^| ^| ^|_^| ^| (_^| ^| ^| ^| ^| (_^| ^| (_^| ^| (_^| ^| ^| ^| ^| (_^| ^| (_^| ^| ^|_^| ^| (_^| ^| ^| ^| ^| (_^| ^|
echo ^|_^|\___^|\__,_^|\__,_^|_^| ^|_^|\__, ^|\__, ^|\__,_^|\__,_^|_^| ^|_^|\__, ^|\__,_^|\__,_^|_^| ^|_^|\__, ^|\__, ^|\__,_^|\__,_^|_^| ^|_^|\__, ^|
echo                           ^|___/    ^|_^|                  ^|___/                   ^|___/    ^|_^|                  ^|___/ 

SET /P messageString=Please enter a message: 
echo ========================== CREATE REPO ======================================
echo.   
gh repo create %folderName% --public --confirm
pause
echo.   
echo ========================== PULL and PUSH ====================================
echo.
git init
git pull origin main
git add .
git commit -m "%messageString%"
git branch -M main
git remote add origin https://github.com/%username%/%folderName%.git
git push -u origin main
echo.
echo ================================ END ========================================
pause
