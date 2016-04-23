/*
fn_RCON_Restart.sqf
Kevin Webb
Utilizes extDB RCON bot to conduct automatic restarts
*/
uiSleep 10;
"extDB2" callExtension "1:rcon:SAY -1 extDB2 RCON ONLINE";
uiSleep 300;
waitUntil{uiSleep 10; serverTime > 300 && serverTime < 500};
waitUntil{uiSleep 60; life_restartTime - serverTime < 7200};
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 2 hours!";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 2 hours!";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 2 hours!";
waitUntil{uiSleep 60; life_restartTime - serverTime < 3600};
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 1 hour!";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 1 hour!";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 1 hour!";
waitUntil{uiSleep 60; life_restartTime - serverTime < 1800};
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 30 minutes!";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 30 minutes!";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 30 minutes!";
waitUntil{uiSleep 60; life_restartTime - serverTime < 900};
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 15 minutes! The server will lock with 5 minutes left.";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 15 minutes! The server will lock with 5 minutes left.";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 15 minutes! The server will lock with 5 minutes left.";
waitUntil{uiSleep 60; life_restartTime - serverTime < 600};
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 10 minutes! The server will lock with 5 minutes left.";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 10 minutes! The server will lock with 5 minutes left.";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 10 minutes! The server will lock with 5 minutes left.";
waitUntil{uiSleep 30; life_restartTime - serverTime < 300};
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 5 minutes! Remember to sync your data. The server will be locked until restart.";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 5 minutes! Remember to sync your data. The server will be locked until restart.";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 5 minutes! Remember to sync your data. The server will be locked until restart.";
"extDB2" callExtension "1:rcon:#lock";
waitUntil{uiSleep 15; life_restartTime - serverTime < 60};
"extDB2" callExtension "1:rcon:SAY -1 extDB2 Auto RCON: Server restart in 1 minute!";
"extDB2" callExtension "1:rcon:SAY -1 extDB2 Auto RCON: Server restart in 1 minute!";
"extDB2" callExtension "1:rcon:SAY -1 extDB2 Auto RCON: Server restart in 1 minute!";
{
	remoteExecCall ["SOCK_fnc_syncData",_x];
	uiSleep 0.25;
	if(count (crew vehicle _x) isEqualTo 1) then {
		deleteVehicle vehicle _x;
	};
	if(driver vehicle _x == _x && count (crew vehicle _x) > 1 && vehicle _x isKindOf "Air") then {
		{
			[{
				player allowDamage false;
				moveOut player;
				player setVelocity [0,0,0];
				player setPos getMarkerPos "civ_spawn_1";
				[] spawn {
					sleep 5;
					player allowDamage true;
				};
			}] remoteExecCall ["BIS_fnc_call",_x];
		} foreach (crew vehicle _x);
	};
	"extDB2" callExtension format ["1:rcon:#kick %1",getPlayerUID _x];	
} foreach allPlayers;
waitUntil{uiSleep 1; (life_restartTime - serverTime < 0) || (count allPlayers isEqualTo 0)};
"extDB2" callExtension "1:rcon:#shutdown";