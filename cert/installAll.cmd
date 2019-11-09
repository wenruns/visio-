@echo off
echo ByELDI
echo No cierre esta ventana!
echo Instalando Programas...
pushd "%~dp0"
for %%g in (*.xrm-ms) do (
	echo %%~nxg
	slmgr /ilc %%~nxg
	)
popd
exit