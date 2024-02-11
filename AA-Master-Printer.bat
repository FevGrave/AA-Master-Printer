@echo off
setlocal enabledelayedexpansion
TITLE V 1.0.343.22-0029 --- AA-Master-Printer --- by FevGrave --- %time% --- %cd%
::=================================================================
color 0A
set address=F:\SteamLibrary\steamapps\common\EARTH DEFENSE FORCE 5\Mods\TOOLS
MODE 150,60
@for /f %%a in ('echo prompt $E^| cmd') do set "esc=%%a" REM For VT100 escape codes for batch color
set "Reset=%esc%[92m"
set "SUB=%esc%[91m"
set xInputR=69420
::=================================================================
REM -1
:list
type "%address%\Batch Extras\Menu\MainMenu.txt"
set a=0
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.
if %x% == -1 goto exit
if %x% == 0 goto listSGO REM 0
if %x% == 1 goto listm-rab REM 1
if %x% == 2 goto listRMPABVMMAC REM 2
if %x% == 3 goto listCAS REM 3
if %x% == 4 goto listAudio REM 4
if %x% == 5 goto listHavok REM 5
if %x% == 6 goto listALLinONE REM 6
if %x% == 7 goto listUE-keys REM 7
if %x% == 8 goto listBatchCmdHelper REM 8
if %x% == 9 goto listEDF2017 REM 9
if %x% == 10 goto listNPC REM 10
if %x% == 69 goto DebugCMD REM Test CMD debug input
if %x% == 88 goto UpdateTool REM Update shortcut
if %x% == EGG goto EGG
if %x% == help goto showDATaddress
if %x% GEQ 11 goto invalid
::=================================================================
REM 0
:listSGO
type "%address%\Batch Extras\Menu\SGOMenu.txt"
set a=1
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.
if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto search
if %x% == 2 goto sgo-printer
if %x% == 3 goto sgo-stitcher
if %x% == 4 goto sgoMABxml
if %x% == 5 goto xmlMABsgo
if %x% == 6 goto sgo-editor
if %x% == 7 goto buildAgun
if %x% == 8 goto sgodoc
if %x% == 9 goto 4-1gunpage
if %x% == 10 goto 5gunpage
if %x% GEQ 11 goto invalid
::=================================================================
REM 1
:listm-rab
type "%address%\Batch Extras\Menu\MRABMenu.txt"
echo %SUB%666.%Reset% M(RAB) %SUB%RIP AND TEAR%Reset%                               - Model ^& Textures (Multistaged uppacking %SUB%HELL%Reset% used for maps)
echo.
set a=2
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.
if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto m-rab-printerSf
if %x% == 2 goto m-rab-printer
if %x% == 3 goto m-rab-stitcher
if %x% == 4 goto mdb-xml
if %x% == 5 goto xml-mdb
if %x% == 6 goto ScaleT
if %x% == 7 goto dds-printer
if %x% == 8 goto image-printer
if %x% == 9 goto m-notes
if %x% == 10 goto MDBp
if %x% == 666 goto m-rab-printer-R&T
if %x% GEQ 11 goto invalid
::=================================================================
REM 2
:listRMPABVMMAC
type "%address%\Batch Extras\Menu\RMPAMenu.txt"
set a=3
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.
if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto RMPABVM
if %x% == 2 goto JsonAsm
if %x% == 3 goto bvmtxt
if %x% == 4 goto txtbvm
if %x% == 5 goto MAC
if %x% == 6 goto MACVIEW
if %x% == 7 goto MissionEditor
if %x% == 8 goto BVMdoc
if %x% == 9 goto RMPAdoc
if %x% GEQ 10 goto invalid
::=================================================================
REM 3
:listCAS
type "%address%\Batch Extras\Menu\CASMenu.txt"
set a=4
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.
if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto CASXML
if %x% == 2 goto XMLCAS
if %x% == 3 goto ScaleT
if %x% GEQ 4 goto invalid
::=================================================================
REM 4
:listAudio
type "%address%\Batch Extras\Menu\AudioMenu.txt"
set a=5
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.

