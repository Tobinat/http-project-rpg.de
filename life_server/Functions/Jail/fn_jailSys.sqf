/*
	File: fn_jailSys.sqf
	
	
	Description:
	I forget?
*/

params [["_sender", ObjNull, [ObjNull]], ["_bad",false,[false]], "_ret"];

if(isNull _sender) exitWith {};
_ret = [_sender] call life_fnc_wantedPerson;
[_ret,_bad] remoteExec ["life_fnc_jailMe",_sender];