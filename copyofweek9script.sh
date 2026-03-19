#!/bin/bash
#Header

      #Purpose: Creating  directory using direct assignment  variables
      #creator:  Tinevimbo obrein kachiri
      #version:1
      #Date:19.03.2026
      #Copyright

#body of script  
#


#Direct Assignment of variables
wk=week9
w9=week9file.txt
bk=week9filebackup.txt



cd ~    #go to home director

mkdir $wk  # makes directory week9
echo "$wk directory has been created"

cd $wk    # goes into directory week9

touch $w9   # creates a txt file week9file
echo  "Todays date is $(date)">$wk   #writes text into the txt file

cp $w9 $bk  #makes a backup of the txt file

echo "your directory structure for week9 is complete"

