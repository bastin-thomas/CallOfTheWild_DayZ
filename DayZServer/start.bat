@echo off
:start
::Server name (This is just for the bat file)
set serverName="The Call Of The Wild"
::Server files location
set serverLocation="C:\Users\Arkios\Desktop\CallOfTheWild_DayZ\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=12
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start /HIGH "DayZ Server" /min "DayZServer_x64.exe" -port=%serverPort% -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck -config=%serverConfig% "-profiles=config" "-serverMod=@DisableUseHandcuff;" "-mod=@CF;"
::Time in seconds before kill server process (14400 = 4 hours)
pause
taskkill /im "DayZServer_x64.exe" /F

::Go back to the top and repeat the whole cycle again
goto start