#!/bin/bash

wget https://repo.zabbix.com/zabbix/5.0/debian/pool/main/z/zabbix-release/zabbix-release_5.0-1%2Bbuster_all.deb

dpkg -i zabbix-release*.deb

apt-get update
apt-get install zabbix-agent

