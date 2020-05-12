#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LBBLUE='\e[104m'
multi() {
	options=("Full Port" "Common Vulnerabilities" "UDP Port Scan" "Back")
		select opts in "${options[@]}"
		do
			case $opts in
				"Full Port")
					echo -e "${RED}NOTE: This option takes +- 30mins per host.${NC}"
					echo -e "${W}Would you like to continue?(y/n)${NC}"
					# shellcheck disable=SC2162
					read REPLY
					if [[ $REPLY == y ]]; then
						sudo nmap -p- -Pn -O -A -iL files/pingtest.pass
						sleep 5
						cd /opt/shufti
						shufti -m
					else
						cd /opt/shufti
						shufti -m
					fi
					;;

				"Common Vulnerabilities")
					sudo nmap -sS -Pn -O -A -sV -iL files/pingtest.pass
					sleep 5
					cd /opt/shufti
					shufti -m
					;;

				"UDP Port Scan")
					sudo nmap -sU -Pn -O -A -iL files/pingtest.pass
					sleep 5
					cd /opt/shufti
					shufti -m
					;;

				"Back")
					cd /opt/shufti
					shufti -m
					;;
				esac
			done
}
single() {
	options=("Full Port" "Common Vulnerabilities" "UDP Port Scan" "Back")
		select opts in "${options[@]}"
		do
			case $opts in
				"Full Port")
					echo -e "${RED}NOTE: This option takes +- 30mins${NC}"
					echo -e "${W}Would you like to continue?(y/n)${NC}"
					read REPLY
					if [[ $REPLY == y ]]; then
						echo -e "${YLW}"
						cat files/host_list.txt
						echo -e "${NC}"
						echo -e "${W}Please copy and paste in your target${NC}"
						read TARGET
						echo "================================================================================================="
						sudo nmap -p- -Pn -O -A ${TARGET}
						echo "================================================================================================="
						cd /opt/shufti
						shufti -m
					else
						./modules/netmods/nmap.sh
					fi
					;;

				"Common Vulnerabilities")
					echo -e "${YLW}"
					cat files/host_list.txt
					echo -e "${NC}"
					echo -e "${W}Please copy and paste in your target${NC}"
					read TARGET
					echo "================================================================================================="
					sudo nmap -sS -Pn -O -A -sV ${TARGET}
					echo "================================================================================================="
					cd /opt/shufti
					shufti -m
					;;

				"UDP Port Scan")
					echo -e "${YLW}"
					cat files/host_list.txt
					echo -e "${NC}"
					echo -e "${W}Please copy and paste in your target${NC}"
					read TARGET
					echo "================================================================================================="
					sudo nmap -sU -Pn -O -A ${TARGET}
					echo "================================================================================================="
					cd /opt/shufti
					shufti -m
					;;

				"Back")
					cd /opt/shufti
					shufti -m
					;;
			esac
		done
}

echo -e "${ORNG}nMap${NC}"
echo -e "${ORNG}*****${NC}"
echo -e "${W}Would you like to run nMap against a singular target or all the targets on the hostlist?${NC}"
options=("Single Target" "Multiple Targets" "Back")
select opts in "${options[@]}"
do
	case $opts in
		"Single Target")
			single
			;;

		"Multiple Targets")
			multi
			;;

		"Back")
			cd /opt/shufti
			shufti -m
			;;
	esac
done

