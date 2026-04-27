@echo off
echo ============================
echo START BUILD
echo ============================

echo.
echo 1. Updating submodules...
git submodule update --init --recursive

echo.
echo 2. Checking folders...

if not exist main-config (
    echo ERROR: main-config not found
    pause
    exit /b 1
)

if not exist extensions\ext-a (
    echo ERROR: ext-a not found
    pause
    exit /b 1
)

if not exist extensions\ext-b (
    echo ERROR: ext-b not found
    pause
    exit /b 1
)

echo.
echo 3. Creating build folder...
if not exist build mkdir build

echo Main config loaded > build\result.txt
echo Extension A loaded >> build\result.txt
echo Extension B loaded >> build\result.txt

echo.
echo BUILD SUCCESS
pause