if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto AW~
if %x% == 2 goto ACB
if %x% == 3 goto HCAtWAV
if %x% == 4 goto WAVtHCA
if %x% GEQ 5 goto invalid
::=================================================================
REM 5
:listHavok
type "%address%\Batch Extras\Menu\HavokMenu.txt"
set a=6
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.
if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto SHKTtHKX
if %x% == 2 goto HKXtSHKT
if %x% == 3 goto HavokApp
if %x% == 4 goto ExportSite
if %x% == 5 goto ScaleT
if %x% GEQ 6 goto invalid
::=================================================================
REM 6
:listALLinONE
type "%address%\Batch Extras\Menu\WindowedToolsMenu.txt"
set a=7
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.
if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto sgo-editor
if %x% == 2 goto buildAgun
if %x% == 3 goto ACB
if %x% == 4 goto ScaleT
if %x% GEQ 5 goto invalid
::=================================================================
REM 8
:ListBatchCmdHelper
type "%address%\Batch Extras\Menu\BatchExtraMenu.txt"
set a=8
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.
if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto FileKiller
if %x% == 2 goto FileMover
if %x% == 3 goto XGSFinder
if %x% == 4 goto MLMaker
if %x% == 5 goto CFGMaker
if %x% == 6 goto GNLMaker
if %x% == 7 goto GNLMaker41
if %x% == 8 goto UpdateTool
if %x% == 9 goto B64BIN
if %x% == 10 goto BINB64
if %x% == 11 goto JSONBIN
if %x% == 12 goto Model_Namer
if %x% == 13 goto listNPC
if %x% GEQ 14 goto invalid
::=================================================================
REM 9
:listEDF2017
type "%address%\Batch Extras\Menu\2017ToolsMenu.txt"
set a=9
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.
if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto 2017Files
if %x% GEQ 2 goto invalid
::=================================================================
REM 10
:listNPC
type "%address%\Batch Extras\Menu\NPCGenTools5.txt"
set a=10
set g=25
set /a upperLimit=%g%+1
set x=%xInputR%
set /p x=Enter A Number To %SUB%Mess %Reset%With That File Type: 
for /L %%i in (1,1,5) do echo.
if %x% == -1 goto exit
if %x% == 0 goto list
if %x% GEQ 1 if %x% LEQ %g% CALL "%address%\Batch Extras\NPCBuilder\NPCGeneratorMenu.bat" %x%
if %x% GEQ %upperLimit% goto invalid2
::=================================================================
:invalid REM Error blip
echo.
echo Needs To Be An Actual Input                                                  %SUB%-STOP %Reset%
for /L %%i in (1,1,3) do echo.
if %a% == 0 goto list
if %a% == 1 goto listSGO
if %a% == 2 goto listm-rab
if %a% == 3 goto listRMAPBVMMAC
if %a% == 4 goto listCAS
if %a% == 5 goto listAudio
if %a% == 6 goto listHavok
if %a% == 7 goto listALLinONE
if %a% == 8 goto listBatchCmdHelper
if %a% == 9 goto listEDF2017
if %a% == 10 goto listNPC
:invalid2 REM Error unavailable tool
echo.
echo Unavailable Tool (Building Noises)
for /L %%i in (1,1,3) do echo.
if %a% == 0 goto list
if %a% == 1 goto listSGO
if %a% == 2 goto listm-rab
if %a% == 3 goto listRMAPBVMMAC
if %a% == 4 goto listCAS
if %a% == 5 goto listAudio
if %a% == 6 goto listHavok
if %a% == 7 goto listALLinONE
if %a% == 8 goto listBatchCmdHelper
if %a% == 9 goto listEDF2017
if %a% == 10 goto listNPC
:loop REM Loops with spaces
for /L %%i in (1,1,5) do echo.
if %a% == 0 goto list
if %a% == 1 goto listSGO
if %a% == 2 goto listm-rab
if %a% == 3 goto listRMAPBVMMAC
if %a% == 4 goto listCAS
if %a% == 5 goto listAudio
if %a% == 6 goto listHavok
if %a% == 7 goto listALLinONE
if %a% == 8 goto listBatchCmdHelper
if %a% == 9 goto listEDF2017
if %a% == 10 goto listNPC
::=================================================================
:UpdateTool REM Get the current working directory
set currentDir=%cd%
REM Compare the addresses
if "%currentDir%" neq "%address%" (
    REM Copy AA-Master-Printer.bat to the current working directory
    copy "%address%\AA-Master-Printer.bat" "%currentDir%"
)
CALL AB-Python-Script-Runner.bat
START "New Window" CMD /C CALL "%~dp0AA-Master-Printer.bat"
goto exit
::=================================================================
REM 0
:search
set /p SEARCH=Name to the gun or equipment: 
echo.
echo File's that may have this: 
FINDSTR /S /I /M /C %SEARCH% *.json
goto loop

