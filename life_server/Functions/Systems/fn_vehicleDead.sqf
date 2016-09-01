/*
	File: fn_vehicleDead.sqf
	
	Description:
	Tells the database that this vehicle has died and can't be recovered.
*/
private["_vehicle","_plate","_uid","_query","_sql","_dbInfo","_thread"];
_vehicle = param [0,ObjNull,[ObjNull]];

if(isNull _vehicle) exitWith {}; 

_dbInfo = _vehicle getVariable["dbInfo",[]];
if(count _dbInfo isEqualTo 0) exitWith {};
_uid = _dbInfo select 0;
_plate = _dbInfo select 1;

_query = format["UPDATE vehicles SET alive='0', active='0' WHERE pid='%1' AND plate='%2'",_uid,_plate];

_thread = [_query,1] call DB_fnc_asyncCall;

uiSleep (1.3 * 60);
if(!isNil "_vehicle" && {!isNull _vehicle}) then {
	deleteVehicle _vehicle;
};