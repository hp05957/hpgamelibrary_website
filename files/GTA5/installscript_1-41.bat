@echo off
taskkill /F /IM mshta.exe
set /p directory=<"dir.txt"
update-1-41.exe /SILENT /SUPPRESSMSGBOXES /DIR=%directory%
update-1-50.exe /SILENT /SUPPRESSMSGBOXES /DIR=%directory%
start completion.exe
