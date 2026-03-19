#!/bin/bash
#Header

      #Purpose: Creating  directory using bash scripts
      #creator:  Tinevimbo obrein kachiri
      #version:1
      #Date:19.03.2026
      #Copyright

#body of script  

cd ~    #go to home directory
mkdir week9  # makes directory week9
cd week9     # goes into directory week9
touch weeek9file   # creates a txt file week9file
echo  "Todays date is $(date)">week9file   #writes text into the txt file

cp week9file backup  #makes a backup of the txt file

ls -l
