#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'

if [[ -d '/opt/shufti/results/Osmedeus' ]]; then
	sleep 2
else
	mkdir /opt/shufti/results/Osmedeus
fi
echo -e "${RED}"
figlet -f mini "OsmedeuS"
echo -e "${NC}"
echo -e "${W}Please enter your target${NC}"
read TARGET
mkdir /opt/shufti/results/Osmedeus/${TARGET}
sleep 5
echo -e "${LP}Starting Osmedeus Container${NC}"
sudo docker run -it --name osmedeus -p 8000:8000 mablanco/osmedeus ./osmedeus.py -t ${TARGET} --slow "all" &
sleep 5
echo -e "${RED}an xTerm window will pop-up with your password for Osmedeus Web UI, available at http://127.0.0.1:8000"
xterm -e sudo docker exec -it osmedeus grep password /root/.osmedeus/client.conf
sudo docker cp osmedeus:/root/.osmedeus/workspaces/* /opt/shufti/results/Osmedeus/${TARGET}|-
#cd /opt/Osmedeus
#echo -e "${W}Would you like to run Osmedeus against a single target or a target list?(s/l)${NC}"
#read TANS
#if [[ ${TANS} == 's' ]]; then
#	echo -e "${W}Please enter your target${NC}"
#	read TARG
#	TARGET='-i ${TARG}'
#else
#	echo -e "${W}Please enter the full path/to/target_list.txt${NC}"
#	read TARG
#	TARGET='-I ${TARG}'
#fi 
#echo -e "${W}Please specify a username for Osmedeus Web UI${NC}"
#read USERUI
#echo -e "${W}Please enter the password for Osmedeus Web UI${NC}"
#read PASSUI
#sudo python3 osmedeus.py --report full ${TARGET} --slow "all" --auth="${USERUI}:${PASSUI}" -t /opt/shufti/results/Osmedeus
sleep 2
cd /opt/shufti
./shufti -m

