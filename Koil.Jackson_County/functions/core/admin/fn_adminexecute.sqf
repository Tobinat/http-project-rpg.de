_target = call compile format["%1",(lbData[1500,(lbCurSel 1500)])];
_statementsent = call compile format["%1",(lbData[1501,(lbCurSel 1501)])];

if (_statementsent == 1) then {
	player allowdamage false;
	player setpos getpos _target;
	uisleep 1;
	player allowdamage true;
};

if (_statementsent == 2) then {
	[_target,false] remoteExec ["allowdamage", _target]; 
	_target setpos getpos player;
	uisleep 1;
	[_target,true] remoteExec ["allowdamage", _target];
};

if(_statementsent == 3) then {
	[_target,false] remoteExec ["allowdamage", _target]; 
};

if(_statementsent == 4) then {
	[_target,true] remoteExec ["allowdamage", _target]; 
};

if(_statementsent == 5) then {
	[_target,true] remoteExec ["hideobjectglobal", 2]; 
};

if(_statementsent == 6) then {
	[_target,false] remoteExec ["hideobjectglobal", 2]; 
};

if(_statementsent == 7) then {
	["Remove",1,_target] remoteExec ["Client_Fnc_DoHealth", _target]; 
};

if(_statementsent == 8) then {
	[] remoteExec ["server_fnc_statsaveloop", 2]; 
};

if(_statementsent == 9) then {
	true remoteExec ["disableuserinput", _target]; 
};

if(_statementsent == 10) then {
	false remoteExec ["disableuserinput", _target]; 
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
};

if(_statementsent == 12) then {

};

if(_statementsent == 13) then {
	[] remoteExec ["client_fnc_fullheal", _target]; 
};

if(_statementsent == 14) then {
	[_target] remoteExec ["client_fnc_revived", _target]; 
};

if(_statementsent == 15) then {
	if(vehicle _TARGET != _target) then {
		[(vehicle _TARGET)] spawn client_fnc_moveIn;
	};
};

if(_statementsent == 16) then {
	[_target] remoteExec ["client_fnc_revived", _target]; 
};

if(_statementsent == 16) then {
	_target = driver (vehicle _target);
	[_target] remoteExec ["client_fnc_revived", _target]; 
};

if(_statementsent == 17) then {
	private["_crew"];
	_crew = crew (vehicle _target);
	_veh = (vehicle _target);
	{
		[_x] remoteExec ["client_fnc_pulloutVeh",_x];
	} foreach _crew;
};

if(_statementsent == 18) then {
	if(isNil "adminESP") then { adminESP = false; };
	if(!adminESP) exitwith { adminESP = true; client_ID_PlayerTags = ["client_PlayerTags","onEachFrame","client_fnc_adminESP"] call BIS_fnc_addStackedEventHandler;  };
	if(adminESP) exitwith { adminESP = Nil; ["client_PlayerTags", "onEachFrame"] call BIS_fnc_removeStackedEventHandler; };
};

if(_statementsent == 19) then {
	_units = nearestObjects [player, ["Man"], 300];
	_loadout = getunitloadout player;
	{
		[_x,_loadout] remoteExec ["setunitloadout",_x];
	} foreach _units - [player];
};

if(_statementsent == 20) then {
	_units = nearestObjects [player, ["Man"], 300];
	{
		[_x,getpos player] remoteExec ["setPOS",_x];
	} foreach _units - [player];
};

if(_statementsent == 21) then {
	_units = nearestObjects [player, ["Man"], 300];
	{
		[_x] remoteExec ["client_fnc_revived",_x];
	} foreach _units - [player];
};

if(_statementsent == 22) then {
	{
		[_x] remoteExec ["client_fnc_revived",_x];
	} foreach allplayers;
};

if(_statementsent == 23) then {
	params ["_veh"];
	_veh = vehicle _target;
	_locked = locked _veh;
	if(_locked == 2 || _locked == 3) then 
	{
		_veh lock 0;
	} 
		else 
	{
		_veh lock 2;
	};
};

if(_statementsent == 24) then {
	if(isNil "Ghosting") then { Ghosting = false; };
	if(!Ghosting) exitwith {
		Ghosting = true;
		while{Ghosting} do {
			if(vehicle _target == _target) then {
				if(player IN (attachedobjects _target)) then { sleep 3; } else { player attachTo [_target, [0, 0, 1] ]; sleep 5; };
			};

			if(vehicle _target != _target) then {
				if(player IN (attachedobjects vehicle _target)) then { sleep 3; } else { player attachTo [vehicle _target, [0, 0, 1] ]; sleep 5; };
			};
		};
	};
	if(Ghosting) exitwith { detach player; Ghosting = False;};
};

if(_statementsent == 25) then {
	["seagull", getpos player] remoteExec ["createvehicle",-2];
};


if(_statementsent == 26) then {
	if(isNil "LoggedIn") then { LoggedIn = false; };
	if(!LoggedIn) exitwith { 
		onMapSingleClick "if (loggedIn) then {vehicle player setPos _pos};";
		LoggedIn = true;
	};
	if(LoggedIn) exitwith { LoggedIn = False; };
};

if(_statementsent == 27) then {
	["seagull", getpos player] remoteExec ["createvehicle",_target];
};
