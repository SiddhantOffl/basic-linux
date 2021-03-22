#!/bin/bash
# Author : Saaho
# Copyright (c) Siddhant_Saaho


## If you Copy Then Give the credits :)



##      Copyright (C) 2021  Siddant saaho
##

## ANSI colors (FG & BG)

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

clear


echo -e "${ORANGE} 
  
      ░█▀▀█ ─█▀▀█ ░█▀▀▀█ ▀█▀ ░█▀▀█ ─ ░█▀▀▀█ ░█─░█ 
      ░█▀▀▄ ░█▄▄█ ─▀▀▀▄▄ ░█─ ░█─── ▄ ─▀▀▀▄▄ ░█▀▀█ 
      ░█▄▄█ ░█─░█ ░█▄▄▄█ ▄█▄ ░█▄▄█ █ ░█▄▄▄█ ░█─░█ "
echo "                                      ${RED}Version :1.0"
echo -e "          ${GREEN}[${WHITE}-${GREEN}]${CYAN} Tool Created by Siddhant Saaho${WHITE}" 
echo ""

sleep 0.1
            	
echo -e "     ${RED}--------------------------------------------${WHITE}"

echo -e "       ${CYAN}* * * * * * * ${GREEN}MAIN MENU${WHITE} ${CYAN}* ** * * * * * *${WHITE} "

echo -e "     ${RED}--------------------------------------------${WHITE}"   
  

echo -e "               ${CYAN}[${WHITE}1${CYAN}]${WHITE} ${ORANGE}Kali Updates ${WHITE}"
sleep 0.2
echo -e "               ${CYAN}[${WHITE}2${CYAN}]${WHITE} ${ORANGE}Tools Install ${WHITE}"
sleep 0.2
echo -e "               ${CYAN}[${WHITE}3${CYAN}]${WHITE} ${ORANGE}REQUIREMENTS Install ${WHITE}"
sleep 0.2
echo -e "               ${CYAN}[${WHITE}4${CYAN}]${WHITE} ${ORANGE}Exit/stop ${WHITE}"
echo -e "     ${RED}----------------------------------------------${WHITE}"
sleep 0.1
echo -n "          ${GREEN}[${WHITE}*${GREEN}]${CYAN}Enter your menu choice ${GREEN}[${WHITE}?${GREEN}]${CYAN}:"
read choice
            case $choice in
        1)
           echo ""
            echo -e " ${GREEN} Kali Linux Update And Upgrade"
            echo ""

                  sudo apt-get update
                  sudo apt-get clean -y 
                  sudo apt-get upgrade -y
                  sudo apt-get clean
                  sudo apt-get dist-upgrade -y
                  sudo apt-get clean -y 
                  sudo apt autoremove -y
                  sudo apt-get clean -y 
                
             
              echo ""
           echo -e "    ${GREEN}[${WHITE}*${GREEN}]${MAGENTA} 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
"
           sleep 2.5
           echo ""
           clear
           ./basic.sh
            ;;
        2)
            echo -e "${YELLOW}you chose choice 2${ENDCOLOR}"
            echo ""
            mkdir tools
            sleep 0.5
            echo ""1
            echo -e "${REDB}\e[1m \e[5m Folder CREATED.. \e[25m \e[21m${ENDCOLOR}"
            echo ""
            sudo apt-get update
            echo -e "${BLINK} ${REDB}KALI UPDATED..${ENDBLINK}${ENDCOLOR} "
            sleep 0.5
            echo ""

            cd tools
            echo -e "${REDB}OPEN TOOLS FOLDER${ENDCOLOR}"
            echo ""
            echo -e "@{WHITEB}Z-Phiser@{ENDWHITEB}"
            git clone https://github.com/htr-tech/zphisher.git
            sleep 02
            echo -e "@{WHITEB}Script DOWNLOADED..!{ENDWHITEB}"
            echo""
            sleep 0.2
            echo -e "@{WHITEB}Seeker@{ENDWHITEB}"
            git clone https://github.com/thewhiteh4t/seeker.git
            sleep 02
            echo -e "@{WHITEB}Script DOWNLOADED..!{ENDWHITEB}"
            echo""
            sleep 0.2
            echo -e "@{WHITEB}Fluxion@{ENDWHITEB}"
            git clone https://github.com/FluxionNetwork/fluxion.git
            sleep 02
            echo -e "@{WHITEB}Script DOWNLOADED..!{ENDWHITEB}"
            echo""
            sleep 0.2
            clear
           ./basic.sh

            ;;
        3)
            echo ""
                echo -e "${YELLOW}you chose choice 3${ENDCOLOR}"
                echo ""
                echo -e "${RED}Install PHP${ENDCOLOR}"
                echo ""
                sleep 0.2
                sudo apt -y install php7.4
                echo ""
                sleep 0.2
                echo -e "${YELLOW}Requirements DOWNLOADED..!${ENDCOLOR}"
                sleep 0.2
                echo ""
                echo -e "${RED}Install SSH${ENDCOLOR}"
                echo ""
                sudo apt -y install ssh
                echo -e "${YELLOW}Requirements DOWNLOADED..!${ENDCOLOR}"
                sleep 0.2
                echo ""
                echo -e "${RED}Install PIP3${ENDCOLOR}"
                echo ""
                sudo apt install python3-pip
                echo -e "${YELLOW}Requirements DOWNLOADED..!${ENDCOLOR}"
                sleep 0.2
                echo ""
                echo -e "${RED}Install TAMIL${ENDCOLOR}"
                echo ""
                sudo apt install fonts-indic
                echo -e "${YELLOW}Requirements DOWNLOADED..!${ENDCOLOR}"
                sleep 0.2
                echo ""
                echo -e "${RED}Install STACER${ENDCOLOR}"
                echo ""
                sudo add-apt-repository ppa:oguzhaninan/stacer
                sudo apt-get install stacer
                echo -e "${YELLOW}Requirements DOWNLOADED..!${ENDCOLOR}"
                sleep 0.2
                echo ""
                clear
                ./basic.sh
                ;;

        4)
            echo ""
            clear
            echo -e "           ${GREEN}[${WHITE}*${GREEN}]${CYAN} Thanks For Use This Tool"
            sleep 12
            sudo clear
            exit
            break
            ;;
        *) echo "invalid option $REPLY";;

esac

