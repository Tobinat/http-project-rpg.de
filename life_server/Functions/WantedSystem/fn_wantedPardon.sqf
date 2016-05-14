/*
	File: fn_wantedPardon.sqf
	
	
	Description:
	Unwants / pardons a person from the wanted list.
*/

params [["_uid", "", [""]]];
if(_uid isEqualTo "") exitWith {};

_index = [_uid,life_wanted_list] call fnc_index;

if(_index != -1) then
{
	life_wanted_list set[_index,-1];
	life_wanted_list = life_wanted_list - [-1];
};