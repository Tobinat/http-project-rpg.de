/*
	fn_svr_jailToDB.sqf
*/

params ["_hour", "_minute", "_sender", "_query", "_uid"];
_uid = getplayerUID _sender;
_minute = _minute + (_hour * 60);
_query = format["UPDATE players SET jailtime='%1' WHERE playerid='%2'",_minute,_uid];

if(!isNil "life_HC_isActive" && {life_HC_isActive}) then {
	[_query,1] remoteExecCall ["DB_fnc_asyncCall",hc_1];
} else {
	[_query,1] call DB_fnc_asyncCall;
};
