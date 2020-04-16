params["_target"];

if(count currentsecurity > 0) then {

		_playeruid = currentsecurity call BIS_fnc_selectRandom;
		_player = _playeruid call BIS_fnc_getUnitByUid;
		[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", _player];
		["Dispatch: Eine Gefahr wurde auf der Karte Markiert!", false] remoteExec ["domsg", _player];
		{
			_unit = _x call BIS_fnc_getUnitByUid;
			[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", _unit];
			["911: Eine Gefahr wurde auf der Karte Markiert!", false] remoteExec ["domsg", _unit];
		} foreach currentCop;
	
} else {
	{
		_unit = _x call BIS_fnc_getUnitByUid;
		[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", _unit];
		["911: Eine Gefahr wurde auf der Karte Markiert!", false] remoteExec ["domsg", _unit]; 
	} foreach currentCop;
};
diag_log ["Start event, robbery: %1", _target];
