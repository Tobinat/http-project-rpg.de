/*
	File: fn_wantedPunish.sqf
	
	
	Description:
	Checks to see if the person is wanted, if they are it will punish them.
*/

params [["_uid", "", [""]], "_index"];

if(_uid isEqualTo "") exitWith {};

_index = [_uid,life_wanted_list] call fnc_index;
if(_index isEqualTo -1) exitWith {};
[0] remoteExecCall ["life_fnc_removeLicenses",_uid];