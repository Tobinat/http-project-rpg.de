/*
	fn_svr_sendToJail.sqf
*/

params [["_sender", Objnull, [Objnull]], "_bad", "_time", "_reasonofarrest"];
if(isNull _sender) exitWith {};

_uid = getplayerUID _sender;
_query = format["UPDATE players SET jailtime='%1', arrestreason='%2' WHERE playerid='%3'",_time,_reasonofarrest,_uid];

if(!isNil "life_HC_isActive" && {life_HC_isActive}) then {
	[_query, 1] remoteExecCall ["DB_fnc_asyncCall", hc_1];
} else {
	[_query,1] call DB_fnc_asyncCall;
};

_ret = [_sender] call life_fnc_wantedPerson;
[_ret,_bad] remoteExec ["life_fnc_jailsetup",_sender];