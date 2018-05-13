/*
	File: fn_testIntox.sqf
	@Deo	
	Description:
	Starts the testing process.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {};
["Nehme Blutprobe und teste auf Drogen", false] spawn domsg;
uiSleep 2;
if(player distance _unit > 5 || deadPlayer || !alive _unit) exitWith {["Du kannst das nicht tun.", false] spawn domsg;};
[player] remoteExec ["client_fnc_testdrugClient",_unit];
