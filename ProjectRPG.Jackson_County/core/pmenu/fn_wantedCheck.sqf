/*

	File: fn_wantedCheck.sqf
	Author: Marcel "Variatox" Koch
	Server: lakeside-reallife.de
	
	Description:
	Standard file um Werte zu prüfen (wanted list sel person).
*/

private["_unit"];

if(playerSide != west) exitWith {hint "Du bist kein Polizist."};
if(!lrl_copLeitstelle) exitWith {hint "Nur die Leitstelle kann dies tun.";};

_unit = lbData [2406,lbCurSel 2406];
_unit = call compile format["%1",_unit];

if(isNil "_unit") exitWith { };
if(isNull _unit) exitWith { };


[_unit,player] remoteExec ["life_fnc_wantedCheckPredefinition",_unit];