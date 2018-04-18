_houseLevel = player getvariable "houselevel";

_cashCheck = [2,50000] call Client_fnc_sl_checkMoney_secure;

if!(_cashCheck) exitwith { hint "Potrzebujesz $50.000!"; };

if(_houselevel == 1) then { ["Sukces","Ulepszyles dom do 2 poziomu, zmiany wejda w zycie po przelogowaniu.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",2,false]; [2,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 ulepszył dom do poziomu drugiego za 50000$", name player],"50000", "", "2"] remoteExec ["server_fnc_economyLog", 2]; };
if(_houselevel == 2) then { ["Sukces","Ulepszyles dom do 3 poziomu, zmiany wejda w zycie po przelogowaniu.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",3,false]; [3,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 ulepszył dom do poziomu trzeciego za 50000$", name player],"50000", "", "3"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 3) then { ["Sukces","Ulepszyles dom do 4 poziomu, zmiany wejda w zycie po przelogowaniu.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",4,false]; [4,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 ulepszył dom do poziomu czwartego za 50000$", name player],"50000", "", "4"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 4) then { ["Sukces","Ulepszyles dom do 5 poziomu, zmiany wejda w zycie po przelogowaniu.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",5,false]; [5,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 ulepszył dom do poziomu piątego za 50000$", name player],"50000", "", "5"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 5) then { ["Sukces","Ulepszyles dom do 6 poziomu, zmiany wejda w zycie po przelogowaniu.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",6,false]; [6,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 ulepszył dom do poziomu szóstego za 50000$", name player],"50000", "", "6"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 6) then { ["Sukces","Ulepszyles dom do 7 poziomu, zmiany wejda w zycie po przelogowaniu.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",7,false]; [7,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 ulepszył dom do poziomu siódmego za 50000$", name player],"50000", "", "7"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 7) then { ["Sukces","Ulepszyles dom do 8 poziomu, zmiany wejda w zycie po przelogowaniu.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",8,false]; [8,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 ulepszył dom do poziomu ósmego za 50000$", name player],"50000", "", "8"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 8) then { ["Sukces","Ulepszyles dom do 9 poziomu, zmiany wejda w zycie po przelogowaniu.",[0,255,0,1],""] call Client_fnc_showNotification; player setvariable ["houselevel",9,false]; [9,getplayeruid player] remoteExec ["server_fnc_synchouselevel",2]; [player,objNull,2,format ["%1 ulepszył dom do poziomu dziewiątego za 50000$", name player],"50000", "", "9"] remoteExec ["server_fnc_economyLog", 2];};
if(_houselevel == 9) then { ["Informacja","Maksymalny poziom domu osiagniety!",[255,69,0,1],""] call Client_fnc_showNotification; };

[50000] call Client_fnc_sl_removeBank_secure;
["HouseLvlUp"] spawn mav_ttm_fnc_addExp;

_chance = round (random 100);
if(_chance > 35) then {
	["Add","Karma",10] call client_fnc_sustain;
};
