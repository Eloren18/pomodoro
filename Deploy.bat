@echo off
cd /d "%~dp0"
echo ==================================================
echo    Publishing your Pomodoro app...
echo ==================================================
echo.
git add -A
git commit -m "Update %DATE% %TIME%"
echo.
echo Syncing with GitHub...
git pull --rebase origin main
git push -u origin main
echo.
echo --------------------------------------------------
echo  Done. Your live site refreshes in about a minute:
echo  https://eloren18.github.io/pomodoro/
echo  (If it says "Everything up-to-date", you're already live.)
echo --------------------------------------------------
echo.
echo You can close this window.
pause
