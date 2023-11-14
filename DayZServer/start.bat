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
start /HIGH "DayZ Server" /min "DayZServer_x64.exe" -port=%serverPort% -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck -config=%serverConfig% "-profiles=config" "-serverMod=@DisableUseHandcuff;" "-mod=@CF;@Community-Online-Tools;@Dabs Framework;@Survivor Animations;@Proxy Search Framework;@PersistentDoors;@VPPAdminTools;@VendingSearch;@PowerPoleLight;@Powerstrip;@RedFalcon Flight System Heliz;@RedFalcon Watercraft;@ProjectHope Survivor Backpack;@Repair;@Raft;@Radio Toggle and Push-to-Talk;@eAI_Reloaded;@Ear-Plugs;@GoreZ;@Immersive Placing;@Inventory Move Sounds;@Building Fortifications;@MunghardsItempack;@MuchCarKey;@CansOnFirePlace;@CarCover;@CJ187-MoreMoney;@CustomItems;@DayZ-Dog;@Dayz-Otter;@DayZ-Rabbit;@DayZ-Rat;@DayZ-Raven;@DayZ-Seagull;@DayZ-Squirrel;@WindstridesClothingPack;@ZenCatchRain;@ZenCauseOfDeath;@ZenGunMoveSounds;@ZenLeftovers;@ZenNotes;@ZenOpenCansRock;@Zen's 1PP PVP Mod;@Zen's Car Workbench;@Zen's Chessboard;@Zen's Chicken Coops;@Zen's Combination Locks Mod;@Zen's Crafting Sounds;@Zen's Fire Fuel Mod;@Zen's Firewood Piles;@Zen's Immersive Login;@Zen's Persistent Trees;@Zen's Static Barbed Wire;@Zen's Tent Bags;@Zen's Tire Rack;@Zen's TreeSplosions;@ZenSleep;@UsefulBatteries;@FarmingPlus 2.0;"
::Time in seconds before kill server process (14400 = 4 hours)
pause
taskkill /im "DayZServer_x64.exe" /F

::Go back to the top and repeat the whole cycle again
goto start