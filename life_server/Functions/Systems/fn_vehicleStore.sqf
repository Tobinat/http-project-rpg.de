/*
	File: fn_vehicleStore.sqf
	
	
	Description:
	Stores the vehicle in the 'Garage'
*/
private["_vehicle","_impound","_vInfo","_vInfo","_plate","_uid","_query","_sql","_unit"];
_vehicle = param [0,ObjNull,[ObjNull]];
_impound = param [1,false,[true]];
_unit = param [2,ObjNull,[ObjNull]];

if(isNull _vehicle OR isNull _unit) exitWith {
	["life_impound_inuse",false] remoteExecCall ["life_fnc_netSetVar", _unit];				
	["life_garage_store",false] remoteExecCall ["life_fnc_netSetVar", _unit];				
};

_vInfo = _vehicle getVariable["dbInfo",[]];
if(count _vInfo > 0) then
{
	_plate = _vInfo select 1;
	_uid = _vInfo select 0;
};

if(_impound) then
{
	if(count _vInfo == 0) then 
	{
		["life_impound_inuse",false] remoteExecCall ["life_fnc_netSetVar", _unit];				
		if(!isNil "_vehicle" && {!isNull _vehicle}) then {
			if(typeOf _vehicle isEqualTo "Jonzie_Raptor") then {
				{
					detach _x;
					deleteVehicle _x;
				} foreach (_vehicle getVariable ["spotlights",[]]);
			};		
			deleteVehicle _vehicle;
		};
	} 
	else
	{
		_query = format["UPDATE vehicles SET active='0' WHERE pid='%1' AND plate='%2'",_uid,_plate];

		_thread = [_query,1] call DB_fnc_asyncCall;

		if(!isNil "_vehicle" && {!isNull _vehicle}) then {
			if(typeOf _vehicle isEqualTo "Jonzie_Raptor") then {
				{
					detach _x;
					deleteVehicle _x;
				} foreach (_vehicle getVariable ["spotlights",[]]);
			};		
			deleteVehicle _vehicle;
		};
		["life_impound_inuse",false] remoteExecCall ["life_fnc_netSetVar", _unit];				
	};
}
else
{
	if(count _vInfo == 0) exitWith
	{
		[1,(localize "STR_Garage_Store_NotPersistent")] remoteExecCall ["life_fnc_broadcast", _unit];
		["life_garage_store",false] remoteExecCall ["life_fnc_netSetVar", _unit];				
	};

	if(_uid != getPlayerUID _unit) exitWith
	{
		[1,(localize "STR_Garage_Store_NoOwnership")] remoteExecCall ["life_fnc_broadcast", _unit];
		["life_garage_store",false] remoteExecCall ["life_fnc_netSetVar", _unit];				
	};

	_query = format["UPDATE vehicles SET active='0' WHERE pid='%1' AND plate='%2'",_uid,_plate];

	_thread = [_query,1] call DB_fnc_asyncCall;

	if(!isNil "_vehicle" && {!isNull _vehicle}) then {
		if(typeOf _vehicle isEqualTo "Jonzie_Raptor") then {
			{
				detach _x;
				deleteVehicle _x;
			} foreach (_vehicle getVariable ["spotlights",[]]);
		};
		deleteVehicle _vehicle;
	};
	["life_garage_store",false] remoteExecCall ["life_fnc_netSetVar", _unit];		
	[1,(localize "STR_Garage_Store_Success")] remoteExecCall ["life_fnc_broadcast", _unit];
};
