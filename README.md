# DOWNLOAD LINK
https://github.com/FevGrave/AA-Master-Printer/releases/download/1.0.343.20/Tools.zip

# AA-Master-Printer Installation Guide

## Software Prerequisites

Before you begin the installation of the AA-Master-Printer toolset, ensure you have the following software installed on your computer:

- **Python 3**: The scripts and tools within the AA-Master-Printer package are developed for Python 3. Ensure you have Python 3 installed on your system to run these scripts successfully. Download the latest version of Python 3 from [the official Python website](https://www.python.org/downloads/). During installation, remember to check the option to add Python to your system's PATH to make it easily accessible from the command line.

## 1. Setup and Configuration

To set up the AA-Master-Printer toolset for modding, follow these streamlined steps for a hassle-free start:

- **Python 3 Installed**: 
- **Extract All Zip Contents**: Ensure you extract all downloaded tools and scripts to a directory easily accessible for future use. This organization is crucial for the smooth operation of the modding tools.
- **Initialize Settings with AB-Python-Script-Runner.bat**: Running the AB batch file will automatically start a Python script (`AA-UserSettings-Porter.py`), which creates or updates the `AA-UserSettings-Porter.txt` file. This file is essential for saving your settings, which will be applied to update newer versions of `AA-Master-Printer.bat` seamlessly.
- **Deploy AA-Master-Printer.bat**: Once your settings are configured, copy the `AA-Master-Printer.bat` file to any location within the dumped Root.CPK folder of your game. This flexibility allows you to mod the game from various points within its directory structure.
- **Verify Setup with 'help' Command**: To ensure everything is set up correctly, run the 'help' command within the `AA-Master-Printer.bat` interface. This command tests if the internally set address value correctly points back to the directory where all the tools are located, confirming the toolset is ready to use.

While a text editor is no longer needed for the initial setup, it remains a valuable tool for various tasks, such as editing configuration files or creating mods. Having a reliable text editor at hand will enhance your modding workflow.

## 2. Extra Functions Requirements (Optional)

For additional functionality, consider installing the following:

- **7-Zip**: Needed for unpacking E.A.T. versions. Download from [7-Zip's official site](https://www.7-zip.org/download.html).
- **ImageMagick**: Required for specific image conversion scripts. Get it from [ImageMagick's download page](https://imagemagick.org/script/download.php).
- **Foobar2000**: This program can play A.W.B. files with an addon. Download Foobar2000 [here](https://www.foobar2000.org/download) and the addon [here](https://www.foobar2000.org/components/view/foo_input_vgmstream).

## 4. Installation Steps

(Detailed installation steps based on the revised section #1 information)

## 5. Credits and Contributions

A heartfelt thanks to all the tool creators and contributors in the modding community. Your tools and insights are invaluable:

- **aelbannan#1388**: For the Aelbannans Direct SGO Editor.
- **AUK233 (A.K.A. C1CTWC)**: Contributions to EDF Tools.
- **Big Racer#2799**: Creator of Big Racer's Weapon Builder.
	No longer supports tool and has Listed Unfinished Features, Bellow
                        "Not sure if that's a comprehensive list of what needed to be fixed or finished."
                        - There's also a lot of info on the ammo class custom parameters that isn't on the wiki
                        - Import & export weapons
                        - Wing diver weapon support (energy, weapon charge scaling parameters)
                        - Figure out fencer shields and heavy weapon inertia parameters
                        - Fencer melee weapons (I think I mostly figured them out)
                        - Accessories
                        - Bikes (pain)
                        - Plane airstrikes
                        - Firing animations
                        - Use-underground is actually for audio stuff, not the actual variable to spawn underground
- **BlueAmulet#0168**: Contributions to EDF Tools, & AA-Master-Printer.
- **FevGrave#5156**: Creator of AA-Master-Printer.bat, AB-Python-Script-Runner.bat, AA-UserSettings-Porter.txt, and the author of this README. Also contributed to the EDF5-Debug-Room-Tool-main.
- **KittopiaCreator#5577**: Developer of EDF Tools, StarCalculatorUI, and the EDF Model Viewer, invaluable resources for the EDF modding community.
- **ItsKaceyTime#2945**: Originator of the EDF5-Debug-Room-Tool-main. Currently on hiatus from the project but has plans to return and complete its development.
- **s.#8549**: The brain behind Another E.D.F. Tools and mission_tools_1.62.exe. Although no longer supporting the tool, their contributions remain foundational.
- **Souzooka#0188**: Has made significant contributions to E.D.F. Tools, enhancing the modding experience for many users.
- **stafern#3341**: The architect of MACfileTool & ScalingTool. 
 	"The tool has not been updated since its release. The reason is that further development would require
                        knowledge of other formats (MDB, R.A.B.), which I don't know much about, and I have little experience in
                        programming itself. However, this is not much of a tool, as it is just a tool that is a part of the
                        information on the wiki. I am hoping that someday someone with more knowledge will make a proper one
                        that works with Blender, etc."
- **ゆづる#3689 (A.K.A. Lizard)**: Crafted the Direct RAB editor (Unreleased). Currently, Lizard has gone dark, and the tool has been removed from the menu, leaving the community hopeful for a return.
- **Zeddy#6581**: The talent behind Sgott, providing essential modding utilities to the EDF modding community.
- **eternity (A.K.A. eternity)**: Creator of E.A.T. Despite attempts to reach out, there has been no response at the time of writing. The community eagerly awaits further support for the E.A.T. package on [eternity's GitHub](https://github.com/eterniti).

We're always looking for help to improve these tools. If you're interested in contributing, please reach out or submit a pull request on GitHub.

## 8. Legal and Usage Notice

This toolset is provided for educational and personal use to enhance your gaming experience. Please mod responsibly and adhere to the game's terms of service. Remember to always back up your game files before making any modifications.
