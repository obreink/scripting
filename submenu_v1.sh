#!/bin/bash
#Header

      #Purpose: Creating A linux Menu System in Bash using functions ,grep and awk and conditional statement
      #creator: Tinevimbo brein kachiri
      #version:1
      #Date:03.04.2026
      #Copyright

#body of script  
while true 

do
       echo "--------------Welcome TO Linux Ubuntu Menu-------------------------------------"
       echo "1.System Information"
       echo "2.Disk Information"
       echo "3.File Management"
       echo "4.User Management"

       read -p "Select Menu Option" option

       case $option in

        1) System_Information ;;

        2) Disk_Management ;;


        3) File_Management ;;


        4) User_Management ;;


        *)

        echo "Invalid option.  choose Again" ;;

        
       esac


System_Information() {

      echo "------------System Information---------------------------------------------"
      echo "1. Hostname "
      echo "2. Username"
      echo "3. Kernel Version"
      echo "4. Users Logged in"
      echo "5. Date "

      read -p "Choose Option" option2

       
       case $option1 in

        1)  hostname ;;

        2)  whoami ;;

        3)  ken_version=$(grep  "version " /proc/version | awk '{print $2}')

        
        echo "$Ken_version"
        
        ;;

        4) who ;;



        5) echo "Date & Time: $(date)"

        
       *)

          echo "Invalid Option"
          ;;
           
       esac
}

Disk_Management(){   #function to call the disk management sub menu


   echo "--------------Disk Management----------------------------------------------------"
   echo "1. Disk Usage"
   echo "2. Memory Usage"
   echo "3. CPU Top Processes"

   read -p "Select Option" option3

   case $option3 in 

   1)    freememory=`free -m | awk 'NR==2 {print $4}'`

        if [[ $freememory -lt 1000 ]] 
         then

         echo "Storage Space low. Delete some Files"

       else
           echo "Free Memory $memory"

   2)  memoryusage=free -h | awk '/Mem:/ {print "Memory used: ", $3 } '
      echo "$memoryusage"

   3)


   *)
       echo "Invalid option"
      
   




   esac
}



File_Management() {

    echo "------------------File Management------------------------------------------"
    echo "1. Create Text File"
    echo "2. Create A Directory"
    echo "3. Backup Directory"

    read -p "Choose Option" option3
    case $option3 in

    1)  read -p "Enter Filename: " fname

     if [[ -f $fname ]] 
     then
          echo "File name already exists in this directory"

      else

          touch $fname
          echo "$fname.txt has been created"
    fi
    ;; 
    
    2)
       read -p "Enter Directory Name: " dirname

       if [[ -d $dirname  ]]
       then
           echo "Directory with that name already exits."
        else
            mkdir $dirname
            echo "$dirname has been created"
           
    fi
    ;;

    3)   
     read -p "Enter directory you wish to back up: " backup
     read -p "Enter directory location for backup: " backupfilepath

     if [[ -d "$backup" ]]
     then

          if [[ -d $backupfilepath ]]
          then
                  cp -r $backup/$backupfilepath
                  echo "Backup created successfully in: $backupfilepath"
            else
                echo "Backup destination does not exist."
             fi

      else
           echo "Backup File directory does not exist."
           
     fi

    
    
    
    
    ;;


   *)

    echo "Invalid Option"
     ;;


     esac
}

User_Management() {
     
    echo "----------------User Management----------------------------------------------"
    echo "1. Create A user"
    echo "2. Delete a user "
    echo "3. View Users "
    
     
    read -p "Choose Option" option4

    case $option4 in

      1) 
       read -p "Enter New Users Name" uname
       sudo adduser $uname

       echo " User $uname has been created"


      ;;
       2)

       read -p "Enter username to delete" deluser
       sudo deluser $deluser


       ;;


       3)

            users=grep '' /etc/passwd | awk -F : '{print $1}'
            echo "$users"       
       
       *)


       echo "Invalid Option"

       ;;


    esac






}




done

              
