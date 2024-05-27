@echo off
setlocal

REM find directory
for /f "tokens=*" %%i in ('where /r "%cd%" index.html') do set "htmlpath=%%i"
for /f "tokens=*" %%i in ('where /r "%cd%" script.js') do set "scriptpath=%%i"

REM Extract directory from full path
for %%i in ("%htmlpath%") do set "htmldir=%%~dpi"
for %%i in ("%scriptpath%") do set "scriptdir=%%~dpi"

REM find script.js directory
cd /d "%scriptdir%"

REM start index.html
start "" "%htmlpath%"

REM run node script.js
node "%scriptpath%"

endlocal
