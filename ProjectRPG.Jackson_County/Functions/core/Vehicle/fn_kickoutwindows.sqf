_doorkick = 45;
_failed = false;

while{_doorkick > 0} do {
	uisleep 1;
	_doorkick = _doorkick - 1;
	_locked = locked (vehicle player);

	if(_doorkick == 44 || _doorkick == 25 || _doorkick == 10) then {
		playSound3D ["cg_mission_files\sounds\glassbreak.ogg", vehicle player, false, getPosasl (vehicle player), 1, 1, 45];
	};

	if(_locked != 2) exitwith { _failed = true; };

	sleep 1;
	hint format["Wywazasz okna - %1 sekund.",_doorkick];
	_vehspeed = speed (vehicle player);
	if(_vehspeed > 0) exitwith { _failed = true; };
};

hint "";
if(!_failed) then { [vehicle player,0] remoteExecCall ["client_fnc_lock",vehicle player]; player action ["Eject", vehicle player]; };