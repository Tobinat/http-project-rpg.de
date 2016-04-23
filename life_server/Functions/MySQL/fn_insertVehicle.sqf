/*
	File: fn_insertVehicle.sqf
	
	
	Description:
	Inserts the vehicle into the database
*/

params [["_uid", "", [""]], ["_side", "", [""]], ["_type", "", [""]], ["_className", "", [""]], ["_color", -1], ["_plate", -1, [0]]];

if(_uid isEqualTo "" OR _side isEqualTo "" OR _type isEqualTo "" OR _className isEqualTo "" OR _color isEqualTo -1 OR _plate isEqualTo -1) exitWith {};

_query = format["INSERT INTO vehicles (side, classname, type, pid, alive, active, inventory, color, plate) VALUES ('%1', '%2', '%3', '%4', '1','1','""[]""', '%5', '%6')",_side,_className,_type,_uid,_color,_plate];

[_query,1] call DB_fnc_asyncCall;