#!/bin/bash
#Header

      #Purpose: Creating scripts in bash enviroment
      #creator: obrein kachiri
      #version:2
      #Date:16.03.2026
      #Copyright

#body of script  

num1=2
num2=4
total = $((num1*num2  | bc)) 

echo "The total of num1 and num2 is " $total

