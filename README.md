# Shufti

Shufti is an Advance Open Source Intelligence Framework, made by gathering many n number of tools all together under a single framwork to ease various process of recon, network firewall checking, vulnerability scanning, exploiting the pathched ones,enumerating the hosts. All the gathered outcomes will be saved in the designated Result Folder. We will keep adding the latest Tools in Shufti to reduce the toil of security researcher.

# Installation:

	* This will download and install all required tools
	*
	$ git clone https://github.com/vaibhavkrjha/shufti.git
	$ cd shufti
	$ chmod +x install.sh
	$ ./install.sh


# Modules:
	# Information Modules
	  = Enterprise Information Gatherers
		  -theHarvester  - https://github.com/laramies/theHarvester
		  -Osmedeus - https://github.com/j3ssie/Osmedeus
		  -ReconSpider - https://github.com/bhavsec/reconspider
		  -CredNinja - -CredNinja - https://github.com/Raikia/CredNinja

	  = Targeted Information Gatherers
		  -Maryam - https://github.com/saeeddhqan/Maryam
		  -Seeker - https://github.com/thewhiteh4t/seeker
		  -Sherlock - https://github.com/sherlock-project/sherlock
		  -xRay - https://github.com/evilsocket/xray

	# Domain Recon Gathering
		-DnsTwist - https://github.com/elceef/dnstwist
		-Armory - https://github.com/depthsecurity/armory
		-SayDog - https://github.com/saydog/saydog-framework

	# Exploitation Tools
	  = MS Exploiters
		  -ActiveReign - https://github.com/m8r0wn/ActiveReign
		  -iSpy - https://github.com/Cyb0r9/ispy
		  -SMBGhost - https://github.com/gabimarti/SMBScanner

	  = Website Exploiters
		  -DDoS
			-Dark Star - https://github.com/s1l3nt78/Dark-Star
			-Impulse - https://github.com/LimerBoy/Impulse
		  -NekoBot - https://github.com/tegal1337/NekoBotV1
		  -xShock - https://github.com/capture0x/XSHOCK
		  -VulnX - https://github.com/anouarbensaad/vulnx

	= Exploit Searching
		  -FindSploit - https://github.com/1N3/Findsploit
		  -ShodanSploit - https://github.com/shodansploit/shodansploit

	   -TigerShark (Phishing) - https://github.com/s1l3nt78/TigerShark
	
	= Post-Exploitation
	   	-EoP Exploit (Elevation of Priviledge Exploit) - https://github.com/padovah4ck/CVE-2020-0683
	   	-PHPSploit - https://github.com/nil0x42/phpsploit
	  	-WinPwn - https://github.com/S3cur3Th1sSh1t/WinPwn
	
	   =FuzzyDander (Obtained through issue request.)
	   	-FuzzBunch
		-Danderspritz

	   -BruteDUM (Bruteforcer) - https://github.com/GitHackTools/BruteDum

	# Network Scanners
		-Nmap - https://nmap.org
		-AttackSurfaceMapper - https://github.com/superhedgy/AttackSurfaceMapper
		-aSnip - https://github.com/harleo/asnip
		-wafw00f - https://github.com/EnableSecurity/wafw00f
		-Arp-Scan

	# HoneyPot Detection Systems
		-HoneyCaught - https://github.com/aswinmguptha/HoneyCaught
		-SniffingBear - https://github.com/MrSuicideParrot/SniffingBear


	# Vulnerability Scanners
		-Flan - https://github.com/cloudflare/flan
	  	-Rapidscan - https://github.com/skavngr/rapidscan
		-Yuki-Chan - https://github.com/Yukinoshita47/Yuki-Chan-The-Auto-Pentest


	# WebApplication Scanners
		  -Sitadel - https://github.com/shenril/Sitadel
		  -OneFind - https://github.com/nyxgeek/onedrive_user_enum
		  -AapFinder - https://github.com/Technowlogy-Pushpender/aapfinder
		  -BFAC - https://github.com/mazen160/bfac


	# Website Scanners & Enumerators
		  -Nikto - https://github.com/sullo/nikto
		  -Blackwidow - https://github.com/1N3/blackwidow
		  -Wordpress
		  	WPScan - https://github.com/wpscanteam/wpscan
		  	WPForce/Yertle - https://github.com/n00py/WPForce
		  -Zeus-Scanner - https://github.com/Ekultek/Zeus-Scanner
		  -Dirb


# Shufti Help Menu

  $ shufti	runs the programs bringing up the menu in a cli environment
  <br>
  $ shufti	-c will check the existing hosts in the hostlist
  <br>
  $ shufti	-a 'target-ip' appends the hostname/IP to host file
  <br>
  $ shufti 	-m Opens the Main Module menu
  <br>
  $ shufti	-e Opens the Exploitation Modules
  <br>
  $ shufti	-i Opens the Info-based Module menu
  <br>
  $ shufti 	-d Opens the Domain Focused Modules
  <br>
  $ shufti 	-n Opens the Network Mapping Modules menu
  <br>
  $ shufti	-w Opens the Website Focused Modules
  <br>
  $ shufti	-wa Opens the Web-App Focused Module menu
  <br>
  $ shufti	-v Opens the Vulnerability Scanning Module Menu
  <br>
  $ shufti	-r Opens the results folder for easy viewing of all saved results
  <br>
  $ shufti	-u Checks for/and installs updates
  <br>
  $ shufti	-h This Help Menu
  <br />
  <br />
