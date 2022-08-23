rem C:\wget.exe -O C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi https://cdn.zabbix.com/zabbix/binaries/stable/5.0/5.0.26/zabbix_agent-5.0.26-windows-amd64-openssl.msi
rem msiexec /i C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi /qn /norestart SERVER=77.232.21.123,62.112.124.182,91.206.14.21,91.206.14.41,188.246.234.24/29 LISTENPORT=10050 ENABLEPATH=1
rem rm C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi
rem rm C:\zabbix-setup.bat
@echo off
 
:: COMPANY NAME:
set /p COMPANY="COMPANY NAME:: "
 
:: COMPANY:
echo "YUO ENTER %COMPANY%"

C:\wget.exe -O 

pause 30