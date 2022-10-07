#!/bin/bash/

disk() {
df -h
}

network() {
ifconfig  wlp59s0 | grep inet | grep -v inet6| awk -F: '{print $1,$2}' | awk '{print $3}'
}

chrono() {
cal -y
}

menu() {
PS3=$(echo " " ; echo "@XXX||::::::::::> ")
select option in "Disk" "IP" "Calender" "Exit"
do
		case $option in
				"Disk")			echo
								echo "Disk Usage"
								echo "---------------------------------------"
								diskread -n1 -p "Press any key to continue..."
								clear
								menu;;
				"IP")			echo
								echo "IP Address"
								
								clear
								menu
								;;
				"Exit")			exit ;;
				*)				read -n1 -p "Invalid option. Press any key to try again..."
								clear
								menu
								;;
		esac
done
}

clear
