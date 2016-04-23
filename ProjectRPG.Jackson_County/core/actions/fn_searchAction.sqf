/*
	File: fn_searchAction.sqf
	
	
	Description:
	Starts the searching process.
*/

params [["_unit", objNull, [objNull]]];
if(isNull _unit) exitWith { ["Du siehst keine Person an um ihn zu durch suchen..", false] spawn domsg; };

remoteExec ["fnc_searched",_unit];