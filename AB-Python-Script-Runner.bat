@echo off
setlocal enabledelayedexpansion

TITLE AB-Python-Script-Runner.bat
MODE 150,30
@for /f %%a in ('echo prompt $E^| cmd') do set "esc=%%a" 

:start
if not exist "AA-UserSettings-Porter.txt" (
    echo BLACK cannot show this effect 0 Color Code%esc%[0m 
    echo DARK_BLUE %esc%[34m                    1 Color Code%esc%[0m 
    echo DARK_GREEN %esc%[32m                   2 Color Code%esc%[0m 
    echo DARK_CYAN %esc%[36m                    3 Color Code%esc%[0m 
    echo DARK_RED %esc%[31m                     4 Color Code%esc%[0m 
    echo DARK_MAGENTA %esc%[35m                 5 Color Code%esc%[0m 
    echo DARK_YELLOW %esc%[33m                  6 Color Code%esc%[0m 
    echo DARK_WHITE %esc%[37m                   7 Color Code%esc%[0m 
    echo BRIGHT_BLACK %esc%[90m                 8 Color Code%esc%[0m 
    echo BRIGHT_BLUE %esc%[94m                  9 Color Code%esc%[0m 
    echo BRIGHT_GREEN %esc%[92m                 A Color Code%esc%[0m 
    echo BRIGHT_CYAN %esc%[96m                  B Color Code%esc%[0m 
    echo BRIGHT_RED %esc%[91m                   C Color Code%esc%[0m 
    echo BRIGHT_MAGENTA %esc%[95m               D Color Code%esc%[0m 
    echo BRIGHT_YELLOW %esc%[93m                E Color Code%esc%[0m 
    echo WHITE %esc%[97m                        F Color Code%esc%[0m 
    python AA-UserSettings-Porter.py
    timeout 15
    :exit
    cls
)
if exist "AA-UserSettings-Porter.txt" (
    python AA-UserSettings-Porter.py
    echo Printer GO BRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    timeout 15
    :exit
    cls
)