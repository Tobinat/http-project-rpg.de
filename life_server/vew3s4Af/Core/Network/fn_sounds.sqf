fnc_playsound = {
_source = _this select 0;
_sound = _this select 1;
_location = getpos _source;
if (!isServer) then {
		_thelogic = "logic" createvehiclelocal _location;
		_thelogic say3D (_this select 1);
		[_source,_thelogic] spawn fnc_stopsound;
	};
};

fnc_stopsound = {
	_source = _this select 0;
	_thelogic = _this select 1;
	_lockpicking = _source getVariable ["lockpicking", false];
	if (_lockpicking) exitwith {
		uiSleep 3;
		[_source,_thelogic] spawn fnc_stopsound;
	};
	deletevehicle _thelogic;
};

A3L_fnc_AlarmHint = {
if (isDedicated) exitwith {};
	if (side player == west) then {
		["911 Automatic Dispatch: The bank in Lakeside is being robbed!",false] spawn domsg;
	};
};

A3L_fnc_AlarmPHint = {
if (isDedicated) exitwith {};
	if (side player isEqualTo west) then {
		["911 Automatic Dispatch: Jailbreak in progress, all units respond!",false] spawn domsg;
	};
};

A3L_Fnc_BankAlarm = {
	params ["_timer", "_object"];
	if (prisondoor getVariable ["robbed", false]) exitwith {};
	prisondoor setVariable ["robbed", true, true];
	[_timer,prisondoor] remoteExec ["A3L_Fnc_PlayAlarm"];
	[] remoteExecCall ["A3L_fnc_AlarmPHint"]; 
};

A3L_Fnc_PlayAlarm = {
	params ["_timer", "_object"];
	if (isServer) exitwith {
		uisleep _timer;
		_veh = createVehicle ["A3L_Bomb", [9623.14,10052.4,1.4], [], 0, "CAN_COLLIDE"]; 
		_veh setDir 310.922; 
		_veh setpos (getpos _veh);
		deletevehicle _veh;
		"R_60mm_HE" createvehicle [9623.14,10052.4,-1];
		prisondoor animate ['maindoor1', 1.6]; 
		prisondoor animate ['maindoor2', -1.6];
		uiSleep 1600;
		prisondoor setVariable ["robbed", nil, true];
	};

	while {_timer > 0} do {
		_object say "c4_buttons";
		uiSleep 1;
		_timer = _timer - 1;
	};
	if (!isDedicated) then { 
		prisondoor say "bankAlarm" ;
	};

};
