if(myJob IN ["Fire","EMS"]) then {
	_playerGear = player getVariable "lastSave";
	player setunitloadout _playerGear;
};
if (myjob == "Cop") then {
	_playerGear = player getVariable "lastSave";
	player setunitloadout _playerGear;
	[player,objNull,11,format ["%1 zakończył służbę", name player],""] remoteExec ["server_fnc_copLog", 2];
};

[player,objNull,4,format ["%1 zakończył pracę %2", name player, myjob],myjob] remoteExec ["server_fnc_jobLog", 2];
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
[] spawn client_fnc_tryhangup;

[getpos player,"text to display","destroy"] spawn client_fnc_hudHelper;