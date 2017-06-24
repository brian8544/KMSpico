@echo off
pushd "%~dp0"
SCHTASKS /DELETE /F /TN "AutoPico Daily Restart"
popd
exit
