@echo off
set count=770
setlocal EnableDelayedExpansion

for /L %%i in (1, 1, %count%) do (
     set "formattedValue=000000%%i"
     echo sgott.exe WEAPON!formattedValue:~-3!.SGO WEAPON!formattedValue:~-3!.json >> OUTPUT.txt
)
pause
