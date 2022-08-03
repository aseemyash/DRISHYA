#!/bin/bash

#This script is just for education perpose
#Developer assume no liability on what wrong you done!

clear
R='\033[0;31m'
G='\033[0;32m'
O='\033[0;33m'
N='\033[0m'
B='\033[0;34m'
Y='\033[0;38m'       # Yellow
C='\033[0;36m'         # Cyan
W='\033[0;37m'        # White
trap 'printf "\e[1;77m \n Ctrl+C was pressed, I hope we will meet soon:)\n\n \e[0m"; exit 0' 2

function banner(){
  echo -e "
     
${R}  ██████╗░██████╗░██╗░██████╗██╗░░██╗██╗░░░██╗░█████╗░ ${W}v1.0
${R}  ██╔══██╗██╔══██╗██║██╔════╝██║░░██║╚██╗░██╔╝██╔══██╗
${R}  ██║░░██║██████╔╝██║╚█████╗░███████║░╚████╔╝░███████║
${R}  ██║░░██║██╔══██╗██║░╚═══██╗██╔══██║░░╚██╔╝░░██╔══██║
${R}  ██████╔╝██║░░██║██║██████╔╝██║░░██║░░░██║░░░██║░░██║
${R}  ╚═════╝░╚═╝░░╚═╝╚═╝╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝
                     
 				${R}WELCOME TO ${Y}DRISHYA OPEN SOUCE PROJECT${Y}, 
 BY USING THIS TOOL YOU CAN GATHER THE SENSITIVE INFORMATION OF ACTIVE IOT DEVICES EVEN NUCLEAR POWER PLANTS(NOT KIDDING) AND WEB APPLICATION
 			ACROSS THE GLOBE BY JUST  ${C}JUST ENTERING IP
                 ${O}DEVLOPED BY ASEEM YASH Instagram:instagram.com/aseemyash
                                       "
}
banner

read -p "[#] Enter Target IP/HOST : " ip
sleep 2
echo -e "[-] Target is $ip"
sleep 0.2
echo -e "\n\033[1;32m[+] Gathering data...\033[m"
whois $ip
sleep 2
echo -e "[-] Data Gathering Completed 🌩️"
echo -e "\n\033[1;32m[+] Checking DNS Record...\033[m"
nslookup $ip
sleep 2
echo -e "[-] DNS Record Gathering Completed 🌩️"
echo -e "\n\033[1;32m[+] Checking WAF...\033[m"
wafw00f $ip
sleep 2
echo -e "[-] WAF Checking Completed 🌩️"
echo -e "\n\033[1;32m[+] Analyzing target...\033[m"
whatweb $ip
echo -e "[-] Target Analyzed successfully🌩️"
echo -e "\n\033[1;32m[+] Gathering Geographic Info...\033[m"
curl https://api.hackertarget.com/geoip/?q=$ip
sleep 0.5
echo "."
echo -e "[-] Geo location gathering Completed 🌩️"
echo -e "\n\033[1;32m[+] Scanning the ports for Services...\033[m"
nmap -Pn -sV -T4 $ip
echo -e "[-] Port and Service scan completed 🌩️"
      printf "\n\n\e[92m=============================================\e[0m"
      printf "\n\n\e[92m  		 🌩️  OSINT COMPLETED 🌩️               \e[0m"
      printf "\n\n\e[92m              Stay secure ;)               \e[0m"
      printf "\n\n\e[92m        \e[5mJob finsihed on \e[91m$ip\e[0m\e[25m               \e[0m"
      printf "\n\n\e[92m=============================================\e[0m\n\n"
