/*
	wipekey1
	dowipekey1
	wipe key
	wipe key 1
	fn_dowipekeys.sqf
*/

params [["_house", objNull, [objNull]], "_housePos", "_query", ["_sharedz", 0]];

_housePos = getPosATL _house;
_query = format["UPDATE houses SET shared1='', shared2='', shared3='', shared4='', shared5='' WHERE pos='%2'",_sharedz,_housePos];

[_query,1] call DB_fnc_asyncCall;

