/*
	File: fn_vehicleDelete.sqf
	
	
	Description:
	Doesn't actually delete since we don't give our DB user that type of
	access so instead we set it to alive=0 so it never shows again.
*/

params [["_vid", -1, [0]], ["_pid", "", [""]], ["_sp", 2500, [0]], ["_unit", objNull, [objNull]], ["_type", "", [""]],
"_query", "_sql", "_thread"];

if(_vid isEqualTo -1 OR _pid isEqualTo "" OR _sp isEqualTo 0 OR isNull _unit OR _type isEqualTo "") exitWith {};

_query = format["UPDATE vehicles SET alive='0' WHERE pid='%1' AND id='%2'",_pid,_vid];

_thread = [_query,1] call DB_fnc_asyncCall;

[[[_sp,_type],{["bank","add",_this select 0] call life_fnc_handleCash; 
hint format[(localize "STR_Garage_SoldCar"),[(_this select 0)] call life_fnc_numberText];}],"BIS_fnc_call",_unit,false] call BIS_fnc_MP;