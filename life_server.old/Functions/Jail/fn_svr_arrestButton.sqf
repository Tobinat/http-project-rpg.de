/*
	fn_svr_arrestButton.sqf
*/

_personyouwanjail = _this select 0;
_randomiets = _this select 1;
_timeinminute = _this select 2;
_reasonofjail = _this select 3;
[_personyouwanjail,_randomiets,_timeinminute,_reasonofjail] remoteExec ["life_fnc_sendToJail",_personyouwanjail];