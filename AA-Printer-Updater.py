a_file = open("AA-Master-Printer.bat", "r")
list_of_lines = a_file.readlines()

# '' anthing in those single quotes is the only you need to change

# 0 = Black       8 = Gray
# 1 = Blue        9 = Light Blue
# 2 = Green       A = Light Green
# 3 = Aqua        B = Light Aqua
# 4 = Red         C = Light Red
# 5 = Purple      D = Light Purple0
# 6 = Yellow      E = Light Yellow
# 7 = White       F = Bright White
list_of_lines[4] = "color " + '0A' + "\n"
# First is background color, Second is text color as in HEX
list_of_lines[5] = "set address=" + 'F:\SteamLibrary\steamapps\common\EARTH DEFENSE FORCE 5\Mods\TOOLS' + "\n"
# Set your path to the EDF 5 or 4.1 game file location
# IF ERRORS SHOW UP you will need to duplicate all backslashes
list_of_lines[6] = "MODE " + '150' + "," + '60' + "\n"
# Sets window size First is Length then it's Height

a_file = open("AA-Master-Printer.bat", "w")
a_file.writelines(list_of_lines)
a_file.close()