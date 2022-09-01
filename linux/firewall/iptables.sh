#!/bin/bash

iptables -I INPUT -p tcp --dport 10050 -j ACCEPT

iptables -I INPUT -p tcp --dport 10051 -j ACCEPT

service iptables save