:sgo-printer
for /r "%CD%" %%a in (*.SGO) do "%address%\sgott.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:sgo-stitcher
for /r "%CD%" %%a in (*.JSON) do "%address%\sgott.exe" "%%~dpnxa"
echo Encrypting done . . . at: & time /t
goto loop

:sgoMABxml
for /r "%CD%" %%a in (*.SGO) do ("%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa" < "nul")
echo Decrypting done . . . at: & time /t
goto loop

:xmlMABsgo
for /r "%CD%" %%a in (*.XML) do ("%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa" < "nul")
echo Ecrypting done . . . at: & time /t
goto loop

:sgo-editor
echo Opening SGO Editor (This will clear temp folder once you close the newly opened window)
"%address%\Aelbannans Direct SGO Editor\edf-mod-tool.exe"
Echo Clearing Temp Folder
DEL /Q "%address%\Aelbannans Direct SGO Editor\temp"
timeout /t 5 /nobreak > NUL
echo Temp folder cleared
goto loop

:buildAgun
echo Close application to go back to this printer's menu.
python "%address%\Big Racer's Weapon Builder\project\main.py"
goto loop

:sgodoc
echo Opening default browser to webpage
start "" https://github.com/KCreator/Earth-Defence-Force-Documentation/wiki/SGO-Node-Documentation
goto loop 

:4-1gunpage
echo Opening default browser to a webpage
start "" https://github.com/KCreator/Earth-Defence-Force-Documentation/wiki/4.1-Weapons-List
goto loop 

:5gunpage
echo Opening default browser to a webpage
start "" https://github.com/KCreator/Earth-Defence-Force-Documentation/wiki/EDF5-Weapon-List-(ENG)
goto loop 
::=================================================================
REM 1
:m-rab-printerSf
set /p cf=Enter just the file name: 
"%address%\EDF-TOOLS\EDF Tools.exe" %cf% "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:m-rab-printer
for /r "%CD%" %%a in (*.RAB, *.MRAB) do ("%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa" < "nul")
echo Decrypting done . . . at: & time /t
goto loop

:m-rab-printer-R&T
python "%address%\Batch Extras\m-rab-printer-RIPandTEAR.py" "%address%"
goto loop

:m-rab-stitcher
set /p cf=Enter just the folder name: 
"%address%\EDF-TOOLS\EDF Tools.exe" /ARCHIVE %cf% "%%~dpnxa"
echo Encrypting done . . . at: & time /t
for /L %%i in (1,1,3) do echo.
set /p c=Do you have another file to be Archived (Y/N)?: 
IF /I "%c%" NEQ "Y" GOTO loop
goto m-rab-stitcher

:mdb-xml
for /r "%CD%" %%a in (*.MDB) do (
    echo 1 | "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
)
echo Converting done . . . at: & time /t
goto loop

:xml-mdb
for /r "%CD%" %%a in (*.XML) do (
    echo 0 | "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
)
echo Converting done . . . at: & time /t
goto loop

:dds-printer
set "magickPath="
for /D %%i in ("C:\Program Files\ImageMagick-*") do set "magickPath=%%i\magick.exe"
for /D %%i in ("C:\Program Files (x86)\ImageMagick-*") do set "magickPath=%%i\magick.exe"
if exist "%magickPath%" (
    for /r "%CD%" %%a in (*.EXR) do "%magickPath%" mogrify -format dds *.exr
    @DEL *~*
    echo Converting Image done . . . at: & time /t
    goto loop
) else (
    echo ImageMagick is not detected. Please ensure it's installed in either the Program Files or Program Files (x86) directory.
    goto loop
)

