_target = call compile format["%1",(lbData[1500,(lbCurSel 1500)])];
_statementsent = call compile format["%1",(lbData[1501,(lbCurSel 1501)])];

if (_statementsent == 1) then {
	player allowdamage false;
	player setpos getpos _target;
	uisleep 1;
	player allowdamage true;
	[player,_target,1,format ["%1 teleportował się do %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if (_statementsent == 2) then {
	[_target,false] remoteExec ["allowdamage", _target]; 
	_target setpos getpos player;
	uisleep 1;
	[_target,true] remoteExec ["allowdamage", _target];
	[player,_target,2,format ["%1 teleportował %2 do siebie",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 3) then {
	[_target,false] remoteExec ["allowdamage", _target];
	[] remoteExec ["client_fnc_adminGodmode", _target];
	[player,_target,3,format ["%1 włączył godmode dla %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2]; 
};

if(_statementsent == 4) then {
	[_target,true] remoteExec ["allowdamage", _target]; 
	[] remoteExec ["client_fnc_adminGodmode", _target];
	[player,_target,4,format ["%1 wyłączył godmode dla %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 5) then {
	[_target,true] remoteExec ["hideobjectglobal", 2]; 
	player setVariable ["st_hide",true, true];
	[player,_target,5,format ["%1 włączył niewidzialność dla %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 6) then {
	[_target,false] remoteExec ["hideobjectglobal", 2];
	player setVariable ["st_hide",false, true];
	[player,_target,6,format ["%1 wyłączył niewidzialność dla %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 7) then {
	["Remove",1,_target] remoteExec ["Client_Fnc_DoHealth", _target]; 
	[player,_target,7,format ["%1 zabił %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 8) then {
	[] remoteExec ["server_fnc_statsaveloop", 2];
	["Wykonałeś synchronizację wszystkich graczy!", true] spawn domsg;
	[player,objNull,8,format ["%1 wykonał synchronizację graczy",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 9) then {
	true remoteExec ["disableuserinput", _target]; 
	[player,_target,9,format ["%1 wyłączył sterowanie dla %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 10) then {
	false remoteExec ["disableuserinput", _target]; 
	[player,_target,10,format ["%1 włączył sterowanie dla %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
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
	[player,_target,11,format ["%1 usunął wszystkie przedmioty gracza %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 12) then {
	_units = nearestObjects [player, ["Man"], 300];
	{
		[] remoteExec ["client_fnc_restrained",_x];
	} foreach _units - [player];
	[player,_target,32,format ["%1 skuł osoby w pobliżu 300m",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 13) then {
	[] remoteExec ["client_fnc_fullheal", _target]; 
	["SET",0] remoteexec ["Client_Fnc_DoHealth",_target];
	[player,_target,12,format ["%1 uzdrowił %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 14) then {
	[_target] remoteExec ["client_fnc_revived", _target]; 
	[player,_target,13,format ["%1 odrodził %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 15) then {
	if(vehicle _TARGET != _target) then {
		[(vehicle _TARGET)] spawn client_fnc_moveIn;
		[player,_target,14,format ["%1 przesunął %2 w pojeździe",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
	};
};

if(_statementsent == 16) then {
	_target = driver (vehicle _target);
	[_target] remoteExec ["client_fnc_pulloutVeh", _target]; 
	[player,_target,15,format ["%1 wyciągnął kierowcę z pojazdu gdzie znajdował się gracz %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 17) then {
	private["_crew"];
	_crew = crew (vehicle _target);
	_veh = (vehicle _target);
	{
		[_x] remoteExec ["client_fnc_pulloutVeh",_x];
	} foreach _crew;
	[player,_target,16,format ["%1 wyciągnął wszystkich z pojazdu gdzie znajdował się gracz %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 18) then {
	if(isNil "adminESP") then { adminESP = false; };
	if(!adminESP) exitwith { adminESP = true; client_ID_PlayerTags = ["client_PlayerTags","onEachFrame","client_fnc_adminESP"] call BIS_fnc_addStackedEventHandler; [player,objNull,17,format ["%1 włączył adminESP",name player],""] remoteExec ["server_fnc_adminLog", 2]; };
	if(adminESP) exitwith { adminESP = Nil; ["client_PlayerTags", "onEachFrame"] call BIS_fnc_removeStackedEventHandler; [player,objNull,18,format ["%1 wyłączył adminESP",name player],""] remoteExec ["server_fnc_adminLog", 2];};
};

if(_statementsent == 19) then {
	_units = nearestObjects [player, ["Man"], 300];
	_loadout = getunitloadout player;
	{
		[_x,_loadout] remoteExec ["setunitloadout",_x];
	} foreach _units - [player];
	[player,objNull,19,format ["%1 ustawił pobliskim (300m) graczom swój ekwipunek (%2)",name player, _loadout],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 20) then {
	_units = nearestObjects [player, ["Man"], 300];
	{
		[_x,getpos player] remoteExec ["setPOS",_x];
	} foreach _units - [player];
	[player,objNull,20,format ["%1 przeteleportował wszystkich graczy z 300m do siebie",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 21) then {
	_units = nearestObjects [player, ["Man"], 300];
	{
		[_x] remoteExec ["client_fnc_revived",_x];
	} foreach _units - [player];
	[player,objNull,21,format ["%1 odrodził graczy w zasięgu 300m od siebie",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 22) then {
	{
		[_x] remoteExec ["client_fnc_revived",_x];
	} foreach allplayers;
	[player,objNull,22,format ["%1 odrodził wszystkich graczy na serwerze",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 23) then {
	params ["_veh"];
	if (isNull _target) exitWith {};
	_veh = vehicle _target;
	_locked = locked _veh;
	if(_locked == 2 || _locked == 3) then 
	{
		_veh lock 0;
		[player,_target,23,format ["%1 otworzył pojazd gdzie znajdował się gracz %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
	} 
		else 
	{
		_veh lock 2;
		[player,_target,24,format ["%1 zamknął pojazd gdzie znajdował się gracz %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
	};
};

if(_statementsent == 24) then {
	if(isNil "Ghosting") then { Ghosting = false; };
	if(!Ghosting) exitwith {
		Ghosting = true;
		while{Ghosting} do {
			if(vehicle _target == _target) then {
				if(player IN (attachedobjects _target)) then { sleep 3; } else { player attachTo [_target, [0, 0, 1] ]; sleep 5; [player,_target,25,format ["%1 rozpoczął ghostSpectate na graczu %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];};
			};

			if(vehicle _target != _target) then {
				if(player IN (attachedobjects vehicle _target)) then { sleep 3; } else { player attachTo [vehicle _target, [0, 0, 1] ]; sleep 5; [player,_target,25,format ["%1 rozpoczął ghostSpectate na graczu %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];};
			};
		};
	};
	if(Ghosting) exitwith { detach player; Ghosting = False; [player,objNull,26,format ["%1 skończył ghostSpectate %2",name player],""] remoteExec ["server_fnc_adminLog", 2];};
};

if(_statementsent == 25) then {
	["Wyrzuciłeś wszystkich graczy z serwera!", true] spawn domsg;
	[player,objNull,31,format ["%1 wyrzucił z gry wszystkich graczy",name player],""] remoteExec ["server_fnc_adminLog", 2];
	["Kicked",false,true] remoteExec ["BIS_fnc_endMission", playableunits];
};


if(_statementsent == 26) then {
	if(isNil "LoggedIn") then { LoggedIn = false; };
	if(!LoggedIn) exitwith { 
		onMapSingleClick "if (loggedIn) then {vehicle player setPos _pos; [player,objNull,29,format [""%1 przeteleportował się na pozycję %2"",name player, _pos],_pos] remoteExec [""server_fnc_adminLog"", 2];};";
		LoggedIn = true;
		[player,objNull,27,format ["%1 włączył toggleTP",name player],""] remoteExec ["server_fnc_adminLog", 2];
	};
	if(LoggedIn) exitwith { LoggedIn = False; [player,objNull,28,format ["%1 wyłączył toggleTP",name player],""] remoteExec ["server_fnc_adminLog", 2];};
};

if(_statementsent == 27) then {
	[player,_target,30,format ["%1 wyrzucił z gry %2",name player,name _target],""] remoteExec ["server_fnc_adminLog", 2];
	["Kicked",false,true] remoteExec ["BIS_fnc_endMission", _target];
};

if(_statementsent == 28) then {
	[1000] remoteExec ["Client_fnc_sl_addCash_secure", _target];
	[player,objNull,34,format ["%1 dodał sobie 1000$",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 29) then {
	closeDialog 0;
	["Open",true] spawn BIS_fnc_arsenal;
	[player,objNull,35,format ["%1 otworzył Arsenal",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 30) then {
	closeDialog 0;
	createDialog "RscDisplayDebugPublic";
	[player,objNull,36,format ["%1 otworzył Debug Console",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 31) then {
	["add","food",100] remoteExec ["client_fnc_sustain", _target];
	[player,_target,37,format ["%1 nakarmił żołądek %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 32) then {
	["add","drink",100] remoteExec ["client_fnc_sustain", _target];
	[player,_target,38,format ["%1 napoił żołądek %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 33) then {
	["remove","unhealthiness",100] remoteExec ["client_fnc_sustain", _target];
	[player,_target,39,format ["%1 polepszył poczucie %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 34) then {
	["add","battery",200] remoteExec ["client_fnc_sustain", _target];
	[player,_target,40,format ["%1 naładował telefon %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 35) then {
	closeDialog 0;
	[] call BIS_fnc_camera;
	[player,objNull,41,format ["%1 otworzył kamerę",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 36) then {
	closeDialog 0;
	createDialog "adminMessage";
};

if(_statementsent == 37) then {
	if (kif_admin<=4) then {
		adminInteractions = 1;
		[player,objNull,43,format ["%1 włączył interakcje administratora stopień 1",name player],""] remoteExec ["server_fnc_adminLog", 2];
	};
	if (kif_admin==5) then {
		adminInteractions = 2;
		[player,objNull,44,format ["%1 włączył interakcje administratora stopień 2",name player],""] remoteExec ["server_fnc_adminLog", 2];
	};
};

if(_statementsent == 38) then {
	adminInteractions = 0;
	[player,objNull,45,format ["%1 wyłączył interakcje administratora",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 39) then {
	[] remoteExec ["client_fnc_syncdata", _target];
	[player,_target,33,format ["%1 wykonał synchronizację gracza %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 40) then {
	_units = nearestObjects [player, ["Man"], 300];
	{
		[] remoteExec ["client_fnc_unrestrained",_x];
	} foreach _units - [player];
	[player,_target,46,format ["%1 rozskuł osoby w pobliżu 300m",name player],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 41) then {
	[] remoteExec ["client_fnc_restrained",_target];
	[player,_target,47,format ["%1 zakuł gracza %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};

if(_statementsent == 42) then {
	[] remoteExec ["client_fnc_unrestrained",_target];
	[player,_target,48,format ["%1 rozkuł gracza %2",name player, name _target],""] remoteExec ["server_fnc_adminLog", 2];
};
