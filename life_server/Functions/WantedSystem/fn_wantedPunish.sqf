/*
	File: fn_wantedPunish.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks to see if the person is wanted, if they are it will punish them.
*/
_uid = param [0,"",[""]];

if(_uid == "") exitWith {};

private _index = [_uid,life_wanted_list] call TON_fnc_index;
if(_index == -1) exitWith {};

[0] remoteExec ["life_fnc_removeLicenses",_uid];