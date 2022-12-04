@echo off
setlocal enabledelayedexpansion
TITLE V 1.0.343.15.13 --- A-Master-Printer --- by FevGrave#5156 --- %time%

::=================================================================

color 0A
set address=F:\SteamLibrary\steamapps\common\EARTH DEFENSE FORCE 5\Mods\TOOLS
MODE 150,60

::=================================================================

:list
echo -1. Exit Program                        - Close this application
echo 0. (SGO) Options                        - Object Behavior Files (ie guns, and other stuff)
echo 1. M(RAB) Options                       - Model ^& Textures
echo 2. (RMPA) (BVM) (MAC) Options           - Missions files ^& Map Layout Editor
echo 3. (ACB) (AWE) (AWB) Options            - Audio Extraction ^& Replacement
echo 4. Specialty One Window Editors         - For Quick Access Tools
echo 5. UE AES Keys                          - Keys ^& Info to get in UE-based games
echo 6. Batch Controls                       - repeats file movement or mass delete of file type
echo.
set a=0
set x=69420
set /p x=Enter a number to mess with that file type: 
echo.
echo.
echo.
echo.
echo.

if %x% == -1 goto exit
if %x% == 0 goto listSGO
if %x% == 1 goto listm-rab
if %x% == 2 goto listRMPABVMMAC
if %x% == 3 goto listAudio
if %x% == 4 goto listALLinONE
if %x% == 5 goto UE-keys
if %x% == 6 goto ListBatchCmdHelper
if %x% == EGG goto EGG
if %x% GEQ 7 goto invalid

::=================================================================

:listSGO
echo -1. Exit Program                        - Close this application
echo 0. Go back to starting menu             - Go Back
echo 1. Search for any gun name in (JSON)    - Find that gun
echo 2. (SGO) TO (JSON)                      - Converting Script
echo 3. (JSON) TO (SGO)                      - Converting Script
echo 4. Edit (SGO)                           - SGO Editor
echo 5. Build a gun with a GUI               - Big Racer's Weapon Builder
echo 6. (SGO) documentation
echo 7. 4.1's Weapon List
echo 8. 5's Weapon List
set a=1
set x=69420
set /p x=Enter a number to mess with that file type: 
echo.
echo.
echo.
echo.
echo.

if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto search
if %x% == 2 goto sgo-printer
if %x% == 3 goto sgo-stitcher
if %x% == 4 goto sgo-editor
if %x% == 5 goto buildAgun
if %x% == 6 goto sgodoc
if %x% == 7 goto 4-1gunpage
if %x% == 8 goto 5gunpage
if %x% GEQ 9 goto invalid

::=================================================================

