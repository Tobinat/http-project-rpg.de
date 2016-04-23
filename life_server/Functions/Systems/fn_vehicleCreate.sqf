/*
	File: fn_vehicleCreate.sqf
	
	
	Description:
	Answers the query request to create the vehicle in the database.
*/

params [["_uid", "", [""]], ["_side", sideUnknown, [west]], ["_vehicle", objNull, [objNull]], ["_color", -1], "_type", "_classname", "_plate"];

if(_uid isEqualTo "" OR _side isEqualTo sideUnknown OR isNull _vehicle) exitWith {};
if(!alive _vehicle) exitWith {};
_className = typeOf _vehicle;
_type = switch(true) do
{
	case (_vehicle isKindOf "Car"): {"Car"};
	case (_vehicle isKindOf "Air"): {"Air"};
	case (_vehicle isKindOf "Ship"): {"Ship"};
	case (_vehicle isKindOf "Motorcycle"): {"Car"};
};

_side = switch(_side) do
{
	case west:{"cop"};
	case east: {"civ"};
	case civilian: {"civ"};
	case independent: {"med"};
	default {"Error"};
};

_plate = round(random(1000000));
[_uid,_side,_type,_classname,_color,_plate] call DB_fnc_insertVehicle;

_vehicle setVariable["dbInfo",[_uid,_plate],true];
_vehicle addEventHandler["Killed","_this spawn TON_fnc_vehicleDead"];