:image-printer
set "magickPath="
for /D %%i in ("C:\Program Files\ImageMagick-*") do set "magickPath=%%i\magick.exe"
for /D %%i in ("C:\Program Files (x86)\ImageMagick-*") do set "magickPath=%%i\magick.exe"
if exist "%magickPath%" (
    echo Supported Formats = http://imagemagick.sourceforge.net/http/www/formats.html
    set /p format=what file type is supplied?: 
    set /p cf=Exporting to which file type?: 
    for /r "%CD%" %%a in (*.%format%) do "%magickPath%" mogrify -format %cf% *.%format%
    echo Converting file was finished . . . at: & time /t
    @DEL *~*
    set /p c=Do you have another file to be Archived (Y/N)?: 
    IF /I "%c%" NEQ "N" goto image-printer
    goto loop) else (
    echo ImageMagick is not detected. Please ensure it's installed in either the Program Files or Program Files (x86) directory.
    goto loop)

:m-notes
start "" https://github.com/KCreator/Earth-Defence-Force-Documentation/wiki/EDF-Maps
goto loop

:MDBp
echo Opening default browser to webpage
start "" https://github.com/BlueAmulet/blender-mdb-addon
goto loop
::=================================================================
REM 2
:RMPABVM
echo mission_tools_1.62.exe is now no longer in use.(remove echo on next update)
for /r "%CD%" %%a in (*.RMPA, *.BVM) do "%address%\mission_tools_1.65.exe" "--jmp4" "%%~dpnxa"
pause
goto loop

:JsonAsm
echo mission_tools_1.62.exe is now no longer in use.(remove echo on next update)
for /r "%CD%" %%a in (*.JSON, *.ASM) do "%address%\mission_tools_1.65.exe" "--jmp4" "%%~dpnxa"
pause
goto loop

:bvmtxt
for /r "%CD%" %%a in (*.BVM) do "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
goto loop

:txtbvm
for /r "%CD%" %%a in (*.TXT) do "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
goto loop

:MAC
echo Opening Map editor : To go back, Close and reopen this file
"%address%\MACfileTool_v1.0.1.exe" "%%~dpnxa"
goto loop

:MACVIEW
"%address%\EDF_Model_Viewer\EDF_Model_Viewer.exe"
goto loop

:MissionEditor
echo Work in Progress Tool do double click this
echo "%address%\EDF5-Debug-Room-Tool-main\run.bat"
echo Don't forget to add the extra SGO's into the object folder & move the .RMPA file to your test mission
goto loop

:BVMdoc
echo Opening default browser to webpage
start "" https://github.com/KCreator/Earth-Defence-Force-Documentation/wiki/BVM-format
goto loop

:RMPAdoc
echo Opening default browser to webpage
start "" https://github.com/KCreator/Earth-Defence-Force-Documentation/wiki/RMPA-Format
goto loop
::=================================================================
REM 3
:CASXML
for /r "%CD%" %%a in (*.CAS) do (
    "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa" < "nul"
)
echo Ecrypting done . . . at: & time /t
goto loop

:XMLCAS
for /r "%CD%" %%a in (*.XML) do (
    "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa" < "nul"
)
echo Decrypting done . . . at: & time /t
goto loop
::=================================================================
REM 4
:AW~
set /p awe=Enter the (*.AWE) file: 
set /p awb=Enter the (*.AWB) file: 
python "%address%\Another EDF Tools\awe_parser.py" %awe% %awb%
goto loop

:ACB
if exist "%address%\EAT\eternity_audio_tool.exe" (
    set /p cf=Enter file name: 
    echo Opening EAT : To go back, Close and reopen this file
    "%address%\EAT\eternity_audio_tool.exe" %cf% "%%~dpnxa"
    goto loop
) else (
    echo EAT is not detected . . . You will need to choose what version of EAT you want to unpack please go to this drive address
    echo "%address%\EAT\"
    goto loop
)

:HCAtWAV
for /r "%CD%" %%a in (*.HCA) do "%address%\hca.exe" "%%~dpnxa"
echo Converting done . . . at: & time /t
goto loop

:WAVtHCA
for /r "%CD%" %%a in (*.WAV) do "%address%\hca.exe" "%%~dpnxa"
echo Converting done . . . at: & time /t
goto loop
::=================================================================
REM 5
:SHKTtHKX
set "sourceExtension=.SHKT"
set "targetExtension=.HKX"

for /r "%CD%" %%a in (*%sourceExtension%) do (
    set "sourceFile=%%~nxa"
    set "targetFile=%%~na%targetExtension%"
    echo Renaming "!sourceFile!" to "!targetFile!"
    ren "%%a" "!targetFile!"
)
echo Converting done . . . at: & time /t
goto loop

