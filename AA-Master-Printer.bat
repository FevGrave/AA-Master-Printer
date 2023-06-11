@echo off
setlocal enabledelayedexpansion
TITLE V 1.0.343.20 --- A-Master-Printer --- by FevGrave#5156 --- %time%

::=================================================================

color 0A
REM %esc%[92m
set address=F:\SteamLibrary\steamapps\common\EARTH DEFENSE FORCE 5\Mods\TOOLS
MODE 150,60
@for /f %%a in ('echo prompt $E^| cmd') do set "esc=%%a" 
REM For VT100 escape codes ^^^^ aka the color

::=================================================================

:list
echo -1. Exit Program                        - Close This Application
echo 0. (SGO) Options                        - Object Behavior Files (ie guns, and other stuff)
echo 1. M(RAB) Options                       - Model ^& Textures
echo 2. (RMPA) (BVM) (MAC) Options           - Missions files ^& Map Layout Editor
echo 3. (CAS) Options                        - Class Animation Script
echo 4. (ACB) (AWE) (AWB) Options            - Audio Extraction ^& Replacement
echo 5. (SHKT) Options                       - Havok Physics 
echo 6. Specialty One Window Editors         - For Quick Access Tools
echo 7. UE AES Keys                          - Keys ^& Info to get in Unreal Engine-based games
echo 8. Batch Controls                       - repeats file movement or mass delete of file type
echo:
set a=0
set x=69420
set /p x=Enter a number to %esc%[38;5;1mmess %esc%[92mwith that file type: 
echo:
echo:
echo:
echo:
echo:

if %x% == -1 goto exit
if %x% == 0 goto listSGO
if %x% == 1 goto listm-rab
if %x% == 2 goto listRMPABVMMAC
if %x% == 3 goto listCAS
if %x% == 4 goto listAudio
if %x% == 5 goto listHavok
if %x% == 6 goto listALLinONE
if %x% == 7 goto UE-keys
if %x% == 8 goto ListBatchCmdHelper
if %x% == EGG goto EGG
if %x% GEQ 9 goto invalid

::=================================================================

:listSGO
echo -1. Exit Program                        - Close This Application
echo 0. Go back to starting menu             - Go Back
echo 1. Search for any gun name in (JSON)    - Find that gun
echo 2. (SGO) TO (JSON)                      - Converting Script
echo 3. (JSON) TO (SGO)                      - Converting Script
echo 4. (SGO) TO (XML)                       - Converting Script
echo 5. (XML) TO (SGO)                       - Converting Script
echo 6. Edit (SGO)                           - SGO Editor
echo 7. Build a gun with a GUI               - Big Racer's Weapon Builder
echo 8. (SGO) documentation                  - Opens to Github Website Page On Node Documentation
echo 9. 4.1's Weapon List                    - Opens to Github Website Page To List of weapons in json
echo 10. 5's Weapon List                     - ^^^^^^^^^^^^^^^^^^^^^^ But for EDF 5's Weapons
set a=1
set x=69420
set /p x=Enter a number to mess with that file type: 
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

:listm-rab
echo -1. Exit Program                        - Close This Application
echo 0. Go back to starting menu             - Go Back
echo 1. M(RAB) Open Single Folder            - Model ^& Textures Decrypting
echo 2. M(RAB) Press-Hold Any key if used    - Model ^& Textures (Every file will be opened to an explorable folder)
echo 3. M(RAB) Stitch Single Folder          - Model ^& Textures Encrypting
echo 4. (MDB) TO (XML)                       - Decrypting Game asset to 3DS Max import
echo 5. (XML) TO (MDB)                       - Encrypting 3DS Max export to Game asset
echo 6. View M(RAB)                          - Direct RAB viewer
echo 7. Scaling tool                         - (MDB), (CAS), (CANM), (SHKT)
echo 8. (EXR) TO (DDS)                       - Image Converting Script
echo 9. I just need images in a format       - Recommended format for modding (EXR) {I'm BUGGY / "slow" on some stuff}
echo 10. Print Map Notes                      - Print Interal notes
echo 11. Blender MDB plugin                  - Link to Github Page
set a=2
set x=69420
set /p x=Enter a number to mess with that file type: 
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
if %x% == 6 goto rab-editor
if %x% == 5 goto ScaleT
if %x% == 8 goto dds-printer
if %x% == 9 goto image-printer
if %x% == 10 goto m-notes
if %x% == 11 goto MDBp
if %x% GEQ 12 goto invalid

::=================================================================

:listRMPABVMMAC
echo -1. Exit Program                        - Close This Application
echo 0. Go back to starting menu             - Go Back
echo 1. (RMPA) ^& (BVM) TO (JSON) ^& (ASM)     - Converting Script (Will close this window when used)
echo 2. (JSON) ^& (ASM) TO (RMPA) ^& (BVM)     - Converting Script (Will close this window when used)
echo 3. (BVM) TO (TXT)                       - BVM Builder Script
echo 4. (TXT) TO (BVM)                       - BVM Builder Script
echo 5. (MAC)                                - Map Layout Editor
echo 6. (MAC) Viewer                         - View the maps in a 3D space 
echo 7. Mission Editor Viewer                - Mission Editor
echo 8. (BVM) documentation                  - Opens to Github Website Page
echo 9. (RMPA) documentation                 - Opens to Github Website Page
set a=3
set x=69420
set /p x=Enter a number to mess with that file type: 
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

:listCAS
echo -1. Exit Program                        - Close This Application
echo 0. Go back to starting menu             - Go Back
echo 1. (CAS) to (XML)                       - Decrypting
echo 2. (XML) to (CAS)                       - Encrypting
echo 3. Scaling tool                         - (MDB), (CAS), (CANM), (SHKT)
set a=4
set x=69420
set /p x=Enter a number to mess with that file type: 
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

:listAudio
echo -1. Exit Program                        - Close This Application
echo 0. Go back to starting menu             - Go Back
echo 1. (AWE) ^& (AWB)                        - Audio (Another EDF Tools)
echo 2. (ACB)                                - Audio (E.A.T.)
echo 3. (HCA) TO (WAV)                       - Converting
echo 4. (WAV) TO (HCA)                       - Converting
set a=5
set x=69420
set /p x=Enter a number to mess with that file type: 
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

:listHavok
echo -1. Exit Program                        - Close This Application
echo 0. Go back to starting menu             - Go Back
echo 1. (SHKT) TO (HKX)                      - Converting
echo 2. (HKX) TO (SHKT)                      - Converting
echo 3. Open Havok Standalone Filter Manager - Open's A Program
echo 4. Havok-Export                         - Opens to Github Website Page
echo 5. Scaling tool                         - (MDB), (CAS), (CANM), (SHKT)
set a=6
set x=69420
set /p x=Enter a number to mess with that file type: 
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

:listALLinONE
echo -1. Exit Program                        - Close This Application
echo 0. Go back to starting menu             - Go Back
echo 1. Edit (SGO)                           - SGO Editor
echo 2. Build a gun with a GUI               - Big Racer's Weapon Builder
echo 3. (ACB)                                - Audio (E.A.T.)
echo 4. Edit M(RAB)                          - Direct RAB editor
echo 5. Scaling tool                         - (MDB), (CAS), (CANM), (SHKT)



set a=7
set x=69420
set /p x=Enter a number to mess with that file type: 
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
if %x% == 4 goto rab-editor
if %x% == 5 goto ScaleT
if %x% GEQ 6 goto invalid

::=================================================================

:ListBatchCmdHelper
echo -1. Exit Program                        - Close This Application
echo 0. Go back to starting menu             - Go Back
echo 1. Delete by File Type                  - Supply The .(File Extention)
echo 2. Move files from A to B               - File Movement
echo 3. Get "xgs_scene_object_class"         - Make's A .txt File
echo 4. Generate Mission list with 0-1 values
echo 5. Generate Config
echo 6. Get Weapon Names
echo 7. Base64^|XML string converter



set a=8
set x=69420
set /p x=Enter a number to mess with that file type: 
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
if %x% == 7 goto B64XML
if %x% GEQ 8 goto invalid

:==================================================================

:invalid
echo:
echo Needs To Be An Actual Input                                                                     -STOP
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
if %a% == 8 goto ListBatchCmdHelper

::=================================================================

::Loops with spaces
:loop
echo:
set /a loop=%loop%+1 
if "%loop%"=="5" goto Break
goto loop
:Break
set loop=0
set b=%a%
if %b% == 0 goto list
if %b% == 1 goto listSGO
if %b% == 2 goto listm-rab
if %b% == 3 goto listRMAPBVMMAC
if %b% == 4 goto listCAS
if %b% == 5 goto listAudio
if %b% == 6 goto listHavok
if %b% == 7 goto listALLinONE
if %b% == 8 goto ListBatchCmdHelper

::=================================================================

:search
set /p SEARCH=Name to the gun or equipment: 
echo:
echo File's that may have this: 
FINDSTR /I /M %SEARCH% *.json
goto loop

:sgo-printer
for /r "%CD%" %%a in (*.SGO) do "%address%\sgott.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:sgo-stitcher
for /r "%CD%" %%a in (*.jsON) do "%address%\sgott.exe" "%%~dpnxa"
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
echo Close application to go back to the printer's menu
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

:m-rab-printerSf
set /p cf=Enter file name: 
"%address%\EDF-TOOLS\EDF Tools.exe" %cf% "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:m-rab-printer
for /r "%CD%" %%a in (*.RAB, *.MRAB) do "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:m-rab-stitcher
set /p cf=Enter folder name: 
"%address%\EDF-TOOLS\EDF Tools.exe" /ARCHIVE %cf% "%%~dpnxa"
echo Encrypting done . . . at: & time /t
echo:
echo:
echo:
set /p c=Do you have another file to be Archived (Y/N)?: 
IF /I "%c%" NEQ "Y" GOTO loop
goto m-rab-stitcher

:mdb-xml
for /r "%CD%" %%a in (*.MDB) do "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
echo Converting done . . . at: & time /t
goto loop

:xml-mdb
for /r "%CD%" %%a in (*.XML) do "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
echo Converting done . . . at: & time /t
goto loop

:rab-editor
echo comming soon
:: "%address%\Direct RAB editor\Direct RAB editor.exe"
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
echo --Weather--
echo fine
echo finecloud
echo cloudy
echo cloudy2
echo evening
echo sunset
echo:
echo --Headers file meanings--     name-of-file = Object's name
echo name-of-file.mdb              Is the normal object
echo name-of-file_gr.mdb           Is the ground destroyed object
echo name-of-file_hk.mdb           Is the fragmented version of the model
echo name-of-file_lod.mdb          Is the lower level of detail object
echo name-of-file_lod2.mdb         Is the lowest level of detail object
echo name-of-file{number}m         Is the size of the object in meters
echo name-of-file_1f.mdb           First floor of building
echo name-of-file_c.mdb            Middel floor of building
echo name-of-file_top.mdb          Top floor of building
echo trc_name-of-file.mdb          Meshes from TrainCity map
echo sk_name-of-file.mdb           Outdoor meshes?
echo dan_name-of-file.mdb          Meshes from Danti map
echo hen_name-of-file.mdb          Meshes from Henden map
echo ktg_name-of-file.mdb          Meshes from Kitagun map
echo old_name-of-file.mdb          old structures?
echo obj_name-of-file.mdb          Small objects?
echo sei_name-of-file.mdb          Meshes from Seiyu
echo yy                            ?
echo ym                            ?
echo:                                  
echo --EDF 6--   
echo /Map/~~~~~~~~~.mac
echo:                                  
echo --EDF 5--                         
echo /Map/IG_2000MCity.mac         Very large city of skyscrapers.
echo /Map/IG_Base502.mac           EDF base exterior in the grassy mountains.
echo /Map/IG_Cave501.mac           "fine" weather only. Standard cave map.
echo /Map/IG_Cave503.mac           "fine" weather only. Cave with a large room of many interconnections(?).
echo /Map/IG_Cave504.mac           "fine" weather only. Cave featuring a high ceiling area.
echo /Map/IG_Kaigan502.mac         Map of the mountainous coast.
echo /Map/IG_Sangaku506.mac        Map of the mountain area.
echo /Map/IG_Heigen507.mac         Map of the grassy plains.
echo /Map/IG_Desert508.mac         EDF base exterior in the desert.
echo /Map/IG_EDFRoom01.mac         "fine" weather only. EDF base interior.
echo /Map/IG_EDFRoom02.mac         "fine" weather only. EDF base interior with built-in ant tunnel exits (is this in both?).
echo /Map/NG_DLC_EDFRoom03.mac     "fine" weather only. EDF base interior with a looping area.
echo /Map/NW_Danti01.mac           Long residential city with apartment complexes.
echo /Map/NW_Europe01.mac          European city.
echo /Map/NW_Henden.mac            Residential rice farm town.
echo /Map/NW_JyousuiCity.mac       City with a small water park and a water-processing plant.
echo /Map/NW_KitaguniCity.mac      City featuring the Yahoro Station.
echo /Map/NW_Seiyu.mac             Map of a large factory.
echo /Map/NW_Seiyu_Night.mac       "night" weather only. Same factory map as Seiyu, but with many lights.
echo /Map/NW_Suiden.mac            Large stretch of rice paddy fields.
echo /Map/NW_TrainCity.mac         Skyscraper city divided by a line of many train tracks.
echo /Map/IG_TestLightMap.mac      Resource-light, somewhat empty test city. Same one as 4.1's.
echo /Map/IG_Test_BlueFld.mac      "fine" weather only. Same blank map as 4.1's.
echo:                                  
echo --EDF 4.1--                       
echo /Map/NW_HillyCity_Light.mac   City with train station, construction sites, and tennis courts.
echo /Map/NW_Kasenjiki01.mac       Very long residential area with a riverbed.
echo /Map/NW_KousouBld01.mac       High-rise district with a park.
echo /Map/NW_Sinsuikouen.mac       City and town divided by a water park.
echo /Map/NW_Soukogai01.mac        Coastal port of many warehouses.
echo /Map/IG_WreckTown01.mac       Pre-destroyed city.
echo /Map/SK_Heigen02.mac          Map of the grassy plains.
echo /Map/SK_Kaigan01.mac          Map of the beach.
echo /Map/SK_Sangaku01.mac         Mountain range of valleys.
echo /Map/SK_Sangaku02.mac         Mountain range with a center hill.
echo /Map/SK_StepMountain01.mac    Mountain road.
echo /Map/SK_Valley01.mac          Valley with a single bridge.
echo /Map/SK_Crater01.mac          Map of a large crater.
echo /Map/NW_Underground01.mac     "fine" weather only. Caves found inside subway tunnels.
echo /Map/IG_Cave01.mac            "fine" weather only. Caves with green-ish walls.
echo /Map/IG_HornetCave01.mac      "fine" weather only. Deep insides of a hornet's nest.
echo /Map/IG_TestLightMap.mac      Resource-light, somewhat empty test city. Low LOD settings.
echo /Map/IG_Test_BlueFld.mac      "fine" weather only. Completely blank map with a mucky green background.
goto loop

:MDBp
echo Opening default browser to webpage
start "" https://github.com/BlueAmulet/blender-mdb-addon
goto loop

::=================================================================

:RMPABVM
for /r "%CD%" %%a in (*.RMPA, *.BVM) do "%address%\mission_tools_1.62.exe" "%%~dpnxa"
:: for /r "%CD%" %%a in (*.RMPA, *.BVM) do "%address%\mission_tools_1.64.exe" --jmp4 "%%~dpnxa"
goto loop

:JsonAsm
for /r "%CD%" %%a in (*.JSON, *.ASM) do "%address%\mission_tools_1.62.exe" "%%~dpnxa"
:: for /r "%CD%" %%a in (*.JSON, *.ASM) do "%address%\mission_tools_1.64.exe" --jmp4 "%%~dpnxa"
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

:CASXML
for /r "%CD%" %%a in (*.CAS) do "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
echo Ecrypting done . . . at: & time /t
goto loop

:XMLCAS
for /r "%CD%" %%a in (*.XML) do "%address%\EDF-TOOLS\EDF Tools.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

::=================================================================

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

:UE-keys
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
echo (PNG)              Smaller,  Poor alpha layer,                               (Recommended)
echo (DDS)              Smallest, Videogame compression, Best overall             (Blender DOES NOT SUPPORT DDS convert them
echo                                                                               to EXR(its included in this file package))
echo:
echo Game                 ^|UE_Version                      ^|AES keys                                                             ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo EDF:Iron Rain        ^|{4.19}                          ^|0xCF812E306958EF92C90EA4F251994FE747306B7B666940FBE2ED711139EDB65E   ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo EDF:World Brothers   ^|{4.24}                          ^|0x4055102382008C1D820548683D055CC84B03164B43EDF64A80629B384A4D8DA4   ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo EDF:                 ^|{}                              ^|0x                                                                   ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo: 
echo If you have an account on zenhax, can you go to this link "https://zenhax.com/viewtopic.php?f=9&t=1005" and post these two
echo AES keys above to add support on the Unreal Engine 4 pak-file Unpacker by Haoose, thanks in advance.
goto loop

::=================================================================

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
echo printer noises
python "%address%\Batch Extras\xgsExtractor.py"
goto loop

:MLMaker
echo printer noises
python "%address%\Batch Extras\MissionListMaker.py"
goto loop

:CFGMaker
echo printer noises
python "%address%\Batch Extras\ConfigBuilder.py"
goto loop

:GNLMaker
echo printer noises
python "%address%\Batch Extras\Weapon name.py"
goto loop

:B64XML
python "%address%\Batch Extras\Base64-TO-HEX-TO-ASCII.py"
goto loop

::==================================================================

:ScaleT
echo Scales an object to be bigger or smaller
"%address%\ScalingTool.exe"
goto loop

::==================================================================

:EGG
echo To save our Mother Earth from any alien attack
echo From vicious giant insects who have once again come back
echo We'll unleash all our forces, we won't cut them any slack
Timeout /t 4 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
echo:
echo Our soldiers are prepared for any alien threats
echo The Navy launches ships, the Air Force sends their jets
echo And nothing can withstand our fixed bayonets
Timeout /t 4 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
echo:
echo Our forces have now dwindled and we pull back to regroup
echo The enemy has multiplied and formed a massive group
echo We'd better beat these bugs before we're all turned to soup
Timeout /t 4 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
echo:
echo To take down giant insects who came from outer space
echo We now head underground for their path we must retrace
echo And find their giant nest and crush the Queen's carapace
Timeout /t 4 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
echo:
echo The Air Force and the Navy were destroyed or cast about
echo Scouts, Rangers, wing divers have almost been wiped out
echo Despite all this the infantry will stubbornly hold out
Timeout /t 4 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
echo:
echo Our friends were all killed yesterday as were our families
echo Today we may not make it facing these atrocities
echo We'll never drop our banner despite our casualties
Timeout /t 4 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
echo:
echo Two days ago my brother died, next day my lover fell
echo Today most everyone was killed on that we must not dwell
echo But we will never leave the field, we'll never say farewell
Timeout /t 4 /nobreak >nul
echo:
echo THE E.D.F. DEPLOYS!
echo:
echo What's the point of that song?
echo Stop that depressing crap!
echo Then how about this song?
echo:
Timeout /t 4 /nobreak >nul
echo A legendary hero soon will lead us to glory
echo Eight years ago he sunk the mothership says history
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
echo #######
echo #
echo #
echo #######
echo #
echo #
echo #######
Timeout /t 1 /nobreak >nul
echo:
echo:
echo:
echo #####
echo #    #
echo #     #
echo #     #
echo #     #
echo #    #
echo #####
Timeout /t 1 /nobreak >nul
echo:
echo:
echo:
echo #####
echo #
echo #
echo #####
echo #
echo #
echo #
Timeout /t 1 /nobreak >nul
echo:
echo:
echo:
echo #####     #######   ######    #          #####    #     #   #######
echo #    #    #         #     #   #         #     #    #   #    #
echo #     #   #         #     #   #         #     #     # #     # 
echo #     #   #######   ######    #         #     #      #      #######
echo #     #   #         #         #         #     #      #            #
echo #    #    #         #         #         #     #      #            #
echo #####     #######   #         #######    #####       #      #######
echo:
goto loop

::    set /a num=%random% %% 100 + 1
::=================================================================

:exit
cls