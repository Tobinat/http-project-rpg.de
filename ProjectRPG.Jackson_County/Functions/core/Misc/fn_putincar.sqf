// put in vehicle CurrentCursorTarget;

private["_unit"];

_unit = CurrentCursorTarget;
if(isNull _unit OR !isPlayer _unit) exitWith {};
_nearestVehicle = nearestObjects[getPosATL _unit,["Car","Motorcycle","Bicycle","Motorbike","Ship","Submarine","Air"],10] select 0;
if(isNil "_nearestVehicle") exitWith {["Kein Fahrzeug in der nähe.", false] spawn domsg;};
detach _unit;
[_nearestVehicle] remoteExec ["client_fnc_moveIn",_unit];
[player,_unit,2,format ["%1 setzte %2 ins Fahrzeug.", name player, name _unit],""] remoteExec ["server_fnc_actionLog", 2];
