import os

# Check if AA-UserSettings-Porter.txt file exists
settings_file_path = "AA-UserSettings-Porter.txt"
if os.path.exists(settings_file_path):
    # Read existing settings from the file
    with open(settings_file_path, "r") as settings_file:
        lines = settings_file.readlines()
        background_color = lines[0].split(": ")[1].strip()
        text_color = lines[1].split(": ")[1].strip()
        text_color_escape = lines[2].split(": ")[1].strip()
        sub_color_escape = lines[3].split(": ")[1].strip()
        file_path = lines[4].split(": ")[1].strip()
        length = lines[5].split(": ")[1].strip()
        height = lines[6].split(": ")[1].strip()
else:
    # User input for background and text color
    background_color = input(f"\nEnter the background color 0-9 to A-F                   (default is 0): ")
    if background_color == "":
        background_color = "0"
        print("Default Background Color Used")

    text_color = input("Enter the main text color 0-9 to A-F                    (default is A): ")
    if text_color == "":
        text_color = "A"
        print("Default Main Text Color Used")

    text_color2 = input("Enter the sub text color 0-9 to A-F                     (default is C): ")
    if text_color2 == "":
        text_color2 = "C"
        print("Default Sub Text Color Used")

    # Map text color values to escape sequences
    color_mapping = {
        '0': "%esc%[30m",
        '1': "%esc%[34m",
        '2': "%esc%[32m",
        '3': "%esc%[36m",
        '4': "%esc%[31m",
        '5': "%esc%[35m",
        '6': "%esc%[33m",
        '7': "%esc%[37m",
        '8': "%esc%[90m",
        '9': "%esc%[94m",
        'A': "%esc%[92m",
        'B': "%esc%[96m",
        'C': "%esc%[91m",
        'D': "%esc%[95m",
        'E': "%esc%[93m",
        'F': "%esc%[97m"
    }

    # Set the text color based on user input
    text_color_escape = color_mapping.get(text_color, "%esc%[92m")
    sub_color_escape = color_mapping.get(text_color2, "%esc%[91m")

    # Set the file path to the current directory
    file_path = os.getcwd()

    # User input for window size
    length = input("Enter the window length (default is 150): ")
    if length == "":
        length = "150"
        print("Default Length Used")

    height = input("Enter the window height (default is 60): ")
    if height == "":
        height = "60"
        print("Default Height Used")

    # Save user settings to file
    settings_file = open(settings_file_path, "w")
    settings_file.write(f"Background Color: {background_color}\n")
    settings_file.write(f"Text Color: {text_color}\n")
    settings_file.write(f"Text Color Escape: {text_color_escape}\n")
    settings_file.write(f"SUB Text Color Escape: {sub_color_escape}\n")
    settings_file.write(f"File Path: {file_path}\n")
    settings_file.write(f"Window Length: {length}\n")
    settings_file.write(f"Window Height: {height}\n")
    settings_file.write(f"Text Color Values Guide: {color_mapping}\n")
    settings_file.close()

# Update AA-Master-Printer.bat with the new settings
a_file = open("AA-Master-Printer.bat", "r")
list_of_lines = a_file.readlines()
a_file.close()

list_of_lines[4] = "color " + background_color + text_color + "\n"
list_of_lines[5] = "set address=" + file_path.replace("\\", "\\") + "\n"
list_of_lines[6] = "MODE " + length + "," + height + "\n"
list_of_lines[7] = "@for /f %%a in ('echo prompt $E^| cmd') do set \"esc=%%a\" REM For VT100 escape codes for batch color\n"
list_of_lines[8] = 'set "Reset=' + text_color_escape + '"\n'
list_of_lines[9] = 'set "SUB=' + sub_color_escape + '"\n'

a_file = open("AA-Master-Printer.bat", "w")
a_file.writelines(list_of_lines)
a_file.close()

print(f"\nNow you can try the AA-Master-Printer batch file or copy it to any ROOT.CPK Subfolder to be used to mod any files"
      f"\nAlso type 'help' within AA-Master-Printer main menu to see if the internal var is different to the default address"
      f"\nF:\SteamLibrary\steamapps\common\EARTH DEFENSE FORCE 5\Mods\TOOLS"
      f"\nIf not delete the newly make txt file and try again same can be said to color pallet!")