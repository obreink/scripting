#!/bin/bash
#Header

      #Purpose: Creating scripts in bash enviroment
      #creator: obrein kachiri
      #version:1
      #Date:16.03.2026
      #Copyright

#body of script  

read -p "Enter number" num


if [[ $num -gt 2 ]]
then
   echo "$num is greater than 2"

else
    echo "$num is not greater"
fi

