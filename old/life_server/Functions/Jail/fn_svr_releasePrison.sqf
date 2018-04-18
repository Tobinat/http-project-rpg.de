/*
	fn_svr_releasePrison.sqf
*/

_uid = getplayerUID (_this select 0);
_minute = 0;
_reason = "none";
_query = format["UPDATE players SET jailtime='%1', arrestreason='%2' WHERE playerid='%3'",_minute,_reason,_uid];

if(!isNil "life_HC_isActive" && {life_HC_isActive}) then {
	[_query, 1] remoteExecCall ["DB_fnc_asyncCall", hc_1];
} else {
	[_query,1] call DB_fnc_asyncCall;
};