#!/bin/bash

cd /root

yum install https://repo.zabbix.com/zabbix/5.0/rhel/8/x86_64/zabbix-release-5.0-1.el8.noarch.rpm

yum install zabbix-agent

git clone https://github.com/linuxbuh/zabbix-agent.git

cp /root/zabbix-agent/linux/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf

service zabbix-agent restart

service zabbix-agent status