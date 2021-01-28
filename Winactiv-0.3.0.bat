@echo off
cls
title Winactiv v0.3.0
echo Welcome to Winactiv!
echo This is version 0.3.0
echo By miao704g
echo Press any button to continue
pause
cls

:OSCheck
FOR /F "skip=2 tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') DO set "OS=%%B"
echo You are on %OS% | findstr /c:"Windows 10" > nul
if %errorlevel% == 1 (goto:next1) else (goto:selection10)
:next1
FOR /F "skip=2 tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') DO set "OS=%%B"
echo Checking... OS=%OS% | findstr /c:"Windows 8.1" > nul
if %errorlevel% == 1 (goto:next2) else (goto:selction81)
:next2
FOR /F "skip=2 tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') DO set "OS=%%B"
echo Checking again... OS=%OS% | findstr /c:"Windows 8" > nul
if %errorlevel% == 1 (goto:badwin) else (goto:selection8)

:selection10
FOR /F "skip=2 tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') DO set "edition=%%B"
if "%edition%"=="Windows 10 Enterprise" goto:enterprise10
if "%edition%"=="Windows 10 Pro" goto:pro10
if "%edition%"=="Windows 10 Education" goto:education10

:pro10
cscript slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
echo Press any key to continue
pause
cscript slmgr.vbs /skms kms.lotro.cc
echo Press any key to continue
pause
cscript slmgr.vbs /ato
echo Activation completed, enjoy your Windows 10 Pro!
pause
goto:eof

:enterprise10
cscript slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
echo Press any key to continue
pause
cscript slmgr.vbs /skms kms.lotro.cc
echo Press any key to continue
pause
cscript slmgr.vbs /ato
echo Activation completed, enjoy your Windows 10 Enterprise!
pause
goto:eof

:education10
cscript slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo Press any key to continue
pause
cscript slmgr.vbs /skms kms.lotro.cc
echo Press any key to continue
pause
cscript slmgr.vbs /ato
echo Activation completed, enjoy your Windows 10 Education!
pause
goto:eof

:selection81
FOR /F "skip=2 tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') DO set "edition=%%B"
if %edition% == "Windows 8.1 Pro" goto:pro81
if %edition% == "Windows 8.1 Enterprise" goto:enterprise81

:pro81
cscript slmgr.vbs /ipk GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
echo Press any key to continue
pause
cscript slmgr.vbs /skms kms.crackmywpa.com
echo Press any key to continue
pause
cscript slmgr.vbs /ato
echo Activation completed, enjoy your Windows 8.1 Pro!
pause
goto:eof

:enterprise81
cscript slmgr.vbs /ipk MHF9N-XY6XB-WVXMC-BTDCT-MKKG7
echo Press any key to continue
pause
cscript slmgr.vbs /skms kms.crackmywpa.com
echo Press any key to continue
pause
cscript slmgr.vbs /ato
echo Activation completed, enjoy your Windows 8.1 Enterprise!
pause
goto:eof

:selection8
FOR /F "skip=2 tokens=2,*" %%A IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') DO set "edition=%%B"
if %edition% == "Windows 8 Pro" goto:pro8
if %edition% == "Windows 8 Enterprise" goto:enterprise8

:pro8
cscript slmgr.vbs /ipk NG4HW-VH26C-733KW-K6F98-J8CK4
echo Press any key to continue
pause
cscript slmgr.vbs /skms kms.crackmywpa.com
echo Press any key to continue
pause
cscript slmgr.vbs /ato
echo Activation completed, enjoy your Windows 8 Pro!
pause
goto:eof

:enterprise8
cscript slmgr.vbs /ipk 32JNW-9KQ84-P47T8-D8GGY-CWCK7
echo Press any key to continue
pause
cscript slmgr.vbs /skms kms.crackmywpa.com
echo Press any key to continue
pause
cscript slmgr.vbs /ato
echo Activation completed, enjoy your Windows 8 Enterprise!
pause
goto:eof

:badwin
echo This script only works with Windows 10/8.1/8!
pause
goto:eof