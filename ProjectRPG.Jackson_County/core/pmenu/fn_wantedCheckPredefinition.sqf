/*

	File: fn_wantedCheckPredefinition.sqf
	Author: Marcel "Variatox" Koch
	Server: project-rpg.de
	
	Description:
	Gibt Werte der geprüften Person zurück.
*/

params[
	"_target",
	["_caller",ObjNull,[ObjNull]]
];

if(isNil "_caller") exitWith {};
if(isNil "_target") exitWith {};
if(isNull _caller) exitWith {};
if(!alive _caller) exitWith {};

_bankRaw = cash_in_bank;
_nameT = name _target;
_bank = [_bankRaw] call life_fnc_numberText;

[_bank,_nameT] remoteExec ["life_fnc_wantedCheckFeedback",_caller];