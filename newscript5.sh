#!/bin/bash
#Header

      #Purpose: Creating scripts in bash enviroment wit while loops
      #creator: obrein kachiri
      #version:1
      #Date:26.03.2026
      #Copyright

#body of script  

x=10  #assigning value to variable

while [ $x  -lt 1 && $x -gt 4 ] #conditional statement to check if variable is less than 50 

do 

echo this is line $x
((x++))

done

