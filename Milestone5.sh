#!/bin/bash
# Author: A. Wolters
# Date: 9 march 2020
# A script to find all the 'de' words in a textfile and count them.

# Note!
# To make this shelscript work, you must run this script as the first command in the terminal,
# and add an .txt file as a second argument in the terminal.

# Temporary files
TEXTFILE="$1"

# First we display the textfile using (cat), after that we use (grep -Eo 'w+') to place each word on a seperate line.
# After that we count the occurance of 'de' using (grep -c) and to make sure we count uppercase and lowercase,
# we use (grep -i).
cat $TEXTFILE | grep -Eo '\w+' | grep -ic 'de'
