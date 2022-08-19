wget -O C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi https://cdn.zabbix.com/zabbix/binaries/stable/5.0/5.0.26/zabbix_agent-5.0.26-windows-amd64-openssl.msi
msiexec /i C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi /qn /norestart SERVER=77.232.21.123,62.112.124.182,91.206.14.21,91.206.14.41,188.246.234.24/29 LISTENPORT=10050 ENABLEPATH=1
rm C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi
rm C:\zabbix-setup.bat