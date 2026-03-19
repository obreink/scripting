#!/bin/bash
#Header

      #Purpose: Creating  directory using positional parameters
      #creator:  Tinevimbo obrein kachiri
      #version:1
      #Date:19.03.2026
      #Copyright

#body of script  



cd ~    #go to home director

echo "enter the name of directory you wish to create"
read dname


echo "enter name of file you wish to create in directory"
read filename
 



mkdir $dname  # makes directory week9


cd $dname    # goes into directory week9

touch $filename   # creates a txt file week9file
echo  "Todays date is $(date)">filename   #writes text into the txt file

cp $filename week9backup.txt  #makes a backup of the txt file



