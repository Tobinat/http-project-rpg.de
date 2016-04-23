/*
	File: fn_wantedRemove.sqf
	
	
	Description:
	Removes a person from the wanted list.
*/
private["_uid","_index"];
_uid = param [0,"",[""]];
if(_uid == "") exitWith {}; 

_index = [_uid,life_wanted_list] call fnc_index;
if(_index == -1) exitWith {};
life_wanted_list set[_index,-1];
life_wanted_list = life_wanted_list - [-1];