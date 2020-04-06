/*
	File: fn_testIntoxClient.sqf
	@Deo	
	Description:
	Tests the player.
*/

params [["_cop", ObjNull, [ObjNull]]];

if(isNull _cop) exitWith {};

[player,client_marijuana,client_cocaine,client_heroin,client_meth] remoteExec ["client_fnc_drugTestReturn",_cop];