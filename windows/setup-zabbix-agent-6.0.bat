@echo off

rem :: ZABBIX AGENT VERSION:
rem set /p VERSION="AGENT VERSION:: "
 
rem :: ZABBIX AGENT VERSION:
rem echo "YUO ENTER ZABBIX AGENT VERSION %VERSION%"

:: ZABBIX PROXY:
set /p PROXY="ENTER ZABBIX PROXY IP:: "
 
:: ZABBIX PROXY:
echo "YUO ENTER ZABBIX PROXY %PROXY%"

C:\wget.exe -O C:\zabbix_agent-6.0.7-windows-amd64-openssl.msi https://cdn.zabbix.com/zabbix/binaries/stable/6.0/6.0.7/zabbix_agent-6.0.7-windows-amd64-openssl.msi
@pause 10
msiexec /i C:\zabbix_agent-6.0.7-windows-amd64-openssl.msi /qn /norestart SERVER=%PROXY%,77.232.21.123,62.112.124.182,91.206.14.21,91.206.14.41,188.246.234.24/29 LISTENPORT=10050 ENABLEPATH=1
del C:\zabbix_agent-6.0.7-windows-amd64-openssl.msi
@pause 10

net stop "Zabbix Agent"
@pause 10
net start "Zabbix Agent"

exit /b