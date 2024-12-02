@echo off
for %%F in (%cd%) do set folderName=%%~nxF
echo %folderName%
:: Lấy giờ và phút từ %time%
for /f "tokens=1-4 delims=:. " %%a in ("%time%") do (
    set hh=%%a
    set mm=%%b
)

:: Xử lý định dạng 12 giờ và AM/PM
set ap=AM
if %hh% geq 12 (
    set ap=PM
    if %hh% gtr 12 set /a hh=hh-12
)
if %hh%==0 set hh=12

:: Lấy ngày từ %date% và loại bỏ ngày trong tuần nếu có
for /f "tokens=2-4 delims=, " %%d in ('echo %date%') do (
    for /f "tokens=1-3 delims=/-. " %%x in ("%%d") do (
        set mm=%%x
        set dd=%%y
        set yyyy=%%z
    )
)

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
git remote add origin https://github.com/Quanghusst/%folderName%.git
git push -u origin main
echo.
echo ================================ END ========================================
pause
