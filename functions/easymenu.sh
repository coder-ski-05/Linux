#!/bin/bash

menu() {

echo "

Welcome to the easymenu system!
*******************************

1) disk usage
2) print current ip address
3) exit program

"

read -p "Choose Option destiny -> " opt

case $opt in
		1)		clear
				df -h 
				read -p "Press enter to continue"
				menu ;;
		2)		clear
				ifconfig
				read -p "Press enter to continue"
				menu ;;
		3)		clear
				exit ;;
		*)		echo "Invalid option"
				menu ;;
esac

}

menu
