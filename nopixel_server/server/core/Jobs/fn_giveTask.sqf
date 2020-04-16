_position = _this select 0;
_type = _this select 1;
_input = _this select 2;
 
diag_log ["give task %1", _type]; 
 
if(_type == "News") exitwith {
	if(count currentNewsMan > 0) then {
		_players = [];
		_playeruid = currentNewsMan call BIS_fnc_selectRandom;
		_player = _playeruid call BIS_fnc_getUnitByUid;
		_players pushback _player;
		_player2uid = currentNewsMan call BIS_fnc_selectRandom;
		_player2 = _player2uid call BIS_fnc_getUnitByUid;
		if(_player2 != _player) then { _players pushback _player2; };
		[_position,_input] remoteExec ["client_fnc_startNews",_players];
	};
};
 
if(_type == "Tow") exitwith {
	_playeruid = currentTowTruckDrivers call BIS_fnc_selectRandom;
	_player = _playeruid call BIS_fnc_getUnitByUid;
	[_position,_input] remoteExec ["client_fnc_startTowTruck",_player]; 
};
