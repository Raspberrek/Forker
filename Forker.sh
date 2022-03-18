forks_pathes=("silicoin" "hddcoin" "flora" "stai" "flax" "maize" "greendoge" "gold" "profit")
forks_triggers=("sit" "hddcoin" "flora" "stai" "flax" "maize" "greendoge" "gold" "profit")
action=("show -s" "farm summary" "wallet show") #action on triggers

length_fp=${#forks_pathes[@]} #length of forks pathes array

#main view of script
clear
echo -e "\e[1;32m-----------------------\e[0m"
echo -e "\e[1;32m--------\e[1;36mOptions:\e[1;32m-------\e[0m"
echo -e "\e[1;32m| 1.) Forks actions   |\e[0m"
echo -e "\e[1;32m| 2.) Disk actions    |\e[0m" 
echo -e "\e[1;32m| 3.) Exit            |\e[0m"
echo -e "\e[1;32m-----------------------\e[0m"
echo -e "Your option: "
read n
case $n in
  1) 

	  clear
	  echo -e "\e[1;32m-----------------------\e[0m"
	  echo -e "\e[1;32m---\e[1;36mWhat to do now?\e[1;32m-----\e[0m"
	  echo -e "\e[1;32m| 1. Database sync time|\e[0m"
	  echo -e "\e[1;32m| 2. Plots size summary|\e[0m"
	  echo -e "\e[1;32m| 3. Get address       |\e[0m"
	  echo -e "\e[1;32m------------------------\e[0m"
	  echo -e "Your option: "
	  read c
	  for((j=0; j<${length_fp}; j++));
	do
		echo -e "\n ${forks_pathes[$j]}: \n" | lolcat
		cd /usr/lib/266/${forks_pathes[$j]}-blockchain/
		. ./activate
		${forks_triggers[$j]} ${action[$c-1]} | grep "Total size of plots"
	done
	;;
  2) echo -e "\e[1;32m--------------------- --\e[0m"
	  echo -e "\e[1;32m--------\e[1;36mOptions:\e[1;32m--------\e[0m"
	  echo -e "\e[1;32m| 1.) Check *C         |\e[0m"
	  echo -e "\e[1;32m| 2.) S.M.A.R.T test   |\e[0m" 
	  echo -e "\e[1;32m| 3.) Exit             |\e[0m"
	  echo -e "\e[1;32m-----------------------\e[0m"
	  read z
	  ./temp_monitor2.sh;read k;./Forker.sh;;
  #echo "no implemented yet, sorry!";;  
  3) echo -e "Closing app...\nDone \n";;
  *) echo -e "Invalid option, provide number again"; ./Forker.sh;;
  esac
