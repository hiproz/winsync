schtasks.exe /create /tn "diskbackpu" /ru SYSTEM /sc ONSTART /tr %~dp0\backup.bat
pause