/*
sharp melee hit
*/
private["_curWep","_curMags","_attach"];
params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]]];
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; client_istazed = false;};
if(deadPlayer) exitWith {};

if(_shooter isKindOf "Man" && !deadPlayer) then
{
	["Remove",0.1] call client_fnc_doHealth;
};