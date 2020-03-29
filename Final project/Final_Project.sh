#!/bin/bash
# Author: A. Wolters
# Date: 23 march 2020
# A script to find specific columns of multiple CSV files and make a combined file with these columns.

# Note!
# To make this shelscript work, you must run this script as the first command in the terminal,
# and add an folder with the CSV files in it as a second argument in the terminal.
# Under this text I will show an example off how it should look in the terminal.

# Example in terminal, using the Data_Csv Files folder:
# @Username ~ % Final_project.sh Data_file

# We first iterate over each csv file in the folder with a for loop, and with the cut command we select the first to rows
# of the CSV file. After that, we look with grep -e command for (G Handel), the column we are looking for.
# And we do this again for the date of each file (Perioden: .... .e kwartaal). After that,
# we create a file with all the specific columns and name it: (G_handel.csv)

for csv in "$1"/*.csv
do
  cut -d';' -f1,2 "$csv" | grep -e 'G Handel' -e 'Perioden: .... .e kwartaal' >> G_handel.csv
done
