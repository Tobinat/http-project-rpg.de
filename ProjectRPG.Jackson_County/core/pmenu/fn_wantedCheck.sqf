/*

	File: fn_wantedCheck.sqf
	Author: Marcel "Variatox" Koch
	Server: project-rpg.de
	
	Description:
	Standard file um Werte zu prüfen (wanted list sel person).
*/

private["_unit"];

if(playerSide != west OR !(player getVariable "udcLevel")) exitWith {};
if(!PRPG_leitstelle) exitWith {["Nur die Leitstelle kann eine Bonitätsprüfung durchführen!",false] spawn domsg;};

_unit = lbData [2406,lbCurSel 2406];
_unit = call compile format["%1",_unit];

if(isNil "_unit") exitWith { };
if(isNull _unit) exitWith { };


[_unit,player] remoteExec ["life_fnc_wantedCheckPredefinition",_unit];