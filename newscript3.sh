#!/bin/bash
#Header

      #Purpose: Creating scripts in bash enviroment
      #creator: obrein kachiri
      #version:1
      #Date:16.03.2026
      #Copyright

#body of script

for directory in JAN FEB MAR  #list of dicrectories

do

mkdir $directory
cd $directory

for file in [1..3]

   do

   touch week$file
   cd ..

   done

done