:listm-rab
echo -1. Exit Program                        - Close this application
echo 0. Go back to starting menu             - Go Back
echo 1. M(RAB) Open Single Folder            - Model ^& Textures
echo 2. M(RAB) Press-Hold Any key if used    - Model ^& Textures (Every file will be opened to an explorable folder)
echo 3. M(RAB) Stitch Single Folder          - Model ^& Textures
echo 4. (MDB) TO (XML)                       - Game asset to 3DS Max import
echo 5. (XML) TO (MDB)                       - 3DS Max export to Game asset
echo 6. Edit M(RAB)                          - Direct RAB editor
echo 7. (EXR) TO (DDS)                       - Converting Script
echo 8. I just need images in a format       - Recommended format for modding (EXR) {I'm BUGGY / "slow" on some stuff}
echo 9. Print Map Notes
echo 10. Blender MDB plugin
set a=2
set x=69420
set /p x=Enter a number to mess with that file type: 
echo.
echo.
echo.
echo.
echo.

if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto m-rab-printerSf
if %x% == 2 goto m-rab-printer
if %x% == 3 goto m-rab-stitcher
if %x% == 4 goto mdb-xml
if %x% == 5 goto xml-mdb
if %x% == 6 goto rab-editor
if %x% == 7 goto dds-printer
if %x% == 8 goto image-printer
if %x% == 9 goto m-notes
if %x% == 10 goto MDBp
if %x% GEQ 11 goto invalid

::=================================================================

:listRMPABVMMAC
echo -1. Exit Program                        - Close this application
echo 0. Go back to starting menu             - Go Back
echo 1. (RMPA) ^& (BVM) TO (JSON) ^& (ASM)     - Converting Script
echo 2. (JSON) ^& (ASM) TO (RMPA) ^& (BVM)     - Converting Script
echo 3. (BVM) TO (TXT)                       - BVM Builder Script
echo 4. (TXT) TO (BVM)                       - BVM Builder Script
echo 5. Print Useful Addresses Notes For (BVM-ASM)    
echo 6. (MAC)                                - Map Layout Editor
echo 7. (MAC) Viewer                         - View the maps in a 3D space 
echo 8. Mission Editor Viewer                - Mission Editor
echo 9. (BVM) documentation
echo 10. (RMPA) documentation
set a=3
set x=69420
set /p x=Enter a number to mess with that file type: 
echo.
echo.
echo.
echo.
echo.

if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto RMPABVM
if %x% == 2 goto JsonAsm
if %x% == 3 goto bvmtxt
if %x% == 4 goto txtbvm
if %x% == 5 goto addresses
if %x% == 6 goto MAC
if %x% == 7 goto MACVIEW
if %x% == 8 goto MissionEditor
if %x% == 9 goto BVMdoc
if %x% == 10 goto RMPAdoc
if %x% GEQ 11 goto invalid


::=================================================================

:listAudio
echo -1. Exit Program                        - Close this application
echo 0. Go back to starting menu             - Go Back
echo 1. (AWE) ^& (AWB)                        - Audio (Another EDF Tools)
echo 2. (ACB)                                - Audio (E.A.T.)
set a=4
set x=69420
set /p x=Enter a number to mess with that file type: 
echo.
echo.
echo.
echo.
echo.

if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto AW~
if %x% == 2 goto ACB
if %x% GEQ 3 goto invalid

::=================================================================

:listALLinONE
echo -1. Exit Program                        - Close this application
echo 0. Go back to starting menu             - Go Back
echo 1. Edit (SGO)                           - SGO Editor
echo 2. Build a gun with a GUI               - Big Racer's Weapon Builder
echo 3. (ACB)                                - Audio (E.A.T.)
echo 4. Edit M(RAB)                          - Direct RAB editor



set a=5
set x=69420
set /p x=Enter a number to mess with that file type: 
echo.
echo.
echo.
echo.
echo.

if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto sgo-editor
if %x% == 2 goto buildAgun
if %x% == 3 goto ACB
if %x% == 4 goto rab-editor
if %x% GEQ 5 goto invalid

::=================================================================

:ListBatchCmdHelper
echo -1. Exit Program                        - Close this application
echo 0. Go back to starting menu             - Go Back
echo 1. Delete by File Type                  - 
echo 2. Move files from A to B               - 



set a=6
set x=69420
set /p x=Enter a number to mess with that file type: 
echo.
echo.
echo.
echo.
echo.

if %x% == -1 goto exit
if %x% == 0 goto list
if %x% == 1 goto FileKiller
if %x% == 2 goto FileMover
if %x% GEQ 3 goto invalid

:==================================================================

:invalid
echo.
echo Needs To Be An Actual Input                                                                     -STOP
echo.
echo.
echo.
echo.

if %a% == 0 goto list
if %a% == 1 goto listSGO
if %a% == 2 goto listm-rab
if %a% == 3 goto listRMAPBVMMAC
if %a% == 4 goto listAudio
if %a% == 5 goto listALLinONE
if %a% == 6 goto ListBatchCmdHelper

::=================================================================

::Loops with spaces
:loop
echo.
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
if %b% == 4 goto listAudio
if %b% == 5 goto listALLinONE
if %b% == 6 goto ListBatchCmdHelper

::=================================================================

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
echo Opening SGO Editor (Will clear temp folder once you close the window)
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
echo.
echo.
set /p c=Do you have another file to be Archived (Y/N)?: 
IF /I "%c%" NEQ "Y" GOTO loop
goto m-rab-stitcher

:mdb-xml
for /r "%CD%" %%a in (*.mdb) do "%address%\BVM_Builder\EDF Tools.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:xml-mdb
for /r "%CD%" %%a in (*.xml) do "%address%\BVM_Builder\EDF Tools.exe" "%%~dpnxa"
echo Decrypting done . . . at: & time /t
goto loop

:rab-editor
echo comming soon
:: "%address%\Direct RAB editor\Direct RAB editor.exe"
goto loop

:dds-printer
for /r "%CD%" %%a in (*.exr) do magick mogrify -format dds *.exr
echo Decrypting done . . . at: & time /t
goto loop

:image-printer
echo Supported Formats = http://imagemagick.sourceforge.net/http/www/formats.html
set /p format=what file type is supplied?: 
set /p cf=Expoting to which file type?: 
for /r "%CD%" %%a in (*.%format%) do magick mogrify -format %cf% *.%format%
echo Converting file was finished . . . at: & time /t
set /p c=Do you have another file to be Archived (Y/N)?: 
IF /I "%c%" NEQ "N" goto image-printer
@DEL *~*
goto loop

:m-notes
echo --Weather--
echo fine
echo finecloud
echo cloudy
echo cloudy2
echo evening
echo sunset
echo.
echo --Headers file meanings--
echo name-of-file.mdb                  Is the normal object
echo name-of-file_gr.mdb               Is the ground destroyed object
echo name-of-file_hk.mdb               Is the fragmented version of the model
echo name-of-file_lod.mdb              Is the lower level of detail object
echo name-of-file_lod2.mdb             Is the lowest level of detail object
echo name-of-file{number}m             Is the size of the object in meters
echo name-of-file_1f.mdb               First floor of building
echo name-of-file_c.mdb                Middel floor of building
echo name-of-file_top.mdb              Top floor of building
echo trc_name-of-file.mdb              Meshes from TrainCity map
echo sk_name-of-file.mdb               Outdoor meshes?
echo dan_name-of-file.mdb              Meshes from Danti map
echo hen_name-of-file.mdb              Meshes from Henden map
echo ktg_name-of-file.mdb              Meshes from Kitagun map
echo old_name-of-file.mdb              old structures?
echo obj_name-of-file.mdb              Small objects?
echo yy                                ?
echo ym                                ?
.                                  
echo --EDF 6--   
echo.                                  
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
echo.                                  
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
goto loop

:JsonAsm
for /r "%CD%" %%a in (*.json, *.asm) do "%address%\mission_tools_1.62.exe" "%%~dpnxa"
goto loop

:bvmtxt
for /r "%CD%" %%a in (*.bvm) do "%address%\BVM_Builder\EDF Tools.exe" "%%~dpnxa"
goto loop

:txtbvm
for /r "%CD%" %%a in (*.txt) do "%address%\BVM_Builder\EDF Tools.exe" "%%~dpnxa"
goto loop

:addresses
echo #define LoadResource( 2C(0x0D,
echo #define LoadMap( 2C(0x0E,
echo #define SetMap( 2C(0x64,
echo #define SpawnPlayer( 2C(0x3E8,
echo #define PlayBGM( 2C(0x12C,
echo #define FadeBGM( 2C(0x12D,
goto loop

:MAC
echo Opening Map editor : To go back, Close and reopen this file
"%address%\MACfileTool_v1.0.0.exe" "%%~dpnxa"
goto loop

:MACVIEW
echo comming soon . . .
::"%address%\EDF-MDB-VIEWER.exe"
goto loop

:MissionEditor
echo comming soon . . .
::"%address%\EDF-MissionEditor.exe"
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
    goto loop
)
    echo EAT is not detected . . . You will need to choose what version of EAT you want to unpack please go to this drive address
    echo "%address%\EAT\"
    goto loop

