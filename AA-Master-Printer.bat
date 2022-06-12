@echo off
setlocal enabledelayedexpansion
TITLE V 1.0.333.4   A-Master-Printer

:: 0 = Black       8 = Gray
:: 1 = Blue        9 = Light Blue
:: 2 = Green       A = Light Green
:: 3 = Aqua        B = Light Aqua
:: 4 = Red         C = Light Red
:: 5 = Purple      D = Light Purple
:: 6 = Yellow      E = Light Yellow
:: 7 = White       F = Bright White
:: First is background color, Second is text color as in HEX
color 0A
set address=F:\SteamLibrary\steamapps\common\EARTH DEFENSE FORCE 5\Mods\TOOLS
:: Set your path to the EDF 5 or 4.1 game file location NOTE SGOTT WILL NOT WORK with 4.1's file location
:: REMOVE the . IN THE FILE PATH OR CHANGE IT

:list
echo -1. Exit Program                               - Leave
echo 0. Search for gun name in (json)               - Find that gun
echo.                                               
echo 1. (SGO) to (JSON)                             - Object Behavor Files
echo 2. (JSON) to (SGO)                             - Object Behavor Files
echo 3. Edit (SGO) Opens file explorer              - Object Behavor Files
echo.                                               
echo 4. M(RAB) Open Single Folder                   - Model and Textures
echo 5. M(RAB) Press-An-Hold Any key if used        - Model and Textures
echo 6. M(RAB) Stitch Single Folder                 - Model and Textures
echo.                                               
echo 7. (RMPA) and (BVM) Single file                - Missions files 
echo.                                               
echo 8. (AWB) and (AWE) Uses awe_parser             - Audio
echo 9. (ACB) Uses E.A.T.                           - Audio
echo.                                                                                             
echo 10. (MAC)                                      - Map Layout Editor
echo.                                               
echo 20. UE AES Keys                                - Keys to get in UE based games
echo.
set x=69420
set /p x=Enter a number to mess with that file type: 
echo.

if %x% == -1 goto exit
if %x% == 0 goto search
if %x% == 1 goto sgo-printer
if %x% == 2 goto sgo-stitcher
if %x% == 3 goto sgo-editor
if %x% == 4 goto m-rab-printerS
if %x% == 5 goto m-rab-printer
if %x% == 6 goto m-rab-stitcher
if %x% == 7 goto RMPABVM
::~ ^^^^^^
if %x% == 8 goto AW
::~ ^^^^^^
if %x% == 9 goto ACB
if %x% == 10 goto MAC
if %x% == 20 goto UE-keys
if %x% == 69420 goto invalid

:invalid
echo.
echo Needs To Be An Actual Input                                                                  -STOP
goto loop

:: Loops with spaces
:loop
echo.
set /a loop=%loop%+1 
if "%loop%"=="5" goto ANKELSNAPPER
goto loop
:ANKELSNAPPER
set loop=0
goto list

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
for /r "%CD%" %%a in (*.json) do "%address%\sgott.exe" "%%~dpnxa"
echo Encrypting done . . . at: & time /t
goto loop

:sgo-editor
echo Opening file explorer : Dont forget to clear temp folder once done
%SystemRoot%\explorer.exe "%address%\Aelbannans Direct SGO Editor\"
goto loop

::=================================================================

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
set /p cf=Enter folder name: 
"%address%\Unnamed EDF Tool\Release\EDF Tools.exe" /ARCHIVE %cf% "%%~dpnxa"
echo Encrypting done . . . at: & time /t
echo.
set /p c=Do you have another file to be Archived (Y/N)?: 
IF /I "%c%" NEQ "Y" GOTO loop
goto m-rab-stitcher

::=================================================================

:RMPABVM~
"%address%\mission_tools_1.62.exe" "%%~dpnxa"
goto loop

:AW~
echo Opening mission_tools.exe : 
"%address%\mission_tools_1.62.exe" "%%~dpnxa"
goto loop



:RMPABVM
python "%address%\Another EDF Tools\mission_tools.py" "%%~dpnxa"
goto loop

:AW
echo Opening Python Script : To go back, press enter 3 times
python "%address%\Another EDF Tools\awe_parser.py" "%%~dpnxa"
goto loop

::=================================================================

:ACB
set /p cf=Enter file name: 
echo Opening EAT : To go back, Close and reopen this file
"%address%\EAT\eternity_audio_tool.exe" %cf% "%%~dpnxa" goto loop

::=================================================================

:MAC
echo Opening Map editor : To go back, Close and reopen this file
"%address%\MACfileTool_v1.0.0.exe" "%%~dpnxa"
goto loop

::=================================================================

:UE-keys
echo This is for Unreal based games
echo Pull EVERYTHING from the game {http://aluigi.altervista.org/quickbms.htm}
echo It needs there own BMS script for both games. 
echo.
echo Pull Model Assets {https://www.gildor.org/en/projects/umodel}, right-click "All packages" then export
echo Folder contents as Mesh type glTF 2.0 and TGA textures with blender usage in mind.
echo.
echo EDF IR : UE_Version_{4.19} 0xCF812E306958EF92C90EA4F251994FE747306B7B666940FBE2ED711139EDB65E
echo EDF WB : UE_Version_{4.24} 0x4055102382008C1D820548683D055CC84B03164B43EDF64A80629B384A4D8DA4 
goto loop

::=================================================================

:exit
exit
:y
cls
