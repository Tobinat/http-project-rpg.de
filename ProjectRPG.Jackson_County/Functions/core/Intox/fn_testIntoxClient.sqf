/*
	File: fn_testIntoxClient.sqf
	@Deo	
	Description:
	Tests the player.
*/

params [["_cop", ObjNull, [ObjNull]]];

if(isNull _cop) exitWith {};

[player,client_intox] remoteExec ["client_fnc_intoxTestReturn",_cop];