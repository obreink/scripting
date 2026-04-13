#!/bin/bash
#Header

      #Purpose: Creating scripts in bash enviroment
      #creator: obrein kachiri
      #version:1
      #Date:16.03.2026
      #Copyright

#body of script  

read -p "Enter number" num


if [[ $num -lt 50 ]]
then
   echo "$num is less than 50"

elif [[ $num  -gt 50 ]]
then
   echo "$num is greater than 50 "
   
fi

