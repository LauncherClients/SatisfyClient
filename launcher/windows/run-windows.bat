@echo off
cd /d "%~dp0"
if exist "SatisfyLauncher.exe" (
  start "" "SatisfyLauncher.exe" %*
  exit /b 0
)
if exist "ClientPatcher.exe" (
  start "" "ClientPatcher.exe" %*
  exit /b 0
)
echo SatisfyLauncher.exe was not found next to this script.
exit /b 1
