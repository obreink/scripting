#!/bin/bash
#Header

      #Purpose: Creating scripts in bash enviroment
      #creator: obrein kachiri
      #version:1
      #Date:20.04.2026
      #Copyright

#body of script  
while true 

do
       echo "--------------Welcome TO Linux Ubuntu Menu--------------------------"
       echo "1.Computer Information"
       echo "2.Hardware Information"
       echo "3.Network Information"
       read -p "Select Menu Option" option

       case $option in
           1)
            echo "------------Computer information---------------"
            echo "1.View Memory"
            echo "2.Get disk Space"
            echo "3.exit"

            read -p "Enter option " submenu
            case $submenu in 

                1) 
               
                 memory=`free -m | awk 'NR==2 {print $4}'`;;
                2) df;;
                3) break;;
                *)
                     echo "Invalid choice";;


                    
                   esac
                   ;;
            
            2)
               echo"----------------Hardware Information--------------"
               echo"1. Cpu Usage"
               read -p "Enter option" submenu2
               case $submenu2 in
                   
                    1) top;; 
                      
               esac
               ;;
          


            3)
               echo "------------------Network Information----------------"
               echo"1.show network address"
               read -p "Enter option"submenu3
               case $submenu3 in 
                    1) ip -4 addr show
               esac
               



               

esac
done

              
