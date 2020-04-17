echo off
cls
title Winactiv 1.0
echo Welcome to Winactiv!
echo By CrazyCatzzz
cls

echo Let's begin the installation process!
echo You will need a KMS server, if you don't have one, create one
set /p server="Enter your KMS server address: "
cls

:activation
cscript slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
cscript slmgr.vbs /skms %server%
cscript slmgr.vbs /ato
echo Activation completed, enjoy your Windows 10 Pro!
pause
goto:eof

