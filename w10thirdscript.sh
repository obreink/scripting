#!/bin/bash
#Header

      #Purpose: Creating scripts in bash using positional parameters
      #creator: obrein kachiri
      #version:1
      #Date:23.03.2026
      #Copyright

#body of script  


echo "Enter first value"
read number1



echo "Enter second value " 
read number2

total = $((number1*number2 | bc))  