:sound-notes

::=================================================================

:UE-keys
echo This is the AES keys for the EDF Unreal Engine built games, Example Earth Defense ^| Iron Rain, World Brothers, And any future releases
echo.
echo.
echo Pulling Model Assets? {https://www.gildor.org/en/projects/umodel}, right-click "All packages" then export folder content
echo With blender usage in mind. 
echo.
echo.
echo Skeletal ^& Mesh type has to be any option bellow
echo (glTF 2.0)     Blender  (Blender has this installed by default)              (Recommended)
echo                3DS MAX  (N/A or no info)                                     
echo.                                                                             
echo (MD5)                                                                        (it only exports the mesh only NOT Recommended)
echo.                                                                             
echo ActorX-(PSK)   Blender  (https://github.com/Befzz/blender3d_import_psk_psa)  (Recommended)
echo                3DS MAX  (https://www.gildor.org/projects/unactorx)           (Recommended)
echo.
echo And textures could be any option below (FYI EVERY IMAGE IMPORTED INTO BLENDER USE THE NON-COLOR OPTION IN THE COLOR SPACE)
echo (TGA Uncompressed) Biggest, with good alpha layer,  (But why????????)
echo (TGA)              Bigger, with a good alpha layer, (Recommend)
echo (PNG)              Smaller, Poor alpha layer,       (Recommended)
echo (DDS)              Smallest, "VG" compression,      (Blender DOES NOT SUPPORT DDS convert them to EXR(its included in this file))
echo.
echo Game                 ^|UE_Version                      ^|AES keys                                                             ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo EDF:IR               ^|{4.19}                          ^|0xCF812E306958EF92C90EA4F251994FE747306B7B666940FBE2ED711139EDB65E   ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo EDF:WB               ^|{4.24}                          ^|0x4055102382008C1D820548683D055CC84B03164B43EDF64A80629B384A4D8DA4   ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo EDF:HQ               ^|                                ^|TO SAVE OUR MOTHER EARTH FROM ANY ALIEN ATTACK                       ^|
echo ---------------------^|--------------------------------^|---------------------------------------------------------------------^|
echo. 
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
echo comming soon
goto loop
set DFS=0
set /p Source=What file?:
if %DFS% == 1 goto DFSL
set /p Destination=Where To Place the file?:
set DFS = 1
:DFSL
move %Source% *.* %Destination%
set /p choose=Have another file to move?:
goto loop

:==================================================================

:EGG

echo TO SAVE OUR MOTHER EARTH FROM ANY ALIEN ATTACK,
Timeout /t 3 /nobreak >nul
echo FROM VICIOUS GIANT INSECTS WHO HAVE ONCE AGAIN COME BACK,
Timeout /t 4 /nobreak >nul
echo WE'LL UNLEASE ALL OUR FORCES, 
Timeout /t 2 /nobreak >nul 
echo WE WON'T CUT THEM ANY SLACK,
Timeout /t 4 /nobreak >nul
echo.
echo THE E.D.F. DEPLOYS!
echo.
Timeout /t 3 /nobreak >nul
echo OUR SOLDERS ARE PREPARED FOR ANY ALIEN THREATS,
Timeout /t 3 /nobreak >nul
echo THE NAVY LAUNCHES SHIPS, 
Timeout /t 2 /nobreak >nul 
echo THE AIR FORCE SENDS THEIR JETS,
Timeout /t 3 /nobreak >nul
echo AND NOTHING CAN WITHSTAND OUR FIXED BAYONETTES,
Timeout /t 4 /nobreak >nul
echo.
echo THE E.D.F. DEPLOYS!
echo.
Timeout /t 3 /nobreak >nul
echo OUR FORCES NOW HAVE DWINDLED AND WE PULL BACK TO REGROUP,
Timeout /t 4 /nobreak >nul
echo THE ENEMY HAS MULIPLIED AND FORMED A MASSIVE GROUP,
Timeout /t 4 /nobreak >nul
echo WE BETTER BEAT THESE BUGS BEFORE WE'ER ALL TURENED TO SOUP,
Timeout /t 4 /nobreak >nul
echo.
echo THE E.D.F. DEPLOYS!
echo.
goto loop

::=================================================================

:exit
exit
:y
cls