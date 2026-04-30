#!/bin/bash
#Header

      #Purpose: Creating scripts in bash enviroment using functions
      #creator: obrein kachiri
      #version:2
      #Date:30.04.2026
      #Copyright

#body of script  

check_disk()   #function to check disk space

{   
local allowable=100
local used=$(df / | grep / | awk '{print $5}' | sed 's/%//')
echo $used


if [[ $used -gt allowable ]]
then 

      echo "disk is getting low"
else

      echo "No need for concern"

fi
} # closing block of function


check_disk   # ccalling function to check disk space
