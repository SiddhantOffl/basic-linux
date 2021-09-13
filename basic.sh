#!/bin/bash
# Basic.sh V2.0
# Coded by: SiddhantOffl
# Github: https://github.com/SiddhantOffl


## ANSI colors (FG & BG)
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

## root Accese
if [ $(whoami) != "root" ]
then
	echo -e "\n${RED}[${WHITE}*${RED}]${ORANGE} Pleace Run With ${CYAN}[${RED}sudo${CYAN}] ${ORANGE}"${GREEN}
    exit 1
fi
clear

## Script termination
exit_on_signal_SIGINT() {
    { printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Interrupted." 2>&1; reset_color; }
    exit 0
}

exit_on_signal_SIGTERM() {
    { printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Terminated." 2>&1; reset_color; }
    exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

## Reset terminal colors
reset_color() {
	tput sgr0   # reset attributes
	tput op     # reset color
    return
}

## Banner
banner() {
    cat <<- EOF

    ${ORANGE} 
  
      ░█▀▀█ ─█▀▀█ ░█▀▀▀█ ▀█▀ ░█▀▀█ ─ ░█▀▀▀█ ░█─░█ 
      ░█▀▀▄ ░█▄▄█ ─▀▀▀▄▄ ░█─ ░█─── ▄ ─▀▀▀▄▄ ░█▀▀█ 
      ░█▄▄█ ░█─░█ ░█▄▄▄█ ▄█▄ ░█▄▄█ █ ░█▄▄▄█ ░█─░█ 
                                     ${RED}Version :2.0
${GREEN}[${WHITE}-${GREEN}]${CYAN} Tool Created by Siddhant Saaho${WHITE}

	EOF
}

## Dependencies
dependencies() {
	echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing required packages..."

    if [[ -d "/data/data/com.termux/files/home" ]]; then
        if [[ `command -v proot` ]]; then
            printf ''
        else
			echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing package : ${ORANGE}proot${CYAN}"${WHITE}
            pkg install proot resolv-conf -y
        fi
    fi

	if [[ `command -v php` && `command -v wget` && `command -v curl` && `command -v unzip` && `command -v python3` ]]; then
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Packages already installed."
	else
		pkgs=(php curl wget unzip ssh python3-pip)
		for pkg in "${pkgs[@]}"; do
			type -p "$pkg" &>/dev/null || {
				echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing package : ${ORANGE}$pkg${CYAN}"${WHITE}
				if [[ `command -v pkg` ]]; then
					pkg install "$pkg"
				elif [[ `command -v apt` ]]; then
					apt install "$pkg" -y
				elif [[ `command -v apt-get` ]]; then
					apt-get install "$pkg" -y
				elif [[ `command -v pacman` ]]; then
					sudo pacman -S "$pkg" --noconfirm
				elif [[ `command -v dnf` ]]; then
					sudo dnf -y install "$pkg"
				else
					echo -e "\n${RED}[${WHITE}!${RED}]${RED} Unsupported package manager, Install packages manually."
					{ reset_color; exit 1; }
				fi
			}
		done
	fi

}

## Updating_Linux
updating() {
{ clear; banner; echo; }
	
	echo -e "${ORANGE}Uptating Linux...${GREEN}"
	echo -e ""
    sudo apt-get update
	echo -e ""
	echo -e "${ORANGE}Upgrading...${GREEN}"
	sudo apt-get upgrade -y 
	echo -e ""
	echo -e "${ORANGE}Dist Upgrading...${GREEN}"
	sudo apt-get dist-upgrade -y 
	echo -e ""
	echo -e "${ORANGE}Auto Removing Linux...${GREEN}"
	sudo apt-get autoremove -y
	echo -e ""
	echo -e "${WHITE}${REDBG} 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded ${RESETBG}"
	sleep 10
	echo -e "\e[1;93m Updated!!🙄\e[0m"
	{ sleep 1; main_menu; }
}

## Directories
folder(){
	{ clear; }
if [[ ! -d ".tools" ]]; then
	mkdir -p ".tools"
fi


}

## GitHUb
github() {
{ clear; banner; folder; echo; }
	cd .tools/ && clear
	echo -e "\e[1;94m Instaling Tools...lol\e[0m"
	echo -e ""
    git clone https://github.com/htr-tech/zphisher.git && git clone https://github.com/thewhiteh4t/seeker.git && git clone https://github.com/FluxionNetwork/fluxion.git
	sleep 0.2
	echo -e "\e[1;93m Installed!!\e[0m"
	cd ../
	{ sleep 1; main_menu; }
}

## Exit message
msg_exit() {
	{ clear; banner; echo; }
	echo -e "\e[1;94m As you wish...lol\e[0m"
	echo -e ""
	sleep 0.2
	echo -e "\e[1;93m Leave!!🙄\e[0m"
	{ sleep 1; main_menu; }
}

## About
about() {
	{ clear; banner; echo; }
	cat <<- EOF
		${GREEN}Author   ${RED}:  ${ORANGE}Siddhant ${RED}[ ${ORANGE}Saaho ${RED}]
		${GREEN}Github   ${RED}:  ${CYAN}https://github.com/SiddhantOffl
		${GREEN}Version  ${RED}:  ${ORANGE}1.0

		${RED}[${WHITE}00${RED}]${ORANGE} Main Menu     ${RED}[${WHITE}99${RED}]${ORANGE} Exit

	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"

	if [[ "$REPLY" == 99 ]]; then
		msg_exit
	elif [[ "$REPLY" == 0 || "$REPLY" == 00 ]]; then
		echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Returning to main menu..."
		{ sleep 1; main_menu; }
	else
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
		{ sleep 1; about; }
	fi
}


## Menu
main_menu() {
	{ clear; banner; echo; }
	cat <<- EOF
		${RED} [${WHITE}::${RED}]${ORANGE} Select For Your: ${RED}[${WHITE}::${RED}]${ORANGE}

		     ${RED}       [${WHITE}01${RED}]${ORANGE} Linux Update
            ${RED}[${WHITE}02${RED}]${ORANGE} Tools Install   

		${RED}       [${WHITE}99${RED}]${ORANGE} About           ${RED}[${WHITE}00${RED}]${ORANGE} Exit

	EOF
	
	read -p "    ${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"

	if [[ "$REPLY" == 1 || "$REPLY" == 01 ]]; then
		updating

	elif [[ "$REPLY" == 2 || "$REPLY" == 02 ]]; then
		github

	elif [[ "$REPLY" == 99 ]]; then
		about

	elif [[ "$REPLY" == 0 || "$REPLY" == 00 ]]; then
		msg_exit
		
	else
		echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
		{ sleep 1; main_menu; }
	fi
}

##Main

dependencies
main_menu

