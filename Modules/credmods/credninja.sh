#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'

if [[ -d /opt/shufti/results/CredNinja ]]; then
	sleep 1
else
	mkdir /opt/shufti/results/CredNinja
fi
cd /opt/CredNinja
echo -e "${LP}"
figlet CredNinja
echo -e "${NC}"
echo -e "${W}Please enter the full path/to/accounts_to_test.txt${NC}"
read ACCOUNTS 
echo -e "${W}Please enter full path/to/systems_to_test.txt${NC}"
read SYSTEMS 
echo -e "${W}Please enter the amount of threads to run concurrently${NC}"
read THREADS
echo -e "${W}Would you like to treat passwords as NTLM hash and try pass the hash?${YLW}(y/n)${NC}"
read LMANS
if [[ ${LMANS} == "y" ]]; then
	NTLM='--ntlm'
else
	NTLM=''
fi
echo -e "${W}Please enter the name of output file${NC}"
read OUTPUT
sudo python3 CredNinja.py -a ${ACCOUNTS} -s ${SYSTEMS} -t ${THREADS} ${NTLM} -o ${OUTPUT} --timeout 120 --stripe --scan --delay 10 10 --os --domain
sudo chwon $USER:$USER ${OUTPUT}
mv ${OUTPUT} -t /opt/shufti/results/CredNinja
sleep 2
cd /opt/shufti
shufti -m

