#!/bin/bash
echo "---------------------------"
printf " Main Menu\n"
echo "---------------------------"
printf "1. Operating system info\n"
printf "2. Hostname and DNS info\n"
printf "3. Network info\n"
printf "4. Who is online\n"
printf "5. Last logged in users\n"
printf "6. My IP address\n"
printf "7. My disk usage\n"
printf "8. My home file-tree\n"
printf "9. File operations\n"
printf "10.Exit\n"


while true
do
read -p "Enter your choice [1-10] " userIn

if [ "$userIn" == "1" ]; then
	output=$(uname -a)
	read -r arg _ <<< "$output"
	echo "---------------------------"
	printf " System information\n"
	echo "---------------------------"
	printf 'Operating system : %s\n' "$arg"
	echo $(/usr/bin/lsb_release -a)
	printf "Press [Enter] key to continue...\n" 
fi
if [ "$userIn" == "2" ]; then
	output=$(uname -a)
	read -r arg _ <<< "$output"
	echo "---------------------------"
	printf " Hostname and DNS information\n"
	echo "---------------------------"
	printf 'Hostname : %s\n' "$(hostname)"
	printf 'DNS domain: %s\n' "$(domainname -a)"
	printf 'Fully qualified domain name : %s\n' "$(hostname -f)"
	printf 'Network address (IP) : %s\n' "$(hostname -I)"
	printf 'DNS name servers (DNS IP) : %s\n' "$(dnsips)"
	printf "Press [Enter] key to continue...\n" 
fi
if [ "$userIn" == "3" ]; then
	output=$(uname -a)
	read -r arg _ <<< "$output"
	echo "---------------------------"
	printf " Network information\n"
	echo "---------------------------"
	printf 'Total network interfaces found : %s\n' "$(ls -A /sys/class/net | wc -l)"
	printf "$(ip addr show)\n"
	echo "-***************************"
	printf "****Network routing****\n"
	echo "*****************************"
	printf "$(route)\n"
	echo "-***************************"
	printf "****Interface traffic information****\n"
	echo "*****************************"
	echo "$(netstat -i)"
	printf "Press [Enter] key to continue...\n" 
fi
if [ "$userIn" == "4" ]; then
	output=$(uname -a)
	read -r arg _ <<< "$output"
	echo "---------------------------"
	printf " Who is online\n"
	echo "---------------------------"
	echo "NAME   LINE    TIME    COMMENT"
	echo "$(w -h)\n"
	printf "Press [Enter] key to continue...\n" 
fi
if [ "$userIn" == "5" ]; then
	output=$(uname -a)
	read -r arg _ <<< "$output"
	echo "---------------------------"
	printf " List of last logged in users\n"
	echo "---------------------------"
	echo "$(last)"
	printf "Press [Enter] key to continue...\n" 
fi
if [ "$userIn" == "6" ]; then
	output=$(uname -a)
	read -r arg _ <<< "$output"
	echo "---------------------------"
	printf " Public IP information\n"
	echo "---------------------------"
	echo "$(hostname -I)"
	printf "Press [Enter] key to continue...\n" 
fi
if [ "$userIn" == "7" ]; then
	output=$(uname -a)
	read -r arg _ <<< "$output"
	echo "---------------------------"
	printf " Disk Usage Info\n"
	echo "---------------------------"
	echo "$(df -H) "
	printf "Press [Enter] key to continue...\n" 
fi
if [ "$userIn" == "8" ]; then
	output=$(uname -a)
	read -r arg _ <<< "$output"
	echo "---------------------------"
	printf " My Home file-tree\n"
	echo "---------------------------"
	sh ./proj1.sh 2>/dev/null
	echo
	echo 'Created filetree.html)'
	printf "Press [Enter] key to continue...\n" 
fi

done
