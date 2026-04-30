#!/bin/bash
#Header

      #Purpose: Using awk command
      #creator: obrein kachiri
      #version:1
      #Date:23.03.2026
      #Copyright

#body of script  




memory=`free -m | awk 'NR==2 {print $4}'`
echo $memory

if [[  $memory -lt 500 ]] && [[ $memory -gt 800 ]]
then

  echo "Free Memory below 500mb"

else
    echo "Delete some files .Storage space running out"


fi
