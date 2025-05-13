@echo off
set current_dir=%~dp0
set current_dir=%current_dir:~0,-1%
setx PATH "%current_dir%;%PATH%"
echo set %current_dir% as PATH.
echo Success!!!
pause
