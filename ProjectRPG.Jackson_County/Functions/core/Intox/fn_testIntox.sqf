/*
	File: fn_testIntox.sqf
	@Deo	
	Description:
	Starts the testing process.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {};
["Überprüfe Menge des Alkoholwerts im Atem", false] spawn domsg;
uiSleep 2;
if(player distance _unit > 5 || deadPlayer || !alive _unit) exitWith {["Du kannst das nicht tun.", false] spawn domsg;};
[player] remoteExec ["client_fnc_testIntoxClient",_unit];
