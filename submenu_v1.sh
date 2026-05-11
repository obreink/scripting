#!/bin/bash
#Header

#Purpose: Creating A linux Menu System in Bash using functions ,grep and awk and conditional statement
#creator: Tinevimbo brein kachiri
#version:1
#Date:03.04.2026
#Copyright


System_Information() {

      echo "------------System Information---------------------------------------------"
      echo "1. Hostname "
      echo "2. Username"
      echo "3. Kernel Version"
      echo "4. Users Logged in"
      echo "5. Date "

      read -p "Choose Option: " option2

      case $option2 in

        1) hostname ;;
        2) whoami ;;
        3) 
           ken_version=$(awk '{print $3}' /proc/version)
           echo "$ken_version"
           ;;
        4) whoami ;;
        5) echo "Date & Time: $(date)" ;;
        *)
           echo "Invalid Option"
           ;;
      esac
}


Disk_Management() { #function for the sub menu part for the disk management 

   echo "--------------Disk Management----------------------------------------------------"
   echo "1. Disk Usage"
   echo "2. Memory Usage"
   echo "3. CPU Top Processes"

   read -p "Select Option: " option3

   case $option3 in 

   1)
        freememory=$(free -m | awk 'NR==2 {print $4}')  #assigning variable to enviroment variable to hold the free memory

        if [[ $freememory -lt 1000 ]]   #match statement to check if memory found is less than 1gb
        then
            echo "Storage Space low. Delete some Files"   
        else
            echo "Free Memory: $freememory GB"   #statement to run if the memory is above 1gb
        fi
        ;;
   
   2)
        memoryusage=$(free -h | awk '/Mem:/ {print "Memory used:", $3}')
        echo "$memoryusage"
        ;;
   
   3)
        top
        ;;
   
   *)   #option if the user enters a number that is noot betweeen 1 -3 
        echo "Invalid option"
        ;;
   esac
}


File_Management() {  #function to create a sub menu that will run inside the main Menu in the while loop 

    echo "------------------File Management-------------------------------"
    echo "1. Create Text File"
    echo "2. Create A Directory"
    echo "3. Backup Directory"

    read -p "Choose Option: " option3

    case $option3 in

    1)
        read -p "Enter Filename: " fname

        if [[ -f $fname ]]
        then
            echo "File name already exists in this directory"
        else
            touch "$fname"
            echo "File created successfully."
        fi
        ;; 
    
    2)
        read -p "Enter Directory Name: " dirname

        if [[ -d $dirname ]]
        then
            echo "Directory with that name already exists."
        else
            mkdir "$dirname"
            echo "Directory $dirname has been created "
        fi
        ;;

    3)
        read -p "Enter directory you wish to back up:" backup
        read -p "Enter directory  file location for backup:" backupfilepath
        if [[ -d "$backup" && -d "$backupfilepath" ]]
        then
             cp -r "$backup" "$backupfilepath"
              echo "Backup created successfully in: $backupfilepath"
        else
              echo "Directories do not exist."

       fi

        ;;
    
    *)
        echo "Invalid Option"
        ;;
    esac
}


User_Management() {  #function  to separate the program and print out a sub menu for user management
     
    echo "----------------User Management----------------------------------------------"
    echo "1. Create A user"
    echo "2. Delete a user"
    echo "3. View Users"
    
    read -p "Choose Option: " option4

    case $option4 in

      1)
        read -p "Enter New Users Name: " uname
        sudo adduser "$uname"
        echo "User $uname has been created"
        ;;
      
      2)
        read -p "Enter username to delete: " deluser
        sudo deluser "$deluser"
        ;;
      
      3)
        users=$(awk -F: '{print $1}' /etc/passwd)
        echo "$users"
        ;;
      
      *)
        echo "Invalid Option"
        ;;
    esac
}





while true  #unconditional statement to run as long the user is Running the main menu 
do
       echo "--------------Welcome TO Linux Ubuntu Menu-------------------------------------"
       echo "1.System Information"
       echo "2.Disk Information"
       echo "3.File Management"
       echo "4.User Management"

       read -p "Select Menu Option: " option

       case $option in

        1) System_Information ;;   #function name to call the system information sub menu in the loop
         2) Disk_Management ;;
        3)   File_Management ;;
        4)     
            User_Management ;;
        *)
           echo "Invalid option. Choose Again"   #wild case to run if you enters any number that is not 1 - 4
           ;; 
       esac

done
