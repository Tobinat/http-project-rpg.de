params["_target"];

if(count currentsecurity > 0) then {
	
	_playeruid = currentsecurity call BIS_fnc_selectRandom;
	_player = _playeruid call BIS_fnc_getUnitByUid;
	[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", _player];
	["Dispatch: Eine Gefahr in der Bank wurde auf der Karte Markiert!", false] remoteExec ["domsg", _player];

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", _unit];
		["911: Eine Gefahr in der Bank wurde auf der Karte Markiert!", false] remoteExec ["domsg", _unit];
		["dbank"] remoteExec ["client_fnc_playSound", _unit];
	} foreach currentCop;

	//if (myjob == "cop") then {playSound "dbank";};
} else {
	{
		_unit = _x call BIS_fnc_getUnitByUid;
		[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", _unit];
		["911: Eine Gefahr in der Bank wurde auf der Karte Markiert!", false] remoteExec ["domsg", _unit];
		["dbank"] remoteExec ["client_fnc_playSound", _unit];
		//if (myjob == "cop") then {playSound "dbank";};
	} foreach currentCop;
};
diag_log ["Start event, bank robbery: %1", _target];
