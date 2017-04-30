/*
	fn_serverTime.sqf
	Pennyworth
	Puts server start time in DB for website to pull
*/
private["_query"];

_id = (serverName select [(serverName find "0")+1,1]);
_query = format["UPDATE serverinstance SET startTime=NOW() WHERE id='%1'",_id];
[_query,1] call DB_fnc_asyncCall;
