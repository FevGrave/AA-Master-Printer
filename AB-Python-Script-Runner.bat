@echo off
setlocal enabledelayedexpansion

TITLE AB-Python-Script-Runner.bat
MODE 150,30

:start
if not exist "AA-UserSettings-Porter.py" (
    echo Created the User's preferred settings into a Python script for later useage when ever AA-Master-Printer.bat gets a new update!
    ren AA-UserSettings-Porter.txt AA-UserSettings-Porter.py
    python AA-UserSettings-Porter.py
    timeout 120
    goto exit
)
if exist "AA-UserSettings-Porter.py" (
    python AA-UserSettings-Porter.py
    echo Printer GO BRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    DEL AA-UserSettings-Porter.txt
    timeout 15
)

:exit
exit
:y
cls
