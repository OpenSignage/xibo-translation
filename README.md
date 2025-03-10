# Introduction
Welcome to the xibo translation
This repository support to generate language translation file.

# Discription
The original xibo translation is managed on launchpad.
You can provide and update translation.
If you customeize or extend xibo softwear, you need to create additional messages.
In this case, this program provide to merge originale translation file and new translation file, and create new language file.

#  Structure
source/[language].defalt.po is original .po file, downloaded from launchpad.
source/[language].po is new file contain new translation messages.
output is directory  created new  [launguage].mo file save inthis directory.

# Translate xibo messages
Run the folloing shell script file
./generate.sh [language]
