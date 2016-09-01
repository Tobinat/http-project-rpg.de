/*
	
	
	Description:
	When a client disconnects this will remove their corpse and
	clean up their storage boxes in their house.
*/
private["_unit","_id","_uid"];
_unit = _this select 0;
_id = _this select 1;
_uid = _this select 2;
if(_unit == hc_1) exitWith {
	deleteVehicle _unit; 
	life_HC_isActive = false; 
	publicVariable "life_HC_isActive";
	life_loopExit = false;
	[] call TON_fnc_loops;
};
if(isNull _unit) exitWith {};
_containers = nearestObjects[_unit,["WeaponHolderSimulated"],5];
{deleteVehicle _x;} foreach _containers;

if!(_unit getVariable ["testDriving",objNull] isEqualTo objNull) then {
	_vehicle = _unit getVariable "testDriving";
	[_vehicle,0] remoteExec ["life_fnc_setFuel",_vehicle];
	[_vehicle] spawn {
		_time = time;
		_vehicle = _this select 0;
		waitUntil {sleep 1; (time - _time > 30 || speed _vehicle < 5)};
		deleteVehicle _vehicle;	
	};
};

if(_unit in carSalesmanList) then {
	carSalesmanList deleteAt (carSalesmanList find _unit);
	publicVariable "carSalesmanList";
};

_cash = _unit getVariable "cash";
_bank = _unit getVariable "bank";
_gear = [_unit getVariable "gear"] call DB_fnc_mresArray;
if(_unit getVariable ["loaded", true] && {!isNil "_cash"} && {!isNil "_bank"} && {!isNil "_gear"}) then {
	_side = switch(side _unit) do {
		case west: {"cop"};
		case civilian: {"civ"};
		case east: {"civ"};
		case independent: {"med"};
	};
	_query = format["UPDATE players SET cash='%1',bankacc='%2',%3_gear='%4' WHERE playerid='%5'",_cash,_bank,_side,_gear,_uid];
	if(!isNil "life_HC_isActive" && {life_HC_isActive}) then {
		[_query,1] remoteExecCall ["DB_fnc_asyncCall",hc_1];
	} else {
		[_query,1] call DB_fnc_asyncCall;
	};
};

{
	_pid = _x getVariable["steam64ID",""];
	
	if(_uid == _pid OR _pid == "" OR owner _x < 3) then {
		_containers = nearestObjects[_x,["WeaponHolderSimulated"],5]; //Fetch list of containers (Simulated = weapons)
		{deleteVehicle _x;} foreach _containers; //Delete the containers.
		deleteVehicle _x; //Get rid of the corpse when dead.
	}
} foreach allDeadMen;

{
	_pid = _x getVariable["steam64ID",""];
	
	if(_uid == _pid OR _pid == "" OR owner _x < 3) then {
		_containers = nearestObjects[_x,["WeaponHolderSimulated"],5]; //Fetch list of containers (Simulated = weapons)
		{deleteVehicle _x;} foreach _containers; //Delete the containers.
		deleteVehicle _x; //Get rid of the corpse when client dc's while alive.
	}
} foreach playableUnits;

{
	if(count units _x == 0) then {
		deleteGroup _x;
    };
} forEach allGroups;

deleteVehicle _unit;

_uid spawn TON_fnc_houseCleanup;