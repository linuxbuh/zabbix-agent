#!/bin/bash

firewall-cmd --permanent --new-service=zabbix

firewall-cmd --permanent --service=zabbix --add-port=10050/tcp

firewall-cmd --permanent --service=zabbix --set-short="Zabbix Agent"

firewall-cmd --permanent --add-service=zabbix

firewall-cmd --reload

iptables -I INPUT -p tcp --dport 10050 -j ACCEPT

service iptables save