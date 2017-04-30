/*
	givekey1
	dogivekey1
	give key
	give key 1
	fn_dogivekey1.sqf
*/

params [["_house", objNull, [objNull]], ["_shared1", "", [""]], ["_key", 0, [0]], "_housePos", "_query"];

_housePos = getPosATL _house;

_query = format["UPDATE houses SET shared%3='%1' WHERE pos='%2'",_shared1,_housePos,_key];

[_query,1] call DB_fnc_asyncCall;