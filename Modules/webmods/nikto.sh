#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
nikto_multi(){
	for name in `cat files/pingtest.pass`
        do
			nikto -host http://${name} | tee /opt/shufti/results/Nikto/${name}.txt
		done
}
nikto_single(){
	echo -e "${YLW}"
	cat pingtest.pass
	echo -e "${NC}"
	echo -e "${W}Please enter your target. (without webmask 'http://' protocol)${NC}"
	read TARGET
	sleep 1
	nikto -host http://${TARGET} | tee /opt/sifter/results/Nikto/${TARGET}.txt
}

if [[ -d /opt/shufti/results/Nikto ]]; then
    echo ""
else
    mkdir /opt/shufti/results/Nikto
fi
echo -e "${ORNG}Nikto${NC}"
echo -e "${ORNG}******${NC}"
echo -e "${W}Would you like to run Nikto against a Single target or against your target Lists?(s/l)${NC}"
read ANS
sleep 1
if [[ ${ANS} == s ]] || [[ ${ANS} == S ]]; then
	nikto_single
else
	nikto_multi
fi
echo "==============================================================================================="
echo -e "${RED}Results have been saved to /opt/shufti/results/Nikto${NC}"
echo "==============================================================================================="
cd /opt/shufti
shufti -m


