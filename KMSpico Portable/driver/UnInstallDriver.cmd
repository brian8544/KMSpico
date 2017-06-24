@echo off
pushd "%~dp0"
Set uninstaller="%programfiles%\TAP-Windows\Uninstall.exe"
%uninstaller% /S
popd
exit