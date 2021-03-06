#!/bin/bash
# Author: A. Wolters
# Date: 9 march 2020
# A script to find all the 'de' words in a textfile and count them.

# Note!
# To make this shelscript work, you must run this script as the first command in the terminal,
# and add an .txt file as a second argument in the terminal, under this text I will show an example how it should look
# in the terminal.
# Example:
# (@Username ~ % Milestone5.sh rug_wiki.txt)


# Temporary files
Text_file="$1"

# First we display the textfile using (cat), after that we use (grep -Eo 'w+') to place each word on a seperate line.
# After that we count the occurance of 'de' using (grep -c) and to make sure we count uppercase and lowercase,
# we use (grep -i).
cat "$Text_file" | grep -Eo "\w+" | grep -ic "de"
