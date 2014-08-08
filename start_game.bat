@echo off

set /P ttiUsername="Username: "
set /P ttiPassword="Password: "
set /P TTI_GAMESERVER="Client Agent IP:" || ^
set TTI_GAMESERVER=

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

echo ===============================
echo Starting Toontown Infinite...
echo ppython: %PPYTHON_PATH%
echo Username: %ttiUsername%
echo Client Agent IP: %TTI_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m toontown.toonbase.ToontownStartRemote
pause
