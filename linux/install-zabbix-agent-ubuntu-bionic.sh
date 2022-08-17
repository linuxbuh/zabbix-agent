#!/bin/bash

cd /root

wget https://repo.zabbix.com/zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-1%2Bbionic_all.deb

dpkg -i zabbix-release*.deb

apt-get update
apt-get install zabbix-agent

apt install git

git clone https://github.com/linuxbuh/zabbix-agent.git

cp /root/zabbix-agent/linux/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf

service zabbix-agent restart

service zabbix-agent status