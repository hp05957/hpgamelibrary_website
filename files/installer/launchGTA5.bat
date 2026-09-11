@echo off
taskkill /F /IM mshta.exe
set /p directory=<"dir.txt"
cd %directory%
start PlayGTAV.exe
exit