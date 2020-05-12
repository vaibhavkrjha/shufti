#!/bin/bash
RED='\033[0;31m'
W='\033[1;37m'
NC='\033[0m'
YLW='\033[1;33m'
OPOPT(){
    echo -e "${W}Enter your port:${NC}"
    read PORT1
    PORTA='-p PORT1'
    echo -e "${W}Would you like to add another?(y/n)${NC}"
    read POPT
}
OPOPT2(){
    echo -e "${W}Enter your port:${NC}"
    read PORT2
    PORTB='-p PORT2'
    echo -e "${W}Would you like to add another?(y/n)${NC}"
    read POPT1
}
OPOPT3(){
    echo -e "${W}Enter your port:${NC}"
    read PORT3
    PORTC='-p PORT3'
}

sudo docker pull vaibhavkrjha/shufti:build
echo -e "${W}By default the sifters docker container exposes ports ${RED}4444 8080 10000"
echo -e "${W}Would you like to set custom ports or use defaults(c/d)${NC}"
read ANS
if [[ ${ANS} == "d" ]]; then
  sudo docker run --name sifter -v /var/run/docker.sock:/var/run/docker.sock -p 4444:4444 -p 8080:8080 -p 10000:10000 -w /opt/shufti vaibhavkrjha/shufti:built8 shufti
else
  echo -e "${W}Please enter your ports one set at a time, according to example"
  echo -e "${RED}eg. ${YLW}4444:4444${NC}"
  OPOPT
  if [[ ${POPT} == "y" ]]; then
    OPOPT2
    if [[ ${POPT1} == "y" ]]; then
        OPOPT3
    fi
  fi        
  PORTS='${PORTA} ${PORTB} ${PORTC}'
  sudo docker run --name shufti -v /var/run/docker.sock:/var/run/docker.sock ${PORTS} -w /opt/shufti s1l3nt78/shufti:built8 shufti
fi
sudo docker exec -i shufti docker build -t mablanco/osmedeus /opt/docker-osmedeus
sudo docker exec -i shufti docker build /opt/flan 
echo -e "${W}Please copy and paste the final container's image ID shown above${NC}"
read ID 
sudo docker exec -i shufti docker tag ${ID} flan_scan
sudo docker exec -i shufti docker build -t xraydocker /opt/xray
sudo docker exec -i shufti docker pull vaibhavkrjha/zeus:shufti
sudo cp shufti -t /usr/sbin
sudo chmod +x /usr/sbin/shufti
sudo chown $USER:$USER /usr/sbin/shufti

