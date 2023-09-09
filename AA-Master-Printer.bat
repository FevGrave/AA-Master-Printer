@echo off
setlocal enabledelayedexpansion
TITLE V 1.0.343.21 --- AA-Master-Printer --- by FevGrave --- %time% --- %cd%

::=================================================================

color 0A
REM %esc%[92m Reset's RED mess text color or any other colored words
set address=F:\SteamLibrary\steamapps\common\EARTH DEFENSE FORCE 5\Mods\TOOLS
MODE 150,60
@for /f %%a in ('echo prompt $E^| cmd') do set "esc=%%a" 
REM For VT100 escape codes ^^^^ aka the color

::=================================================================

REM -1
:list
echo -1. Exit Program                         - Close This Application
echo 0. (SGO) Options                         - Object Behavior Files (ie guns, and other stuff)
echo 1. M(RAB) Options                        - Model ^& Textures
echo 2. (RMPA) (BVM) (MAC) Options            - Missions files ^& Map Layout Editor
echo 3. (CAS) Options                         - Class Animation Script
echo 4. (ACB) (AWE) (AWB) Options             - Audio Extraction ^& Replacement
echo 5. (SHKT) Options                        - Havok Physics 
echo 6. Specialty One Window Editors          - For Quick Access Tools
echo 7. UE AES Keys                           - Keys ^& Info to get in Unreal Engine-based Games
echo 8. Batch Controls                        - Repeats File Movement, Mass Deletion Of File Type, And More!
echo 9. (xPath), (DXM), (DXB) Options         - EDF 2017 Tools
echo:
set a=0
set x=69420
set /p x=Enter A Number To %esc%[38;5;1mMess %esc%[92mWith That File Type: 
echo:
echo:
echo:
echo:
echo:

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
if %x% == 69 goto NPCGEN REM Test CMD debug input
if %x% == 88 goto UpdateTool
if %x% == EGG goto EGG
if %x% GEQ 10 goto invalid

::=================================================================

REM 0
:listSGO
echo -1. Exit Program                         - Close This Application
echo 0. Go back to starting menu              - Go Back
echo 1. Search for any gun name in (JSON)     - Find that gun
echo 2. (SGO) TO (JSON)                       - Converting Script
echo 3. (JSON) TO (SGO)                       - Converting Script
echo 4. (SGO) TO (XML)                        - Converting Script
echo 5. (XML) TO (SGO)                        - Converting Script
echo 6. Edit (SGO)                            - SGO Editor
echo 7. Build a gun with a GUI                - Big Racer's Weapon Builder
echo 8. (SGO) Documentation                   - Opens To Github Website Page On Node Documentation
echo 9. 4.1's Weapon List                     - Opens To Github Website Page To List Of Weapons In Json
echo 10. 5's Weapon List                      - Same As Above But For EDF 5's Weapons
set a=1
set x=69420
set /p x=Enter A Number To %esc%[38;5;1mMess %esc%[92mWith That File Type: 
echo:
echo:
echo:
echo:
echo:

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
echo -1. Exit Program                         - Close This Application
echo 0. Go back to starting menu              - Go Back
echo 1. M(RAB) Open Single Folder             - Model ^& Textures Decrypting
echo 2. M(RAB) Opens All Folders 1 @ a time   - Model ^& Textures (Every file Will Be Opened To An Explorable Folder)
echo 3. M(RAB) Stitch Single Folder           - Model ^& Textures Encrypting
echo 4. (MDB) TO (XML)                        - Decrypting Game Asset To 3DS Max Import
echo 5. (XML) TO (MDB)                        - Encrypting 3DS Max Export To Game Asset
echo 6. Scaling Tool                          - (MDB), (CAS), (CANM), (SHKT)
echo 7. (EXR) TO (DDS)                        - Image Converting Script
echo 8. I Just Need Images In A Format        - Recommended Format For Modding (EXR) {I'm BUGGY: Add ~ On Repeating Files}
echo 9. Print Map Notes                      - Print Interal Notes
echo 10. Blender MDB plugin                   - Link to Github Page
echo %esc%[38;5;1m666.%esc%[92m M(RAB) %esc%[38;5;1mRIP AND TEAR%esc%[92m                 - Model ^& Textures (Multistaged uppacking hell used for maps)

set a=2
set x=69420
set /p x=Enter A Number To %esc%[38;5;1mMess %esc%[92mWith That File Type: 
echo:
echo:
echo:
echo:
echo:

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
echo -1. Exit Program                         - Close This Application
echo 0. Go back to starting menu              - Go Back
echo 1. (RMPA) ^& (BVM) TO (JSON) ^& (ASM)      - Converting Script (Will close this window when used)
echo 2. (JSON) ^& (ASM) TO (RMPA) ^& (BVM)      - Converting Script (Will close this window when used)
echo 3. (BVM) TO (TXT)                        - BVM Builder Script
echo 4. (TXT) TO (BVM)                        - BVM Builder Script
echo 5. (MAC)                                 - Map Layout Editor
echo 6. (MAC) Viewer                          - View the maps in a 3D space 
echo 7. Mission Editor Viewer                 - Mission Editor
echo 8. (BVM) documentation                   - Opens to Github Website Page
echo 9. (RMPA) documentation                  - Opens to Github Website Page
set a=3
set x=69420
set /p x=Enter A Number To %esc%[38;5;1mMess %esc%[92mWith That File Type: 
echo:
echo:
echo:
echo:
echo:

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
echo -1. Exit Program                         - Close This Application
echo 0. Go back to starting menu              - Go Back
echo 1. (CAS) to (XML)                        - Decrypting
echo 2. (XML) to (CAS)                        - Encrypting
echo 3. Scaling Tool                          - (MDB), (CAS), (CANM), (SHKT)
set a=4
set x=69420
set /p x=Enter A Number To %esc%[38;5;1mMess %esc%[92mWith That File Type: 
echo:
echo:
echo:
echo:
echo:

if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto CASXML
if %x% == 2 goto XMLCAS
if %x% == 3 goto ScaleT
if %x% GEQ 4 goto invalid


::=================================================================

REM 4
:listAudio
echo -1. Exit Program                         - Close This Application
echo 0. Go back to starting menu              - Go Back
echo 1. (AWE) ^& (AWB)                         - Audio (Another EDF Tools)
echo 2. (ACB)                                 - Audio (E.A.T.)
echo 3. (HCA) TO (WAV)                        - Converting
echo 4. (WAV) TO (HCA)                        - Converting
set a=5
set x=69420
set /p x=Enter A Number To %esc%[38;5;1mMess %esc%[92mWith That File Type: 
echo:
echo:
echo:
echo:
echo:

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
echo -1. Exit Program                         - Close This Application
echo 0. Go back to starting menu              - Go Back
echo 1. (SHKT) TO (HKX)                       - Converting
echo 2. (HKX) TO (SHKT)                       - Converting
echo 3. Open Havok Standalone Filter Manager  - Open's A Program
echo 4. Havok-Export                          - Opens to Github Website Page
echo 5. Scaling tool                          - (MDB), (CAS), (CANM), (SHKT)
set a=6
set x=69420
set /p x=Enter A Number To %esc%[38;5;1mMess %esc%[92mWith That File Type: 
echo:
echo:
echo:
echo:
echo:

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
echo -1. Exit Program                         - Close This Application
echo 0. Go back to starting menu              - Go Back
echo 1. Edit (SGO)                            - SGO Editor
echo 2. Build a gun with a GUI                - Big Racer's Weapon Builder
echo 3. (ACB)                                 - Audio (E.A.T.)
echo 4. Scaling tools                         - (MDB), (CAS), (CANM), (SHKT)
echo 5. EDF 2017 tools                        - (xPath), (DXM), (DXB)



set a=7
set x=69420
set /p x=Enter A Number To %esc%[38;5;1mMess %esc%[92mWith That File Type: 
echo:
echo:
echo:
echo:
echo:

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
echo -1. Exit Program                         - Close This Application
echo 0. Go back to starting menu              - Go Back
echo 1. Delete by File Type                   - Supply The .(File Extention)
echo 2. Move files from A to B                - File Movement
echo 3. Get "xgs_scene_object_class"          - Make's A .txt File
echo 4. Generate Mission list with 0-1 values - Make's a json with the hard part done for mission list making
echo 5. Generate Config                       - WIP file BROKEN
echo 6. Get Weapon Names For 5, ^& 6 hopely    - Tool to help make the gun wiki list {usage within weapon folder}
echo 7. Get Weapon Names for 4.1              - Tool to help make the gun wiki list {usage within weapon folder}
echo 8. Update This Tool                      - UPDATES THIS FILE
echo 9. Base64^|BIN string converter           - Used for MAB data
echo 10. BIN^|Base64 string converter          - Used for MAB data
echo 11. JSON^|BIN string converter            - Used for MAB data Single Json File Used
echo 12. Get Model Names                      - Read from unpacked RABs to make a txt file
echo 13. Generate NPC for mission content     - COMMING SOON




set a=8
set x=69420
set /p x=Enter A Number To %esc%[38;5;1mMess %esc%[92mWith That File Type: 
echo:
echo:
echo:
echo:
echo:

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
if %x% == 13 goto NPCGEN
if %x% GEQ 14 goto invalid

::=================================================================

REM 9
:listEDF2017
echo -1. Exit Program                         - Close This Application
echo 0. Go back to starting menu              - Go Back
echo 1. (xPath), (DXM), (DXB)                 - DXB uses the same option as DXM
echo:
echo:
echo:
echo:
echo:



set a=9
set x=69420
set /p x=Enter A Number To %esc%[38;5;1mMess %esc%[92mWith That File Type: 
echo:
echo:
echo:
echo:
echo:

if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto 2017Files
if %x% GEQ 2 goto invalid

::=================================================================

REM Error blip
:invalid
echo:
echo Needs To Be An Actual Input                                                                     %esc%[38;5;1m-STOP%esc%[92m
echo:
echo:
echo:
echo:

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

::=================================================================

REM Loops with spaces
:loop
echo:
set /a loop=%loop%+1 
if "%loop%"=="5" goto Break
goto loop
:Break
set loop=0
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

::=================================================================

REM Error unavailable tool
:invalid2
echo:
echo unavailable tool (building noises)
echo:
echo:
echo:
echo:

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

::=================================================================

REM 0
:search
set /p SEARCH=Name to the gun or equipment: 
echo:
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
for /r "%CD%" %%a in (*.SGO) do "%address%\EDF-TOOLS\EDF TOOLS.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:xmlMABsgo
for /r "%CD%" %%a in (*.XML) do "%address%\EDF-TOOLS\EDF TOOLS.exe" "%%~dpnxa"
echo Ecrypting done . . . at: & time /t
goto loop

:sgo-editor
echo Opening SGO Editor (This will clear temp folder once you close the window)
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
for /r "%CD%" %%a in (*.RAB, *.MRAB) do (
    "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa" < "nul"
)
echo Decrypting done . . . at: & time /t
goto loop

:m-rab-printer-R&T
python "%address%\Batch Extras\m-rab-printer-RIPandTEAR.py" "%address%"
goto loop

:m-rab-stitcher
set /p cf=Enter just the folder name: 
"%address%\EDF-TOOLS\EDF Tools.exe" /ARCHIVE %cf% "%%~dpnxa"
echo Encrypting done . . . at: & time /t
echo:
echo:
echo:
set /p c=Do you have another file to be Archived (Y/N)?: 
IF /I "%c%" NEQ "Y" GOTO loop
goto m-rab-stitcher

:mdb-xml
for /r "%CD%" %%a in (*.MDB) do (
    echo 0 | "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
)
echo Converting done . . . at: & time /t
goto loop

:xml-mdb
for /r "%CD%" %%a in (*.XML) do (
    echo 1 | "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
)
echo Converting done . . . at: & time /t
goto loop

:dds-printer
for /r "%CD%" %%a in (*.EXR) do magick mogrify -format dds *.exr
@DEL *~*
echo Converting Image done . . . at: & time /t
goto loop

:image-printer
::this cmd is messy with making copy images with ~ in the extensions
echo Supported Formats = http://imagemagick.sourceforge.net/http/www/formats.html
set /p format=what file type is supplied?: 
set /p cf=Expoting to which file type?: 
for /r "%CD%" %%a in (*.%format%) do magick mogrify -format %cf% *.%format%
echo Converting file was finished . . . at: & time /t
@DEL *~*
set /p c=Do you have another file to be Archived (Y/N)?: 
IF /I "%c%" NEQ "N" goto image-printer
goto loop

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
for /r "%CD%" %%a in (*.RMPA, *.BVM) do "%address%\mission_tools_1.62.exe" "%%~dpnxa"
:: for /r "%CD%" %%a in (*.RMPA, *.BVM) do "%address%\mission_tools_1.65.exe" --jmp4 "%%~dpnxa"
goto loop

:JsonAsm
for /r "%CD%" %%a in (*.JSON, *.ASM) do "%address%\mission_tools_1.62.exe" "%%~dpnxa"
:: for /r "%CD%" %%a in (*.JSON, *.ASM) do "%address%\mission_tools_1.65.exe" --jmp4 "%%~dpnxa"
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
echo 
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
set /p awe=Enter the awe file: 
set /p awb=Enter the awb file: 
python "%address%\Another EDF Tools\awe_parser.py" %awe% %awb%
goto loop

:ACB
if exist "%address%\EAT\eternity_audio_tool.exe" (
    set /p cf=Enter file name: 
    echo Opening EAT : To go back, Close and reopen this file
    "%address%\EAT\eternity_audio_tool.exe" %cf% "%%~dpnxa"
    goto loop)
echo EAT is not detected . . . You will need to choose what version of EAT you want to unpack please go to this drive address
echo "%address%\EAT\"
goto loop

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

REM 7
:listUE-keys
echo This is the AES keys for the EDF Unreal Engine built games, Example Earth Defense ^| Iron Rain, World Brothers, And any future releases
echo:
echo:
echo Pulling Model Assets? {https://www.gildor.org/en/projects/umodel}, right-click "All packages" then export folder content
echo With blender usage in mind. 
echo:
echo:
echo Skeletal ^& Mesh type has to be any option bellow
echo (glTF 2.0)     Blender  (Blender has this installed by default)              (Recommended)
echo                3DS MAX  (N/A or no info)                                     
echo:                                                                             
echo (MD5)          NOT Recommended NOT Recommended                               (it only exports the mesh only NOT Recommended)
echo:                                                                            
echo ActorX-(PSK)   Blender  (https://github.com/Befzz/blender3d_import_psk_psa)  (Recommended)
echo                3DS MAX  (https://www.gildor.org/projects/unactorx)           (Recommended)
echo:
echo And textures could be any option below (FYI EVERY IMAGE IMPORTED INTO BLENDER USE THE NON-COLOR OPTION IN THE COLOR SPACE)
echo (TGA Uncompressed) Biggest,  With good alpha layer,                          (But why????????)
echo (TGA)              Bigger,   With a good alpha layer,                        (Recommend)
echo (PNG)              Smaller,                                                  (Recommended)
echo (DDS)              Smallest, Videogame compression, Best overall             (Blender DOES NOT SUPPORT DDS convert them
echo                                                                               to EXR(its included in this file package))
echo:
echo Game                 ^|UE_Version                      ^|AES keys                                                             ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo EDF:Iron Rain        ^|{4.19}                          ^|0xCF812E306958EF92C90EA4F251994FE747306B7B666940FBE2ED711139EDB65E   ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo EDF:World Brothers   ^|{4.24}                          ^|0x4055102382008C1D820548683D055CC84B03164B43EDF64A80629B384A4D8DA4   ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo EDF:World Brothers 2 ^|{}                              ^|0x                                                                   ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo: 
echo If you have an account on zenhax, can you go to this link "https://zenhax.com/viewtopic.php?f=9&t=1005" and post these two
echo AES keys above to add support on the Unreal Engine 4 pak-file Unpacker by Haoose, thanks in advance.
goto loop

::=================================================================

REM 8
:FileKiller
set /p extention=Enter file type as text: 
for /r "%CD%" %%a in (*.%extention%) do DEL *.%extention%
echo Deleted . . . at: & time /t
goto loop

:FileMover
set DFS=0
set /p Source=What file?:
if %DFS% == 1 goto DFSL
set /p Destination=Where To Place the file?:
set DFS = 1
goto DFSL
:DFSL
MOVE /-Y %Source% %Destination%
set /p choose=Have another file to move? (y\n):
IF /I "%choose%" NEQ "N" goto FileMover
goto loop

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
goto loop

:BINB64
python "%address%\Batch Extras\Base64-TO-HEX-TO-BIN.py" Reverse "%cd%\output.bin"
echo printer noises
goto loop

:Model_Namer
python "%address%\Batch Extras\mdb_file_reader.py" "%~dp0"
echo printer noises
goto loop

:NPCGEN
goto invalid2
::python "%address%\Batch Extras\NPCBuilder\__main__.py" "%cd%"
::echo printer noises
::goto loop

::==================================================================

:EGG
echo To save our Mother Earth from any alien attack
Timeout /t 3 /nobreak >nul
echo From vicious giant insects who have once again come back
Timeout /t 3 /nobreak >nul
echo We'll unleash all our forces, we won't cut them any slack
Timeout /t 3 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
Timeout /t 3 /nobreak >nul
echo:
echo Our soldiers are prepared for any alien threats
Timeout /t 3 /nobreak >nul
echo The Navy launches ships, the Air Force sends their jets
Timeout /t 3 /nobreak >nul
echo And nothing can withstand our fixed bayonets
Timeout /t 3 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
Timeout /t 3 /nobreak >nul
echo:
echo Our forces have now dwindled and we pull back to regroup
Timeout /t 3 /nobreak >nul
echo The enemy has multiplied and formed a massive group
Timeout /t 3 /nobreak >nul
echo We'd better beat these bugs before we're all turned to soup
Timeout /t 3 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
Timeout /t 3 /nobreak >nul
echo:
echo To take down giant insects who came from outer space
Timeout /t 3 /nobreak >nul
echo We now head underground for their path we must retrace
Timeout /t 3 /nobreak >nul
echo And find their giant nest and crush the Queen's carapace
Timeout /t 3 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
Timeout /t 3 /nobreak >nul
echo:
echo The Air Force and the Navy were destroyed or cast about
Timeout /t 3 /nobreak >nul
echo Scouts, Rangers, wing divers have almost been wiped out
Timeout /t 3 /nobreak >nul
echo Despite all this the infantry will stubbornly hold out
Timeout /t 3 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
Timeout /t 3 /nobreak >nul
echo:
echo Our friends were all killed yesterday as were our families
Timeout /t 3 /nobreak >nul
echo Today we may not make it facing these atrocities
Timeout /t 3 /nobreak >nul
echo We'll never drop our banner despite our casualties
Timeout /t 3 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
Timeout /t 3 /nobreak >nul
echo:
echo Two days ago my brother died, next day my lover fell
Timeout /t 3 /nobreak >nul
echo Today most everyone was killed on that we must not dwell
Timeout /t 3 /nobreak >nul
echo But we will never leave the field, we'll never say farewell
Timeout /t 3 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
Timeout /t 3 /nobreak >nul
echo:
echo What's the point of that song?
Timeout /t 3 /nobreak >nul
echo Stop that depressing crap!
Timeout /t 3 /nobreak >nul
echo Then how about this song?
Timeout /t 3 /nobreak >nul
echo:
echo A legendary hero soon will lead us to glory
Timeout /t 2 /nobreak >nul
echo Eight years ago he sunk the mothership says history
Timeout /t 2 /nobreak >nul
echo Tomorrow we will follow this brave soul to victory
Timeout /t 2 /nobreak >nul
echo:
echo #######   #     #   #######
echo    #      #     #   #
echo    #      #     #   #
echo    #      #######   #######
echo    #      #     #   #
echo    #      #     #   #
echo    #      #     #   #######
Timeout /t 1 /nobreak >nul
echo:
echo:
echo:
echo #######   #
echo #         #
echo #         #
echo #######   #
echo #         #
echo #          
echo #######   #
Timeout /t 1 /nobreak >nul
echo:
echo #####     #
echo #    #    #
echo #     #   #
echo #     #   #
echo #     #   #
echo #    #     
echo #####     #
Timeout /t 1 /nobreak >nul
echo:
echo #######   #
echo #         #
echo #         #
echo #######   #
echo #         #
echo #          
echo #         #
Timeout /t 1 /nobreak >nul
echo:
echo:
echo:
echo #####     #######   ######    #          #####    #     #   #######   #   #   #
echo #    #    #         #     #   #         #     #    #   #    #         #   #   #
echo #     #   #         #     #   #         #     #     # #     #         #   #   #
echo #     #   #######   ######    #         #     #      #      #######   #   #   #
echo #     #   #         #         #         #     #      #            #   #   #   #
echo #    #    #         #         #         #     #      #            #            
echo #####     #######   #         #######    #####       #      #######   #   #   #
Timeout /t 3 /nobreak >nul
goto loop

::=================================================================

REM 6
:ScaleT
echo Scales an object to be bigger or smaller
"%address%\ScalingTool.exe"
goto loop

:UpdateTool
REM Get the current working directory
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

REM 9
:2017Files
echo Drag and drop your file into the newly opened window
for /r "%CD%" %%a in (*.xPath,*.DXM,*.DXB) do "%address%\EDF2017parser.exe" "%%~dpnxa"
goto loop

::=================================================================

:exit
cls