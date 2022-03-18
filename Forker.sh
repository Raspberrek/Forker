echo "-----------------------" | lolcat
echo "What do you want to do?"
echo " 1.) Check temps"
echo " 2.) Check forks"
echo " 3.) Mount disks"
echo " 4.) Start all forks" 
echo " 5.) Start all, all"
echo " 6.) exit"
echo "Option: "
read n
case $n in

  1) ./temp_monitor2.sh;./Forker.sh;;
  2) ./check_all.sh;;
  3) ./mount_disks.sh;;
  4) ./start_all.sh;;
  5) ./start_all.sh; ./mount_disks.sh; sleep 75; ./check_all.sh;;
#echo "no implemented yet, sorry!";;  
*) echo -e "Closing app...\nDone \n";;
  	esac

