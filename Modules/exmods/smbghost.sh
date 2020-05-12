#!/bin/bash

ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'

echo -e "${ORNG}"
figlet -f mini "SMBGhost"
echo -e "${NC}"
cd /opt/SMBGhost
echo -e "${W}Please enter the target IP address or IP Range${NC}"
read TARGET
python3 scanner.py ${TARGET} 445
sleep 5
cd /opt/shufti
shufti -m
