@echo off
setup2.hta
goto setupRUNNING

:setupCLEANUP
:: Check if the process is running. Redirect output to hide text.
tasklist /fi "imagename eq completion.exe" 2>NUL | find /i "completion.exe" >NUL
if %ERRORLEVEL%==0 (
    goto CLEANUP
)
taskkill /F /IM wscript.exe
exit

:setupRUNNING
:: Check if the process is running. Redirect output to hide text.
tasklist /fi "imagename eq completion.exe" 2>NUL | find /i "completion.exe" >NUL
if %ERRORLEVEL%==1 (
    :: Wait 3 seconds before checking again
    timeout /t 2 /nobreak >nul
    goto setupRUNNING
)
goto setupCLEANUP