@echo off
cls
cd /d "%~dp0"

:: combine all arguments into one message
set "msg=%*"

:: default message if empty
if "%msg%"=="" set "msg=Commit"

git add .
git commit -m "%msg%"
git push origin main