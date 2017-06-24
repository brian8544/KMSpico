@echo off
pushd "%~dp0"
regedit /s EnableSmartScreen.reg
popd
exit
