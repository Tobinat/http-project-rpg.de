 
 
_player = _this select 0; 
 
diag_log ["request medic %1", _player]; 
 
if(count currentEMS == 0) exitwith {}; 
{
	_unit = _x call BIS_fnc_getUnitByUid;
	[getpos _player] remoteExec ["client_fnc_requestMedic",_unit]; 
} foreach currentEMS;

