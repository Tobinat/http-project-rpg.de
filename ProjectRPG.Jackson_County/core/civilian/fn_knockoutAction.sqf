/*
	File: fn_knockoutAction.sqf
	
	
	Description:
	Knocks out the target.
*/

params [["_target", objNull, [objNull]]];

life_antispamactive = true;
//Temp fail safe.
[] spawn {
	uiSleep 0.5;
	life_antispamactive = false;
};
_pos = (getPosASL player);


if(surfaceIsWater _pos) exitwith {};
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(player distance _target > 4) exitWith {};
life_knockout = true;
[player,"AwopPercMstpSgthWrflDnon_End2"] remoteExecCall ["life_fnc_animSync"];
uiSleep 0.08;
[player,"punch2"] spawn life_fnc_nearestSound;	
[_target,profileName] remoteExecCall ["life_fnc_knockedOut",_target];

uiSleep 3;
life_knockout = false;