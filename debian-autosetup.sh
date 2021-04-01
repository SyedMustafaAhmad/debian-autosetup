#!/bin/sh
clear

# Title
printf "#################################################################\n"
printf "   AUTOMATIC SETUP FOR DEBIAN-BASED SYSTEMS\n"
printf "   AUTHOR: SYED MUSTAFA AHMED\n"
printf "   URL: https://github.com/SyedMustafaAhmad/debian-autosetup\n"
printf "#################################################################\n\n"

# List of Contents
printf "List of Contents:\n"
printf "\t1. Dependencies\n"
printf "\t2. Tools\n"
printf "\t3. Softwares\n\n"

printf "Do you want to continue [y/n]: "
read OPTION
clear

if [ $OPTION = "y" ] || [ $OPTION = "Y" ]
then
	# Header 1
	printf "#################################################################\n"
	printf "   INITIALIZING ...\n"
	printf "#################################################################\n\n"

	# Common aliases used in script
	# $INSTALL="sudo apt install"
	# $UPDATE="sudo apt update"
	# $UPDATE="sudo apt upgrade"
	# su

	clear
	# Header 2
	printf "#################################################################\n"
	printf "   UPDATING & UPGRADING SYSTEM ...\n"
	printf "#################################################################\n\n"

	# Update & Upgrade system first
	apt update && apt upgrade

	clear
	# Header 3
	printf "#################################################################\n"
	printf "   INSTALLING DEPENDECIES ...\n"
	printf "#################################################################\n\n"

	# Dependencies
	apt install xorg libx11-dev libxft-dev libxft2 libxrandr-dev libxi-dev libxinerama-dev

	clear
	# Header 4
	printf "#################################################################\n"
	printf "   INSTALLING TOOLS & SOFTWARES ...\n"
	printf "#################################################################\n\n"

	# Tools
	apt install gcc g++ vim htop git make

	# Softwares
	apt install nnn
	# pcmanfm firefox

	# Updating to newer versions
	apt update && apt upgrade

	clear
	# Header 5
	printf "#################################################################\n"
	printf "   CLONING FROM SOURCES ...\n"
	printf "#################################################################\n\n"

	# Source Setup
	cd ~
	mkdir src
	cd src

	# Personal Git
	# git clone https://github.com/SyedMustafaAhmad/bashrc
	# git clone https://github.com/SyedMustafaAhmad/myscripts
	# git clone https://github.com/SyedMustafaAhmad/i3wm

	# Suckless
	git clone https://git.suckless.org/st
	git clone https://git.suckless.org/dwm
	git clone https://git.suckless.org/dmenu

	# Others
	git clone https://github.com/muennich/sxiv.git

	clear
	# Header 6
	printf "#################################################################\n"
	printf "   BUILDING FROM SOURCES ...\n"
	printf "#################################################################\n\n"

	# Compiling
    	cd dwm
	make install
	cd ..
	cd dmenu
	make install
	cd ..
	cd st
	make install
	cd ..
	cd sxiv
	make install
	cd ~

	clear
	# Header 7
	printf "#################################################################\n"
	printf "   SETTING UP  ...\n"
	printf "#################################################################\n\n"

	# Building st terminal
	# Building sxiv
	# Building dwm

	# Make default terminal st
	# Make default image viewer sxiv
	# Setup keybindings

	clear
	# Header 8
	printf "#################################################################\n"
	printf "   CLEANUP ...\n"
	printf "#################################################################\n\n"
	
	# Update
	apt update && apt upgrade
	# Autoremove
	# apt autoremove

	clear
	# Header 9
	printf "#################################################################\n"
	printf "   REPORT ...\n"
	printf "#################################################################\n\n"

	printf "\nINSTALLED:\n"
	printf "apt install xorg libx11-dev libxft-dev libxft2 libxrandr-dev libxi-dev libxinerama-dev\ngcc g++ vim htop git make nnn\ndwm dmenu st sxiv\n\n"

	printf "FULL PACKAGE LIST:\n"
	apt list --installed

	printf "\nCOUNT:\n"
	apt list --installed | wc -l

	printf "\npress ENTER to continue ..."
	read OPTION

	# END
	# exit
	clear
fi
