@echo off
pushd "%~dp0"

IF EXIST "%windir%\System32\en-US\shell32.dll.old.mui" (
	taskkill /f /im explorer.exe
	ping 127.0.0.1 -n 3

	takeown /f "%windir%\System32\en-US\shell32.dll.mui" && icacls "%windir%\System32\en-US\shell32.dll.mui" /grant administrators:F
	takeown /f "%windir%\System32\en-US\shell32.dll.old.mui" && icacls "%windir%\System32\en-US\shell32.dll.old.mui" /grant administrators:F

	IF EXIST "%windir%\System32\en-US\shell32.dll.old2.mui" (
		del "%windir%\System32\en-US\shell32.dll.old2.mui"
	)
	rename "%windir%\System32\en-US\shell32.dll.mui" shell32.dll.old2.mui
	rename "%windir%\System32\en-US\shell32.dll.old.mui" shell32.dll.mui
) ELSE (
REM Do another thing
)

IF EXIST "%windir%\Branding\Basebrd\en-US\basebrd.old.dll.mui" (
	IF EXIST "%windir%\Branding\Basebrd\en-US\basebrd.dll.old2.mui" (
		del "%windir%\Branding\Basebrd\en-US\basebrd.dll.old2.mui"
	)
	rename "%windir%\Branding\Basebrd\en-US\basebrd.dll.mui" basebrd.dll.old2.mui
	rename "%windir%\Branding\Basebrd\en-US\basebrd.dll.old.mui" basebrd.dll.mui
) ELSE (
REM Do another thing
)

rem start %windir%\System32\mcbuilder.exe
start /b %windir%\explorer.exe
popd
exit
