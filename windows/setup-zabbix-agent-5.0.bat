@echo off

rem :: ZABBIX AGENT VERSION:
rem set /p VERSION="AGENT VERSION:: "
 
rem :: ZABBIX AGENT VERSION:
rem echo "YUO ENTER ZABBIX AGENT VERSION %VERSION%"

rem :: ZABBIX PROXY:
rem set /p PROXY="ENTER ZABBIX PROXY IP:: "
 
rem :: ZABBIX PROXY:
rem echo "YUO ENTER ZABBIX PROXY %PROXY%"

C:\wget.exe -O C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi https://cdn.zabbix.com/zabbix/binaries/stable/5.0/5.0.26/zabbix_agent-5.0.26-windows-amd64-openssl.msi
@pause 10
msiexec /i C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi /qn /norestart SERVER=0.0.0.0/0 LISTENPORT=10050 ENABLEPATH=1
del C:\zabbix_agent-5.0.26-windows-amd64-openssl.msi
@pause 10

net stop "Zabbix Agent"
@pause 10
net start "Zabbix Agent"

exit /b