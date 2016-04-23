/*
	File: fn_spawnVehicle.sqf
	
	
	Description:
	Sends the query request to the database, if an array is returned then it creates
	the vehicle if it's not in use or dead.
*/

params [["_vid", -1, [0]], ["_pid", "",[""]], ["_sp", [], [[], ""]], ["_unit", objNull, [objNull]], ["_price", 0, [0]], ["_dir", 0, [0]],
"_query", "_sql", "_vehicle", "_nearVehicles", "_name", "_side", "_tickTime"];
_name = name _unit;
_side = side _unit;

if(_vid isEqualTo -1 OR _pid isEqualTo "") exitWith {};
if(_vid in serv_sv_use) exitWith {};
serv_sv_use pushBack _vid;
publicVariable "serv_sv_use";

_query = format["SELECT id, side, classname, type, pid, alive, active, plate, color FROM vehicles WHERE id='%1' AND pid='%2'",_vid,_pid];

_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";


if(typeName _queryResult isEqualTo "STRING") exitWith {};

_vInfo = _queryResult;
if(isNil "_vInfo") exitWith {
	serv_sv_use = serv_sv_use - [_vid];
	publicVariable "serv_sv_use";
};
if(count _vInfo isEqualTo 0) exitWith {
	serv_sv_use = serv_sv_use - [_vid];
	publicVariable "serv_sv_use";
};

if((_vInfo select 5) isEqualTo 0) exitWith
{
	serv_sv_use = serv_sv_use - [_vid];
	publicVariable "serv_sv_use";
	[1,format[(localize "STR_Garage_SQLError_Destroyed"),_vInfo select 2]] remoteExecCall ["life_fnc_broadcast", _unit];
};

if((_vInfo select 6) isEqualTo 1) exitWith
{
	serv_sv_use = serv_sv_use - [_vid];
	publicVariable "serv_sv_use";
	[1,format[(localize "STR_Garage_SQLError_Active"),_vInfo select 2]] remoteExecCall ["life_fnc_broadcast", _unit];
};
if(typeName _sp != "STRING") then {
	_nearVehicles = nearestObjects[_sp,["Car","Motorbike","Motorcycle","Bicycle","Bike","Air","Ship"],10];
} else {
	_nearVehicles = [];
};
if(count _nearVehicles > 0) exitWith
{
	serv_sv_use = serv_sv_use - [_vid];
	publicVariable "serv_sv_use";
	["bank","add",_price] remoteExecCall ["life_handleCash",_unit];
	[1,(localize "STR_Garage_SpawnPointError")] remoteExecCall ["life_fnc_broadcast", _unit];
};

_query = format["UPDATE vehicles SET active='1' WHERE pid='%1' AND id='%2'",_pid,_vid];

[_query,1] spawn DB_fnc_asyncCall;
_color = _vInfo select 8;

if(typeName _sp isEqualTo "STRING") then {
	_vehicle = createVehicle[(_vInfo select 2),[0,0,999],[],0,"NONE"];
	waitUntil {!isNil "_vehicle" && {!isNull _vehicle}};
	_vehicle allowDamage false;
	_obj = nearestObject [getMarkerPos _sp, "Land_pier_box_f"];
	_vehicle setDir markerDir _sp;
	_vehicle setPosATL (_obj modelToWorld [0,0,25.8]);
	uiSleep 0.6;
} else {
	_vehicle = createVehicle [(_vInfo select 2),_sp,[],0,"NONE"];
	waitUntil {!isNil "_vehicle" && {!isNull _vehicle}};	
	if(_color isEqualType []) then {
		_vehicle setVariable ["Red",str(_color select 0),true];
		_vehicle setVariable ["Green",str(_color select 1),true];
		_vehicle setVariable ["Blue",str(_color select 2),true];
		if(count _color > 3) then {
			[2,_vehicle,_color select 3] call life_fnc_animateJonzies;
		};
	};
	_vehicle allowDamage false;
	_vehicle setPos _sp;
	_vehicle setVectorUp (surfaceNormal _sp);
	_vehicle setDir _dir;
};
_vehicle allowDamage true;

[_vehicle] remoteExecCall ["life_fnc_addVehicle2Chain",_unit];
_vehicle lock 2;

if!(_color isEqualType []) then {
	[_vehicle,_color] remoteExec ["life_fnc_colorVehicle",_unit];
};
_vehicle setVariable["vehicle_info_owners",[[_pid,_name]],true];
_vehicle setVariable["dbInfo",[(_vInfo select 4),_vInfo select 7],true];

[_vehicle] call life_fnc_clearVehicleAmmo;

if((_vInfo select 1) isEqualTo "civ" && (_vInfo select 2) isEqualTo "B_Heli_Light_01_F" && typeName _color != typeName [] && {_color != 13}) then
{
	[_vehicle,"civ_littlebird",true] remoteExecCall ["life_fnc_vehicleAnimate",_unit];
};

if((_vInfo select 1) isEqualTo "cop" && (_vInfo select 2) in ["C_Offroad_01_F","B_MRAP_01_F"]) then
{
	[_vehicle,"cop_offroad",true] remoteExecCall ["life_fnc_vehicleAnimate",_unit];
};

if((_vInfo select 1) isEqualTo "med" && (_vInfo select 2) isEqualTo "C_Offroad_01_F") then
{
	[_vehicle,"med_offroad",true] remoteExecCall ["life_fnc_vehicleAnimate",_unit];
};

if((_vInfo select 1) isEqualTo "cop" && (_vInfo select 2) isEqualTo "IVORY_PRIUS") then
{
	[_vehicle,"cop_prius",true] remoteExecCall ["life_fnc_vehicleAnimate",_unit];
};
if((_vInfo select 1) isEqualTo "med" && (_vInfo select 2) isEqualTo "IVORY_PRIUS") then
{
	[_vehicle,"med_prius",true] remoteExecCall ["life_fnc_vehicleAnimate",_unit];
};
if((_vInfo select 1) isEqualTo "cop" && (_vInfo select 2) isEqualTo "IVORY_REV") then
{
	[_vehicle,"cop_rev",true] remoteExecCall ["life_fnc_vehicleAnimate",_unit];
};

[1,"Your vehicle is ready!"] remoteExecCall ["life_fnc_broadcast", _unit];
serv_sv_use = serv_sv_use - [_vid];
publicVariable "serv_sv_use";
