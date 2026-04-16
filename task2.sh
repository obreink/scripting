#!/bin/bash
#Header

      #Purpose: Creating scripts in bash enviroment
      #creator: obrein kachiri
      #version:1
      #Date:16.04.2026
      #Copyright

#body of script  


echo "-----------------SELECT OPTION---------------------------------"
echo "1.Print the current Directory"
echo "2.Diplay files in directory"   
echo "3.Get Host Name"
echo "4.Create Directory"
echo "5.Check Directory Exists"

read -p "Enter Option 1-4 " option
if [[ $option -eq 1 ]]
then
     pwd
elif [[ $option -eq 2 ]]
then
     ls -l
elif [[ $option -eq 3 ]]
then

    hostname
elif [[ $option -eq 4 ]]
then 
    read -p "Enter Directory Name" dirname
    mkdir $dirname
     echo "$dirname has been created.."
       

elif [[ $option -eq 5 ]]
then
     read -p"Enter Directory Name" directory
     if [[ -d $directory ]]
      then 
           echo "Directory Exists"
     else
           echo "Directory does not Exist"

      fi
else
    echo "Invalid Option"

fi


