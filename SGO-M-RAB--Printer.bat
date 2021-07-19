@echo off
setlocal
set address=":\SteamLibrary\steamapps\common\EARTH DEFENSE FORCE 5\Mods\TOOLS"
/ Set your path to the EDF 5 game file location
:list
echo 1. SGO
echo 2. Stich SGO
echo 3. M(RAB)
echo 4. Exit Program 
set /p x=Enter Unpacker file type 

if %x% == 1 goto sgo-printer
if %x% == 2 goto sgo-sticher
if %x% == 3 goto m-rab-printer
if %x% == 4 goto exit

:sgo-printer
for /r "%CD%" %%a in (*.sgo) do start /d %address% sgott.exe "%%~dpnxa"
pause
goto list
:sgo-sticher
for /r "%CD%" %%a in (*.json) do start /d %address% sgott.exe "%%~dpnxa"
pause
goto list
:m-rab-printer
| for /r "%CD%" %%a in (*.rab) do start /d %address% (link this to a shortcut to EDF Tools.exe).lnk "%%~dpnxa"
for /r "%CD%" %%a in (*.rab) do start /d %address% "EDF Tools.exe" "%%~dpnxa"
pause
goto exit

pause
goto list
:exit
exit
:y
cls
