#!/bin/bash
#Header

      #Purpose: Creating scripts in bash using positional parameters
      #creator: obrein kachiri
      #version:1
      #Date:23.03.2026
      #Copyright

#body of script  

read -p "Enter first value" num1

read -p "Enter second value " num2

total = $((num1*num2 | bc))  

