#!/bin/bash

#MAINPROXY=77.232.21.123,62.112.124.182,91.206.14.21,91.206.14.41,188.246.234.24

cd /tmp

#Определяем дистрибутив
source /etc/os-release
#source /tmp/os-release
OSRELEASE=$ID
IDLIKE_OSRELEASE=$ID_LIKE
VERSION_OSRELEASE=$VERSION_ID

echo -e "\e[1;33;4;44mВаш дистрибутив LINUX - $OSRELEASE\e[0m"

	if [ $OSRELEASE = debian ]; then
	    PAKET=deb
	    PAKETMANAGER=DEB
	fi
	
	if [ $OSRELEASE = ubuntu ]; then
	    PAKET=deb
	    PAKETMANAGER=DEB
	fi
	
	if [ $OSRELEASE = rhel ]; then
	    PAKET=rpm
	    PAKETMANAGER=RPM
	fi

	if [ $OSRELEASE = fedora ]; then
	    PAKET=rpm
	    PAKETMANAGER=RPM
	fi
	
	if [ $OSRELEASE = centos ]; then
	    PAKET=rpm
	    PAKETMANAGER=RPM
	fi
	
	if [ $OSRELEASE = almalinux ]; then
	    PAKET=rpm
	    PAKETMANAGER=RPM
	fi

#Устанавливаем какие пакеты качать для Debian и Ubuntu
	if [ $PAKETMANAGER = DEB ]; then
		  			
		if [ $VERSION_OSRELEASE = 11 ]; then
			
			wget -O /tmp/zabbix-release_5.0-2%2Bdebian11_all.deb https://repo.zabbix.com/zabbix/5.0/debian/pool/main/z/zabbix-release/zabbix-release_5.0-2%2Bdebian11_all.deb

			dpkg -i /tmp/zabbix-release_5.0-2%2Bdebian11_all.deb
			
		fi
		
		if [ $VERSION_OSRELEASE = 10 ]; then
			
			wget -O /tmp/zabbix-release_5.0-1%2Bbuster_all.deb https://repo.zabbix.com/zabbix/5.0/debian/pool/main/z/zabbix-release/zabbix-release_5.0-1%2Bbuster_all.deb

			dpkg -i /tmp/zabbix-release_5.0-1%2Bbuster_all.deb
			
		fi
		
		if [ $VERSION_OSRELEASE = 9 ]; then
			
			wget -O /tmp/zabbix-release_5.0-1%2Bstretch_all.deb https://repo.zabbix.com/zabbix/5.0/debian/pool/main/z/zabbix-release/zabbix-release_5.0-1%2Bstretch_all.deb

			dpkg -i /tmp/zabbix-release_5.0-1%2Bstretch_all.deb
			
		fi
		
		if [ $VERSION_OSRELEASE = 22.04 ]; then
			
			wget -O /tmp/zabbix-release_5.0-2%2Bubuntu22.04_all.deb https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-2%2Bubuntu22.04_all.deb

			dpkg -i /tmp/zabbix-release_5.0-2%2Bubuntu22.04_all.deb
			
		fi
		
		if [ $VERSION_OSRELEASE = 20.04 ]; then
			
			wget -O /tmp/zabbix-release_5.0-1%2Bfocal_all.deb https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-1%2Bfocal_all.deb

			dpkg -i /tmp/zabbix-release_5.0-1%2Bfocal_all.deb
			
		fi
		
		if [ $VERSION_OSRELEASE = 18.04 ]; then
			
			wget -O /tmp/zabbix-release_5.0-1%2Bbionic_all.deb https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-1%2Bbionic_all.deb

			dpkg -i /tmp/zabbix-release_5.0-1%2Bbionic_all.deb
			
		fi
		
		if [ $VERSION_OSRELEASE = 16.04 ]; then
			
			wget -O /tmp/zabbix-release_5.0-1%2Bxenial_all.deb https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-1%2Bxenial_all.deb

			dpkg -i /tmp/zabbix-release_5.0-1%2Bxenial_all.deb
			
		fi
		
		if [ $VERSION_OSRELEASE = 14.04 ]; then
			
			wget -O /tmp/zabbix-release_5.0-1%2Btrusty_all.deb https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-1%2Btrusty_all.deb

			dpkg -i /tmp/zabbix-release_5.0-1%2Btrusty_all.deb
			
		fi

			apt-get update
			
			apt-get install -y zabbix-agent git
	
			
	fi

#Устанавливаем какие пакеты качать для Rhel? Centos и производных
	if [ $PAKETMANAGER = RPM ]; then
		  
			mkdir /var/lib/zabbix
			
			touch /var/lib/zabbix/zabbix_proxy_db
            
			chown -R zabbix:zabbix /var/lib/zabbix
			
			yum install -y deltarpm
			
		if [ $VERSION_OSRELEASE = 9 ]; then
			
			rpm -ivh https://repo.zabbix.com/zabbix/5.0/rhel/9/x86_64/zabbix-release-5.0-3.el9.noarch.rpm
					
		fi
		
		if [ $VERSION_OSRELEASE = 8 ]; then
			
			rpm -ivh https://repo.zabbix.com/zabbix/5.0/rhel/8/x86_64/zabbix-release-5.0-1.el8.noarch.rpm
					
		fi
		
		if [ $VERSION_OSRELEASE = 7 ]; then
			
			rpm -ivh https://repo.zabbix.com/zabbix/5.0/rhel/7/x86_64/zabbix-release-5.0-1.el7.noarch.rpm
					
		fi
		
		if [ $VERSION_OSRELEASE = 6 ]; then
			
			rpm -ivh https://repo.zabbix.com/zabbix/5.0/rhel/6/x86_64/zabbix-release-5.0-1.el6.noarch.rpm
					
		fi
		
	
			yum update
			
			yum install -y zabbix-agent git
			
			
	fi



			git clone https://github.com/linuxbuh/zabbix-agent.git

			cp -f /tmp/zabbix-agent/linux/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf
			
			cp -f /tmp/zabbix-agent/linux/zabbix_agentd.conf /etc/zabbix_agentd.conf
			
			#echo -e "\e[1;31;42mВвод IP адреса ZABBIX PROXY для данной организации \e[0m"
			#echo
			#echo -n "Введите IP адрес ZABBIX PROXY для данной организации и нажмите [ENTER]: "
			#read PROXY
			#echo
			#echo -e "\e[1;31;42mВы ввели IP адрес ZABBIX PROXY $PROXY \e[0m"

			#PROXYSERVER=Server=$PROXY,$MAINPROXY

			#sed -i "s/Server=$MAINPROXY/$PROXYSERVER/" /etc/zabbix/zabbix_agentd.conf
			
			systemctl start zabbix-agent
			
			systemctl status zabbix-agent
			
#firewall

firewall-cmd --permanent --new-service=zabbix

firewall-cmd --permanent --service=zabbix --add-port=10050/tcp

firewall-cmd --permanent --service=zabbix --add-port=10051/tcp

firewall-cmd --permanent --service=zabbix --set-short="Zabbix"

firewall-cmd --permanent --add-service=zabbix

firewall-cmd --reload

iptables -I INPUT -p tcp --dport 10050 -j ACCEPT

iptables -I INPUT -p tcp --dport 10051 -j ACCEPT

service iptables save

ufw allow 10050:10051/tcp
ufw allow 10050:10051/udp