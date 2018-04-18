/*
	fn_spikeStrip.sqf
*/

params [["_spikeStrip", objNull, [objNull]], "_nearVehicles"];

if(isNull _spikeStrip) exitWith {}; //Bad vehicle type passed.

waitUntil {uiSleep 0.05; _nearVehicles = nearestObjects[getPos _spikeStrip,["Car"],5]; (count _nearVehicles > 0 || isNull _spikeStrip)};

if(isNull _spikeStrip) exitWith {}; //It was picked up?
_vehicle = _nearVehicles select 0;

if(isNil "_vehicle") exitWith {deleteVehicle _spikeStrip;};
[_vehicle] remoteExecCall ["life_fnc_spikeStripEffect",_vehicle];
deleteVehicle _spikeStrip;



