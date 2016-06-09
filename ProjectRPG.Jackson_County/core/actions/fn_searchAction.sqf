/*
	File: fn_searchAction.sqf
	
	
	Description:
	Starts the searching process.
*/

systemChat "SearchAction";

params [["_unit", objNull, [objNull]]];
if(isNull _unit) exitWith { ["Du siehst keine Person an um ihn zu durch suchen..", false] spawn domsg; };

//remoteExec ["fnc_searched",_unit];

_handle = [_unit,false] spawn life_fnc_dropItems;
waitUntil {scriptDone _handle};
life_carryWeight = 0;