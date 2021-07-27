@echo off
setlocal
set address=F:\SteamLibrary\steamapps\common\EARTH DEFENSE FORCE 5\Mods\TOOLS
:: Set your path to the EDF 5 game file location
:list
echo 1. SGO
echo 2. Stich SGO
echo 3. M(RAB)
echo 4. M(RAB) Sticher
echo 5. Exit Program 
set /p x=Enter Unpacker file type 

if %x% == 1 goto sgo-printer
if %x% == 2 goto sgo-sticher
if %x% == 3 goto m-rab-printer
if %x% == 4 goto m-rab-sticher

:loop
echo.
set /a loop=%loop%+1 
if "%loop%"=="5" goto ANKELSNAPPER
goto loop
:ANKELSNAPPER
set loop=0
goto list
:: Needs to be here or WE GOT A RUNNER

:sgo-printer
for /r "%CD%" %%a in (*.sgo) do "%address%\sgott.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:sgo-sticher
for /r "%CD%" %%a in (*.json) do "%address%\sgott.exe" "%%~dpnxa"
echo Encrypting done . . . at: & time /t
goto loop

:m-rab-printer
for /r "%CD%" %%a in (*.rab) do "%address%\EDF Tools.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:m-rab-sticher
set /p cf=Enter file name: 
"%address%\EDF Tools.exe" /ARCHIVE %cf% "%%~dpnxa"
echo Encrypting done . . . at: & time /t
echo.
set /p c=Do you have another file to be Archived (Y/N)?: 
IF /I "%c%" NEQ "Y" GOTO exit
goto m-rab-sticher

:exit
exit
:y
cls
