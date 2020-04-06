/*
	File: fn_searchAction.sqf
	
	
	Description:
	Starts the searching process.
*/
params [["_unit", objNull, [objNull]]];
if(isNull _unit) exitWith { ["Du siehst keine Person an um ihn zu durch suchen..", false] spawn domsg; };

//systemChat format ["SearchAction: %1", name _unit];

//remoteExec ["fnc_searched",_unit];

//_handle = [_unit,false] spawn life_fnc_dropItems;

//_handle = [_unit] remoteExec ["life_fnc_dropItems", 2];
[player] remoteExec ["life_fnc_dropItems", _unit];
//waitUntil {scriptDone _handle};
life_carryWeight = 0;