:HKXtSHKT
set "sourceExtension=.HKX"
set "targetExtension=.SHKT"

for /r "%CD%" %%a in (*%sourceExtension%) do (
    set "sourceFile=%%~nxa"
    set "targetFile=%%~na%targetExtension%"
    echo Renaming "!sourceFile!" to "!targetFile!"
    ren "%%a" "!targetFile!"
)
echo Converting done . . . at: & time /t
goto loop

:HavokApp
echo Opening HAVOK Physics editor : some files cant be opened
"%address%\HavokContentTools\hctStandAloneFilterManager.exe"
goto loop

:ExportSite
echo Opening default browser to webpage
start "" https://github.com/KCreator/Earth-Defence-Force-Documentation/wiki/Havok-Export-Format#guide
goto loop
::=================================================================
REM 6
:ScaleT
echo Scales an object to be bigger or smaller
"%address%\ScalingTool.exe"
goto loop
::=================================================================
REM 7
:listUE-keys
type "%address%\Batch Extras\Menu\UnrealEngineMenu.txt"
goto loop
::=================================================================
REM 8
:FileKiller
set /p extention=Enter the file extension (e.g., .SGO, .RAB, .MRAB): 
for /r "%CD%" %%a in (*.%extention%) do DEL *.%extention%
echo Deleted . . . at: & time /t
goto loop

:FileMover
set "Source=%CD%"
set /p Extension=Enter the file extension (e.g., .SGO, .RAB, .MRAB): 
set /p Destination=Enter the destination directory: 
if not exist "%Destination%" (
    echo Destination directory does not exist.
    goto FileMover)
for %%F in ("%Source%\*%Extension%") do (
    move /y "%%F" "%Destination%")
set /p choose=Have another file type to move? (y/n): 
if /i "%choose%" == "Y" goto FileMover
:loop

:XGSFinder
python "%address%\Batch Extras\xgsExtractor.py" "%cd%"
echo printer noises
goto loop

:MLMaker
python "%address%\Batch Extras\MissionListMaker.py"
echo printer noises
goto loop

:CFGMaker
goto invalid2
::python "%address%\Batch Extras\ConfigBuilder.py"
::echo printer noises
::goto loop

:GNLMaker
python "%address%\Batch Extras\GetWeaponName.py" "%cd%"
echo printer noises
goto loop

:GNLMaker41
set /p LANG=Languages being exported, 0 is JA, 1 is EN, 2 is CN: 
python "%address%\Batch Extras\GetWeaponName41.py" "%cd%" "%LANG%"
echo printer noises
goto loop

:B64BIN
python "%address%\Batch Extras\Base64-TO-HEX-TO-BIN.py"
echo printer noises
REM Check if the Python script was successful
if %errorlevel% neq 0 (
    echo Python script failed!)
REM Run EDF Tools with the generated file
Timeout /t 2 /nobreak >nul
for /r "%CD%" %%a in (*.MTAB) do "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
goto loop

:BINB64
REM Run EDF Tools with the generated file
for /r "%CD%" %%a in (*.XML) do "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
python "%address%\Batch Extras\Base64-TO-HEX-TO-BIN.py" Reverse "%cd%\output.mtab"
echo printer noises
REM Check if the Python script was successful
if %errorlevel% neq 0 (
    echo Python script failed!)
goto loop

:Model_Namer
python "%address%\Batch Extras\mdb_file_reader.py" "%~dp0"
echo printer noises
goto loop
::=================================================================
REM 9
:2017Files
echo Drag and drop your file into the newly opened window
for /r "%CD%" %%a in (*.xPath,*.DXM,*.DXB) do "%address%\EDF2017parser.exe" "%%~dpnxa"
goto loop
::=================================================================
:EGG
call "%address%\Batch Extras\Menu\EGG.bat"
goto loop
::=================================================================
:showDATaddress
echo The current internal address var is set too:
echo %address%
goto loop
::=================================================================
:DebugCMD REM TESTS CMD CODED UNDER THIS LABEL
python "%address%\Batch Extras\NPCBuilder\EDF_5\EDF 5 Nephila NPC Generator.py" "%cd%"
echo printer noises
goto loop
::=================================================================
:exit
endlocal
cls
exit