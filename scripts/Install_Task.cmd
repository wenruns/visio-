@echo off
pushd "%~dp0"
cd ..
set dr=%CD%\
set name="AutoPico Daily Restart"
SCHTASKS /Create /TN %name% /TR "'%dr%AutoPico.exe' /silent" /SC DAILY /ST 11:59:59 /RI 330 /DU 12:00 /RU SYSTEM /RL Highest /F
set name="Service KMSELDI"
SCHTASKS /Create /TN %name% /TR "sc.exe start %name%" /SC DAILY /ST 04:59:59 /RI 330 /DU 12:00 /RU SYSTEM /RL Highest /F
popd
exit
