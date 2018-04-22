_houseLevel = player getvariable "houselevel";

_cashCheck = [2,50000] call Client_fnc_sl_checkMoney_secure;

if!(_cashCheck) exitwith { hint "Du brauchst 50.000$"; };

if(_houselevel == 1) then { ["Erfolreich","Du hast dein Haus auf Stufe 2 aufgerüstet, die Änderung wird nach Reconnect wirksam.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",2,false]; [2,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 rüstete das Haus auf die zweite Stufe nach 50000$", name player],"50000", "", "2"] remoteExec ["server_fnc_economyLog", 2]; };
if(_houselevel == 2) then { ["Erfolreich","Du hast dein Haus auf Stufe 3 aufgerüstet, die Änderung wird nach Reconnect wirksam.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",3,false]; [3,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 rüstete das Haus auf die dritte Stufe nach 50000$", name player],"50000", "", "3"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 3) then { ["Erfolreich","Du hast dein Haus auf Stufe 4 aufgerüstet, die Änderung wird nach Reconnect wirksam.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",4,false]; [4,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 rüstete das Haus auf die vierte Stufe nach 50000$", name player],"50000", "", "4"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 4) then { ["Erfolreich","Du hast dein Haus auf Stufe 5 aufgerüstet, die Änderung wird nach Reconnect wirksam.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",5,false]; [5,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 rüstete das Haus auf die fuefte Stufe nach 50000$", name player],"50000", "", "5"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 5) then { ["Erfolreich","Du hast dein Haus auf Stufe 6 aufgerüstet, die Änderung wird nach Reconnect wirksam.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",6,false]; [6,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 rüstete das Haus auf die sechste Stufe nach 50000$", name player],"50000", "", "6"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 6) then { ["Erfolreich","Du hast dein Haus auf Stufe 7 aufgerüstet, die Änderung wird nach Reconnect wirksam.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",7,false]; [7,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 rüstete das Haus auf die sieben Stufe nach 50000$", name player],"50000", "", "7"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 7) then { ["Erfolreich","Du hast dein Haus auf Stufe 8 aufgerüstet, die Änderung wird nach Reconnect wirksam.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",8,false]; [8,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 rüstete das Haus auf die achte Stufe nach 50000$", name player],"50000", "", "8"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 8) then { ["Erfolreich","Du hast dein Haus auf Stufe 9 aufgerüstet, die Änderung wird nach Reconnect wirksam.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",9,false]; [9,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 rüstete das Haus auf die neunte Stufe nach 50000$", name player],"50000", "", "9"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 9) then { ["Information","Du hast dein Haus auf Max. Stufe",[255,69,0,1],""] call Client_fnc_showNotification; };

[50000] call Client_fnc_sl_removeBank_secure;
["HouseLvlUp"] spawn mav_ttm_fnc_addExp;

_chance = round (random 100);
if(_chance > 35) then {
	["Add","Karma",10] call client_fnc_sustain;
};