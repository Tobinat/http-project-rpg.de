/*
	File: fn_wantedPardon.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Unwants / pardons a person from the wanted list.
*/

_uid = param [0,"",[""]];

if(_uid == "") exitWith {};

_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	life_wanted_list set[_index,-1];
	life_wanted_list = life_wanted_list - [-1];
	//publicVariable "life_wanted_list";
};

diag_log format["WANTED_LIST = %1", life_wanted_list];
_wantedlist = [life_wanted_list] call DB_fnc_mresArray;
_query = format["UPDATE wanted set list = '%1'", _wantedlist];

_queryResult = [_query,1] call DB_fnc_asyncCall;