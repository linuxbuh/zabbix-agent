@echo off

rem :: ZABBIX AGENT VERSION:
rem set /p VERSION="AGENT VERSION:: "
 
rem :: ZABBIX AGENT VERSION:
rem echo "YUO ENTER ZABBIX AGENT VERSION %VERSION%"

:: ZABBIX PROXY:
set /p PROXY="ENTER ZABBIX PROXY IP:: "
 
:: ZABBIX PROXY:
echo "YUO ENTER ZABBIX PROXY %PROXY%"

C:\wget.exe -O C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi https://cdn.zabbix.com/zabbix/binaries/stable/5.0/5.0.26/zabbix_agent-5.0.26-windows-amd64-openssl.msi
msiexec /i C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi /qn /norestart SERVER=%PROXY%,77.232.21.123,62.112.124.182,91.206.14.21,91.206.14.41,188.246.234.24/29 LISTENPORT=10050 ENABLEPATH=1
del C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi
del C:\zabbix-setup.bat

net stop "Zabbix Agent"
net start "Zabbix Agent"

pause 30