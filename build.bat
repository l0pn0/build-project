@echo off
cd /d "%~dp0"

echo ============================
echo START 1C BUILD
echo ============================

echo.
echo 1. Updating submodules...
git submodule update --init --recursive

echo.
echo 2. Checking required 1C files...

if not exist main-config\main.cf (
    echo ERROR: main-config\main.cf not found
    pause
    exit /b 1
)

if not exist extensions\ext-a\ext-a.cfe (
    echo ERROR: extensions\ext-a\ext-a.cfe not found
    pause
    exit /b 1
)

if not exist extensions\ext-b\ext-b.cfe (
    echo ERROR: extensions\ext-b\ext-b.cfe not found
    pause
    exit /b 1
)

echo.
echo 3. Creating build folder...
if not exist build mkdir build

echo Main configuration file found > build\result.txt
echo Extension A file found >> build\result.txt
echo Extension B file found >> build\result.txt
echo Demo 1C build structure is ready >> build\result.txt

echo.
echo BUILD SUCCESS
pause