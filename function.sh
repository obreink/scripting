#!/bin/bash
#Header

      #Purpose: Creating scripts in bash enviroment using functions
      #creator: obrein kachiri
      #version:1
      #Date:30.04.2026
      #Copyright

#body of script  

   
allowable=100
used=$(df / | grep / | awk '{print $5}' | sed 's/%//')
echo $used


if [[ $used -gt allowable ]]
then 

      echo "disk is getting low"
else

      echo "No need for concern"

fi
