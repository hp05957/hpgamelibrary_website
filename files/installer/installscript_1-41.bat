@echo off
taskkill /F /IM mshta.exe
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://hpgamelibrary.github.io/files/GTA5/1-41_NotFound.vbs', '1-41_NotFound.vbs')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://hpgamelibrary.github.io/files/GTA5/update-1-41.exe', 'update-1-41.exe')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://hpgamelibrary.github.io/files/GTA5/update-1-50.exe', 'update-1-50.exe')"
IF NOT EXIST "update-1-41-1.bin" goto NO-1-41
IF NOT EXIST "update-1-41-2.bin" goto NO-1-41
set /p directory=<"dir.txt"
update-1-41.exe /SILENT /SUPPRESSMSGBOXES /DIR=%directory%
update-1-50.exe /SILENT /SUPPRESSMSGBOXES /DIR=%directory%
start completion.exe
del update-1-41.exe
del update-1-50.exe
exit

:NO-1-41
1-41_NotFound.vbs
exit
