forks_pathes=("chia" "flora" "flax" "petroleum" "maize" "stai")
forks_triggers=("chia" "flora" "flax" "petroleum" "maize" "stai")
action=("show -s" "farm summary" "start farmer" "start farmer -r") #action on triggers

length_fp=${#forks_pathes[@]} #length of forks pathes array

#main view of script
clear
echo -e "\e[1;32m-------------------------\e[0m"
echo -e "\e[1;32m---------\e[1;36mOptions:\e[1;32m--------\e[0m"
echo -e "\e[1;32m| 1.) Forks actions     |\e[0m"
echo -e "\e[1;32m| 2.) Disk actions      |\e[0m" 
echo -e "\e[1;32m| 3.) Exit              |\e[0m"
echo -e "\e[1;32m-------------------------\e[0m"
echo -e "Your option: "
read n
case $n in
  1) 

	  #clear
	  echo -e "\e[1;32m-------------------------\e[0m"
	  echo -e "\e[1;32m------\e[1;36mForks actions\e[1;32m------\e[0m"
	  echo -e "\e[1;32m| 1. Database sync time |\e[0m"
	  echo -e "\e[1;32m| 2. Plots size summary |\e[0m"
	  echo -e "\e[1;32m| 3. Start farmer       |\e[0m"
	  echo -e "\e[1;32m| 4. Restart farmer     |\e[0m"
	 #echo -e "\e[1;32m| 5.--------------------|\e[0m"
  	 #echo -e "\e[1;32m| 6.--------------------|\e[0m"
	 #echo -e "\e[1;32m| 7.--------------------|\e[0m"
	  echo -e "\e[1;32m-------------------------\e[0m"
	  echo -e "Your option: "
	  read action_choice
	  
	  echo -e "Do you want run all forks, or just one?\n1: One \n2: All \n"
	read type
	#-------------------------------------------------------------------------
	if [ $type = 1 ] ; then #Run specyfied farmer
		echo -e "\e[1;32m-----------\e[0m"
		echo -e "\e[1;36mAvailable farmers:\e[0m"
		echo "\e[1;32m|\e[0m"
		for((j=0; j<${length_fp}; j++));
			do
				echo -e "\e[1;32m|-\e[0m$j -> ${forks_triggers[$j]}"
			done
		echo "-----------"
		echo "Select farmer: "
		read fork_number
		if [ ${forks_pathes[$fork_number]} = "doge-chia" ] ; then 
			cd /opt/doge-chia
		elif [ ${forks_pathes[$fork_number]} = "cryptodoge" ] ; then 
			cd /opt/cryptodoge
		else
			cd /opt/${forks_pathes[$fork_number]}-blockchain/
		fi
		. ./activate
		${forks_triggers[$fork_number]} ${action[$action_choice]} #start farmer / other command
		echo -e "Press any key to exit...\n"
		read k
		cd /opt
				exit
	#-------------------------------------------------------------------------
	elif [ $type = 2 ] ; then #Run all available farmers
	
		for((j=0; j<${length_fp}; j++));
			do
			echo -e "\n ${forks_pathes[$j]}:" | lolcat #coloring fork name wchih be used
			if [ ${forks_pathes[$j]} = "cryptodoge" ] 
			then
			cd /opt/cryptodoge
			else
			cd /opt/${forks_pathes[$j]}-blockchain/ #use your right path before fath variable
			fi	
			. ./activate #standard way to run trigger
			${forks_triggers[$j]} ${action[$action_choice-1]}  | grep "Total size of plots:\|Time:\|Daemon\|_charvester\|_farmer\|_full_node\|_wallet"
		done
	#-------------------------------------------------------------------------
	else
		echo "Wrong option"
	fi
       	     
	echo -e "Press any key to continue...\n"
	read k #waiting for action
	cd /opt/Forker
	./Forker.sh
	;;
  2) echo -e "\e[1;32m-------------------------\e[0m"
	  echo -e "\e[1;32m------\e[1;36mDisk actions:\e[1;32m------\e[0m"
	  echo -e "\e[1;32m| 1.) Check *C          |\e[0m"
	  echo -e "\e[1;32m| 2.) Mount disks       |\e[0m" 
	  echo -e "\e[1;32m| 3.) <- back           |\e[0m"
	  echo -e "\e[1;32m-------------------------\e[0m"
	  read z
	  if [ $z = 1 ] 
	  then 
		  ./subscripts/temp_monitor.sh
		  echo -e "Press any key to continue...\n"
		  read k #waiting for action
		  cd /opt/Forker
		  ./Forker.sh
	  elif [ $z = 2 ] 
	  then 
		  ./subscripts/mount_disks.sh
		  echo -e "Press any key to continue...\n"
		  read k #waiting for action
		  cd /opt/Forker
		  ./Forker.sh

	  elif [ $z = 3 ] 
	  then
		  ./Forker.sh	  
	  else 
		  echo "Invalid option, provide number again"
		  echo -e "Press any key to continue...\n"
		  read k #waiting for action
		  cd /opt/Forker
		  ./Forker.sh
	  fi
	;;
  3) echo -e "Closing app...\nDone \n";;
  *) echo -e "Invalid option, provide number again"; ./Forker.sh;;
  esac
