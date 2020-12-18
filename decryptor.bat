@echo off
TITLE Decryptor
setlocal enableDelayedExpansion
cls


:G
cls
color a
set /p code=Text:
set chars=0123456789abcdefghijklmnopqrstuvwxyz

for /L %%N in (10 1 36) do (

for /F %%C in ("!chars:~%%N,1!") do (

set "code=!code:%%N=%%C!"

)

)

echo !code!
pause
goto G