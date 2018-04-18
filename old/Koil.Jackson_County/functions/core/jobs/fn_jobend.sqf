if(myJob IN ["Cop","Fire","EMS"]) then {
	_playerGear = player getVariable "lastSave";
	player setunitloadout _playerGear;
};



myjob = "none";
taskrunning = false;
dispatch = false;
playertasks = [];
deletemarkerlocal format["job%1",getPlayerUID player];

player setVariable ["coplevel", 0, false];

[player] remoteExec ["server_fnc_quitJob",2];

if(!isNil "vehspawned") then {
	if(!isNull vehspawned) then {
		_players = crew (vehspawned);
		if(count _players == 0) then {
			{ 
					detach _x;
					deletevehicle _x; 
			} forEach attachedObjects vehspawned;
			deletevehicle vehspawned;
		};
	};
};
[] call client_fnc_hudwork;

[getpos player,"text to display","destroy"] spawn client_fnc_hudHelper;