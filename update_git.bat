@echo off
title Git Auto Update Tool
echo ========================================================
echo                 SW AFTER SUNSET - GIT UPDATE
echo ========================================================
echo.

echo [1/3] Adding all updated and new files to Git...
git add .

echo.
set /p msg="Enter commit message (Press Enter for 'Website update'): "
if "%msg%"=="" set msg=Website update

echo.
echo [2/3] Creating commit: "%msg%"...
git commit -m "%msg%"

echo.
echo [3/3] Pushing changes to GitHub repository...
git push origin main

echo.
echo ========================================================
echo                 Git Update Finished!
echo ========================================================
echo.
pause
