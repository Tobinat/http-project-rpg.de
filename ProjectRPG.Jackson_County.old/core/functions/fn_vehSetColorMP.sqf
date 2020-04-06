/*
	Author: Marcel "VariatoX" Koch
	File: fn_vehSetColorMP.sqf
	Server: project-rpg.de
	
	Description:
	Sets the color variable of Jonzies' Cars to the vehicle (MP compatibility)
*/

params [
	["_red",-1],
	["_green",-1],
	["_blue",-1],
	["_car",ObjNull,[ObjNull]]
];

if(isNull _car) exitWith {}; //No vehicle
if(_red isEqualTo -1) exitWith {};
if(_green isEqualTo -1) exitWith {};
if(_blue isEqualTo -1) exitWith {};

_car setVariable ["Red",_red,true];
_car setVariable ["Green",_green,true];
_car setVariable ["Blue",_blue,true];