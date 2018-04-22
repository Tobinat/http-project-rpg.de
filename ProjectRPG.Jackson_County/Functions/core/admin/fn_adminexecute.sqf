_target = call compile format["%1",(lbData[1500,(lbCurSel 1500)])];
_statementsent = call compile format["%1",(lbData[1501,(lbCurSel 1501)])];

if (_statementsent == 1) then {
	player allowdamage false;
	player setpos getpos _target;
	uisleep 1;
	player allowdamage true;
	[player,_target,1,format ["%1 hat sich zu %2 teleportiert",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if (_statementsent == 2) then {
	[_target,false] remoteExec ["allowdamage", _target]; 
	_target setpos getpos player;
	uisleep 1;
	[_target,true] remoteExec ["allowdamage", _target];
	[player,_target,2,format ["%1 hat %2 zu sich teleportiert",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 3) then {
	[_target,false] remoteExec ["allowdamage", _target];
	[] remoteExec ["client_fnc_adminGodmode", _target];
	[player,_target,3,format ["%1 hat fuer %2 Godmode aktiviert",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2]; 
};

if(_statementsent == 4) then {
	[_target,true] remoteExec ["allowdamage", _target]; 
	[] remoteExec ["client_fnc_adminGodmode", _target];
	[player,_target,4,format ["%1 hat Godmode fuer %2 deaktiviert",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 5) then {
	[_target,true] remoteExec ["hideobjectglobal", 2]; 
	player setVariable ["st_hide",true, true];
	[player,_target,5,format ["%1 hat Unsichtbarkeit fuer %2 aktiviert",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 6) then {
	[_target,false] remoteExec ["hideobjectglobal", 2];
	player setVariable ["st_hide",false, true];
	[player,_target,6,format ["%1 hat Unsichtbarkeit fuer %2 deaktiviert",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 7) then {
	["Remove",1,_target] remoteExec ["Client_Fnc_DoHealth", _target]; 
	[player,_target,7,format ["%1 hat %2 getoetet",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 8) then {
	[] remoteExec ["server_fnc_statsaveloop", 2];
	["Sie haben die Daten aller in die Cloud geladen!", true] spawn domsg;
	[player,objNull,8,format ["%1 Hat die Daten aller gespeichert",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 9) then {
	true remoteExec ["disableuserinput", _target]; 
	[player,_target,9,format ["%1 hat bei %2 die Steuerung deaktiviert",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 10) then {
	false remoteExec ["disableuserinput", _target]; 
	[player,_target,10,format ["%1 hat bei %2 die Steuerung reaktiviert",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 11) then {
	removeAllItems _target;
	removeAllContainers _target;
	removeAllWeapons _target;
	removeAllAssignedItems _target;
	removeUniform _target;
	removeVest _target;
	removeBackpack _target;
	removeGoggles _target;
	removeHeadgear _target;
	[_target] spawn client_fnc_destroyGroundHolders;
	[player,_target,11,format ["%1 hat Gegenstaende vom Boden Entfernt: %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 12) then {
	_units = nearestObjects [player, ["Man"], 300];
	{
		[] remoteExec ["client_fnc_restrained",_x];
	} foreach _units - [player];
	[player,_target,32,format ["%1 hat in einem 300m Radius alle gefesselt",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 13) then {
	[] remoteExec ["client_fnc_fullheal", _target]; 
	["SET",0] remoteexec ["Client_Fnc_DoHealth",_target];
	[player,_target,12,format ["%1 hat %2 geheilt",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 14) then {
	[_target] remoteExec ["client_fnc_revived", _target]; 
	[player,_target,13,format ["%1 hat %2 wiederbelebt",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 15) then {
	if(vehicle _TARGET != _target) then {
		[(vehicle _TARGET)] spawn client_fnc_moveIn;
		[player,_target,14,format ["%1 hat %2 in sein Fahrzeug teleportiert",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
	};
};

if(_statementsent == 16) then {
	_target = driver (vehicle _target);
	[_target] remoteExec ["client_fnc_pulloutVeh", _target]; 
	[player,_target,15,format ["%1 hat %2 aus dem Fahrzeug gezogen",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 17) then {
	private["_crew"];
	_crew = crew (vehicle _target);
	_veh = (vehicle _target);
	{
		[_x] remoteExec ["client_fnc_pulloutVeh",_x];
	} foreach _crew;
	[player,_target,16,format ["%1 zog alle aus dem Fahrzeug von %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 18) then {
	if(isNil "adminESP") then { adminESP = false; };
	if(!adminESP) exitwith { adminESP = true; client_ID_PlayerTags = ["client_PlayerTags","onEachFrame","client_fnc_adminESP"] call BIS_fnc_addStackedEventHandler; [player,objNull,17,format ["%1 aktiviert ESP",name player],""] remoteExec ["server_fnc_adminLog", 2]; };
	if(adminESP) exitwith { adminESP = Nil; ["client_PlayerTags", "onEachFrame"] call BIS_fnc_removeStackedEventHandler; [player,objNull,18,format ["%1 deaktivert ESP",name player],""] remoteExec ["server_fnc_adminLog", 2];};
};

if(_statementsent == 19) then {
	_units = nearestObjects [player, ["Man"], 300];
	_loadout = getunitloadout player;
	{
		[_x,_loadout] remoteExec ["setunitloadout",_x];
	} foreach _units - [player];
	[player,objNull,19,format ["%1 hat in einem Radius von 300m allen ein Loadout gegeben (%2)",name player, _loadout],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 20) then {
	_units = nearestObjects [player, ["Man"], 300];
	{
		[_x,getpos player] remoteExec ["setPOS",_x];
	} foreach _units - [player];
	[player,objNull,20,format ["%1 teleportierte alle in einem 300m Radius zusammen",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 21) then {
	_units = nearestObjects [player, ["Man"], 300];
	{
		[_x] remoteExec ["client_fnc_revived",_x];
	} foreach _units - [player];
	[player,objNull,21,format ["%1 belebte alle in einem 300m Radius wieder",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 22) then {
	{
		[_x] remoteExec ["client_fnc_revived",_x];
	} foreach allplayers;
	[player,objNull,22,format ["%1 hat alle Spieler wiederbelebt",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 23) then {
	params ["_veh"];
	if (isNull _target) exitWith {};
	_veh = vehicle _target;
	_locked = locked _veh;
	if(_locked == 2 || _locked == 3) then 
	{
		_veh lock 0;
		[player,_target,23,format ["%1 hat das Fahrzeug von %2 aufgeschlossen",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
	} 
		else 
	{
		_veh lock 2;
		[player,_target,24,format ["%1 hat das Fahrzeug von %2 abgeschlossen",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
	};
};

if(_statementsent == 24) then {
	if(isNil "Ghosting") then { Ghosting = false; };
	if(!Ghosting) exitwith {
		Ghosting = true;
		while{Ghosting} do {
			if(vehicle _target == _target) then {
				if(player IN (attachedobjects _target)) then { sleep 3; } else { player attachTo [_target, [0, 0, 1] ]; sleep 5; [player,_target,25,format ["%1 spectatet %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];};
			};

			if(vehicle _target != _target) then {
				if(player IN (attachedobjects vehicle _target)) then { sleep 3; } else { player attachTo [vehicle _target, [0, 0, 1] ]; sleep 5; [player,_target,25,format ["%1 spectatet %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];};
			};
		};
	};
	if(Ghosting) exitwith { detach player; Ghosting = False; [player,objNull,26,format ["%1 hat das spectaten von %2 beendet",name player],""] remoteExec ["server_fnc_adminLog", 2];};
};

if(_statementsent == 25) then {
	["Du hast alle spieler vom server geworfen!", true] spawn domsg;
	[player,objNull,31,format ["%1 warf alle Spieler vom Server",name player],""] remoteExec ["server_fnc_adminLog", 2];
	["Kicked",false,true] remoteExec ["BIS_fnc_endMission", playableunits];
};


if(_statementsent == 26) then {
	if(isNil "LoggedIn") then { LoggedIn = false; };
	if(!LoggedIn) exitwith { 
		onMapSingleClick "if (loggedIn) then {vehicle player setPos _pos; [player,objNull,29,format [""%1 hat %2 zu sich teleportiert"",name player, _pos],_pos] remoteExec [""server_fnc_adminLog"", 2];};";
		LoggedIn = true;
		[player,objNull,27,format ["%1 hat ToggleTP aktiviert",name player],""] remoteExec ["server_fnc_adminLog", 2];
	};
	if(LoggedIn) exitwith { LoggedIn = False; [player,objNull,28,format ["%1 hat ToggleTP deaktiviert",name player],""] remoteExec ["server_fnc_adminLog", 2];};
};

if(_statementsent == 27) then {
	[player,_target,30,format ["%1 warf %2 aus dem Spiel",name player,name _target],""] remoteExec ["server_fnc_adminLog", 2];
	["Kicked",false,true] remoteExec ["BIS_fnc_endMission", _target];
};

if(_statementsent == 28) then {
	[1000] remoteExec ["Client_fnc_sl_addCash_secure", _target];
	[player,objNull,34,format ["%1 gab sich 1000$",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 29) then {
	closeDialog 0;
	["Open",true] spawn BIS_fnc_arsenal;
	[player,objNull,35,format ["%1 ging ins Arsenal",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 30) then {
	closeDialog 0;
	createDialog "RscDisplayDebugPublic";
	[player,objNull,36,format ["%1 hat die Debug Konsole geoeffnet",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 31) then {
	["add","food",100] remoteExec ["client_fnc_sustain", _target];
	[player,_target,37,format ["%1 hat %2 gefuettert",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 32) then {
	["add","drink",100] remoteExec ["client_fnc_sustain", _target];
	[player,_target,38,format ["%1 hat %2 was zum trinken gegeben",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 33) then {
	["remove","unhealthiness",100] remoteExec ["client_fnc_sustain", _target];
	[player,_target,39,format ["%1 hat %2 besonders geheilt",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 34) then {
	["add","battery",200] remoteExec ["client_fnc_sustain", _target];
	[player,_target,40,format ["%1 hat das Telefon von %2 geladen",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 35) then {
	closeDialog 0;
	[] call BIS_fnc_camera;
	[player,objNull,41,format ["%1 oeffent die Kamera",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 36) then {
	closeDialog 0;
	createDialog "adminMessage";
};

if(_statementsent == 37) then {
	if (kif_admin<=4) then {
		adminInteractions = 1;
		[player,objNull,43,format ["%1 aktiviert Administratorinteraktion der Ebene 1",name player],""] remoteExec ["server_fnc_adminLog", 2];
	};
	if (kif_admin==5) then {
		adminInteractions = 2;
		[player,objNull,44,format ["%1 aktiviert Administratorinteraktion der Ebene 2",name player],""] remoteExec ["server_fnc_adminLog", 2];
	};
};

if(_statementsent == 38) then {
	adminInteractions = 0;
	[player,objNull,45,format ["%1 deaktivierte Administratorinteraktionen",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 39) then {
	[] remoteExec ["client_fnc_syncdata", _target];
	[player,_target,33,format ["%1 hat die Daten von %2 in die Cloud geladen",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 40) then {
	_units = nearestObjects [player, ["Man"], 300];
	{
		[] remoteExec ["client_fnc_unrestrained",_x];
	} foreach _units - [player];
	[player,_target,46,format ["%1 hat leute in einem 300m Radius entfesselt",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 41) then {
	[] remoteExec ["client_fnc_restrained",_target];
	[player,_target,47,format ["%1 hat %2 gefesselt",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 42) then {
	[] remoteExec ["client_fnc_unrestrained",_target];
	[player,_target,48,format ["%1 hat %2 entfesselt",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};
