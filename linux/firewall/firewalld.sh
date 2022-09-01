#!/bin/bash

firewall-cmd --permanent --new-service=zabbix

firewall-cmd --permanent --service=zabbix --add-port=10050/tcp

firewall-cmd --permanent --service=zabbix --add-port=10051/tcp

firewall-cmd --permanent --service=zabbix --set-short="Zabbix"

firewall-cmd --permanent --add-service=zabbix

firewall-cmd --reload

