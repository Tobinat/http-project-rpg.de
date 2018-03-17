/*
	File: fn_simDisableGlobal.sqf
	Pennyworth
*/

params [["_obj", [], [[]]], ["_bool", false, [false]]];

if(_obj isEqualTo []) exitWith {};
{
	_x enableSimulationGlobal _bool;
} foreach _obj;