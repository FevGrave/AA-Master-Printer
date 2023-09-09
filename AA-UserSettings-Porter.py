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
        file_path = lines[3].split(": ")[1].strip()
        length = lines[4].split(": ")[1].strip()
        height = lines[5].split(": ")[1].strip()
else:
    # User input for background and text color
    background_color = input("Enter the background color 0-9 to A-F (default is 0): ")
    if background_color == "":
        background_color = "0"

    text_color = input("Enter the text color 0-9 to A-F       (default is A): ")
    if text_color == "":
        text_color = "A"

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
    text_color_escape = color_mapping.get(text_color, "%esc%[97m")

    # Set the file path to the current directory
    file_path = os.getcwd()

    # User input for window size
    length = input("Enter the window length (default is 150): ")
    if length == "":
        length = "150"

    height = input("Enter the window height (default is 60): ")
    if height == "":
        height = "60"

    # Save user settings to file
    settings_file = open(settings_file_path, "w")
    settings_file.write(f"Background Color: {background_color}\n")
    settings_file.write(f"Text Color: {text_color}\n")
    settings_file.write(f"Text Color Escape: {text_color_escape}\n")
    settings_file.write(f"File Path: {file_path}\n")
    settings_file.write(f"Window Length: {length}\n")
    settings_file.write(f"Window Height: {height}\n")
    settings_file.write(f"Text Color Values Guide: {color_mapping}\n")
    settings_file.close()

# Update AA-Master-Printer.bat with the new settings
a_file = open("AA-Master-Printer.bat", "r")
list_of_lines = a_file.readlines()
a_file.close()

list_of_lines[6] = "color " + background_color + text_color + "\n"
list_of_lines[7] = "REM " + text_color_escape + " Reset's RED mess text color or any other colored words\n"

default_value = "%esc%[92m"
for i in range(len(list_of_lines)):
    list_of_lines[i] = list_of_lines[i].replace(default_value, text_color_escape)

list_of_lines[8] = "set address=" + file_path.replace("\\", "\\") + "\n"
list_of_lines[9] = "MODE " + length + "," + height + "\n"

a_file = open("AA-Master-Printer.bat", "w")
a_file.writelines(list_of_lines)
a_file.close()