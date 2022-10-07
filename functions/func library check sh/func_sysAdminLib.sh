#!/bin/bash

./func_library.lib
#../func_library.lib
#source ./func_library.lib

main() {

echo "Linux SysAdmin Toolkit"
echo "**********************"
echo
echo "1) Disk Usage"
echo "2) Network Info"
echo "3) Exit"
echo
read -p "Selection: >" selection
case $selection in
		1) echo
		   disky
		   echo
		   main ;;
		2) echo
		   netty
		   echo
		   main ;;
		3) clear
		   exit ;;
		*) echo
		   echo "Invalid Selection."
		   menu ;;
esac
}

clear
main
