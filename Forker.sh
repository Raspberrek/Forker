forks_pathes=("chia" "greendoge" "ext9" "doge-chia" "stor" "cryptodoge" "silicoin" "hddcoin" "flora" "stai" "flax" "maize" "gold" "profit" "socks" "btcgreen" "apple" "taco")
forks_triggers=("chia" "greendoge" "chia" "dogechia" "stor" "cryptodoge" "sit" "hddcoin" "flora" "stai" "flax" "maize" "gold" "profit" "socks" "btcgreen" "apple" "taco")
action=("show -s" "farm summary" "start farmer") #action on triggers

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
	  echo -e "\e[1;32m| 3. Start all farmers  |\e[0m"
	  echo -e "\e[1;32m| 4. Start one farmer   |\e[0m"
	 #echo -e "\e[1;32m| 5.--------------------|\e[0m"
  	 #echo -e "\e[1;32m| 6.--------------------|\e[0m"
	 #echo -e "\e[1;32m| 7.--------------------|\e[0m"
	  echo -e "\e[1;32m-------------------------\e[0m"
	  echo -e "Your option: "
	  read action_choice
	  
	if [ $action_choice = 1 ] ; then
		echo "Plots size summary:"

	elif [ $action_choice = 2 ] ; then
		echo "Database sync time:"
	
	elif [ $action_choice = 3 ] ; then
		echo "Starting farmers... "

	elif [ $action_choice = 4 ] ; then #run specyfied farmer
		echo "Available farmers:"
		for((j=0; j<${length_fp}; j++));
			do
				echo -e "$j ${forks_triggers[$j]}"
			done
		echo "Select farmer: "
		read fork_number
		if [ ${forks_pathes[$fork_number]} = "chia" ] ; then 
			cd /usr/lib/266
		elif [ ${forks_pathes[$fork_number]} = "doge-chia" ] ; then 
			cd /usr/lib/266/doge-chia
		elif [ ${forks_pathes[$fork_number]} = "cryptodoge" ] ; then 
			cd /usr/lib/266/cryptodoge
		else
			cd /usr/lib/266/${forks_pathes[$fork_number]}-blockchain/
		fi
		. ./activate
		${forks_triggers[$fork_number]} ${action[2]} #start farmer
		echo -e "Press any key to continue...\n"
		read k
		cd /opt/Forker
		./Forker.sh
	else
		echo "You selected wrong option, provide number again:"
	fi  
	for((j=0; j<${length_fp}; j++));
		do
		echo -e "\n ${forks_pathes[$j]}:" | lolcat #coloring fork name wchih be used
		if [ ${forks_pathes[$j]} = "chia" ]
		then
		cd /usr/lib/266
		elif [ ${forks_pathes[$j]} = "doge-chia" ] 
		then
		cd /usr/lib/266/doge-chia
		elif [ ${forks_pathes[$j]} = "cryptodoge" ] 
		then
		cd /usr/lib/266/cryptodoge
		else
		cd /usr/lib/266/${forks_pathes[$j]}-blockchain/ #use your right path before fath variable
		fi	
		. ./activate #standard way to run trigger
		${forks_triggers[$j]} ${action[$action_choice-1]}  | grep "Total size of plots:\|Time:\|Daemon\|_charvester\|_farmer\|_full_node\|_wallet"
	done
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

	  fi
	  #./temp_monitor.sh;read k;
	  #./Forker.sh
	;;
  3) echo -e "Closing app...\nDone \n";;
  *) echo -e "Invalid option, provide number again"; ./Forker.sh;;
  esac
