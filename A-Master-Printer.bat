@echo off
setlocal enabledelayedexpansion
set address=F:\SteamLibrary\steamapps\common\EARTH DEFENSE FORCE 5\Mods\TOOLS
:: Set your path to the EDF 5 game file location
echo V .320 A-Master-Printer

:list
echo 0. Search for gun name in json
echo 1. SGO
echo 2. Stitch SGO
echo 3. Edit SGO
echo 4. M(RAB) (sf)
echo 5. M(RAB) Press-An-Hold any key if used
echo 6. M(RAB) Stitch (sf)
echo 7. AWB and AWE
echo 8. ACB
echo 9. RMPA and BVM (sf)
echo 10. MAC
echo 11. Exit Program 
set /p x=Enter Unpacker file type as a number 

if %x% == 0 goto search
if %x% == 1 goto sgo-printer
if %x% == 2 goto sgo-stitcher
if %x% == 3 goto sgo-editor
if %x% == 4 goto m-rab-printerS
if %x% == 5 goto m-rab-printer
if %x% == 6 goto m-rab-stitcher
if %x% == 7 goto AW~
if %x% == 8 goto ACB
if %x% == 9 goto RMPABVM
if %x% == 10 goto MAC
if %x% == 11 goto exit

:loop
echo.
set /a loop=%loop%+1 
if "%loop%"=="5" goto ANKELSNAPPER
goto loop
:ANKELSNAPPER
set loop=0
goto list
:: Needs to be here or WE GOT A RUNNER

:search
set /p SEARCH=Name to the gun or equipment: 
echo.
echo File's that may have this: 
FINDSTR /I /M %SEARCH% *.json
goto loop

:sgo-printer
for /r "%CD%" %%a in (*.sgo) do "%address%\sgott.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:sgo-stitcher
java for /r "%CD%" %%a in (*.json) do "%address%\sgott.exe" "%%~dpnxa"
echo Encrypting done . . . at: & time /t
goto loop

:sgo-editor
echo Opening SGO editor
"%address%\Aelbannan's Direct SGO Editor\edf-mod-tool.exe" "%%~dpnxa"
goto loop

:m-rab-printerS
set /p cf=Enter file name: 
"%address%\Unnamed EDF Tool\Release\EDF Tools.exe" %cf% "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:m-rab-printer
for /r "%CD%" %%a in (*.rab, *.mrab) do "%address%\Unnamed EDF Tool\Release\EDF Tools.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:m-rab-stitcher
set /p cf=Enter file name: 
"%address%\Unnamed EDF Tool\Release\EDF Tools.exe" /ARCHIVE %cf% "%%~dpnxa"
echo Encrypting done . . . at: & time /t
echo.
set /p c=Do you have another file to be Archived (Y/N)?: 
IF /I "%c%" NEQ "Y" GOTO loop
goto m-rab-stitcher

:AW~
echo Opening Python Script : To go back, press enter 3 times
python "%address%\Another EDF Tools\awe_parser.py" "%%~dpnxa"
goto loop

:RMPABVM
python "%address%\Another EDF Tools\mission_tools.py"
goto loop

:ACB
set /p cf=Enter file name: 
echo Opening EAT : To go back, Close and reopen this file
"%address%\EAT\eternity_audio_tool.exe" %cf% "%%~dpnxa" goto loop

:MAC
echo Opening Map editor : To go back, Close and reopen this file
"%address%\MACfileTool_v1.0.0.exe" "%%~dpnxa"
goto loop

:exit
exit
:y
cls