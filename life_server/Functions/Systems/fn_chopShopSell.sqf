/*
	File: fn_chopShopSell.sqf
	
	
	Description:
	Checks whether or not the vehicle is persistent or temp and sells it.
*/

params [["_unit", objNull, [objNull]], ["_vehicle", objNull, [objNull]], ["_price", 500, [0]], ["_cash", 0, [0]]];

if(isNull _vehicle OR isNull _unit) exitWith 
{
	["life_action_inUse",false] remoteExecCall ["life_fnc_netSetVar"];
};
if(life_chopShopInUse) exitWith {
	["The chop shop is already in use.",false] remoteExec ["domsg",_unit];
	life_flaggyMcFlag pushBack [_unit,_vehicle];
	_flag = 0;
	{
		if([_unit,_vehicle] isEqualTo _x) then {
			_flag = _flag + 1;
			if(_flag > 5) exitWith {
				if(!(getPlayerUID _unit isEqualTo life_lastChopperFlagged select 0) || (time - life_lastChopperFlagged select 1 > 30)) then {
					life_lastChopperFlagged = [getPlayerUID _unit,time];
					{titleText [format ["%1 (%2) has attempted to chop the same vehicle more than 5 times, please contact an admin with this message",name _unit,getPlayerUID _unit],"PLAIN"]} remoteExec ["bis_fnc_call", -2];
					diag_log format ["%1 (%2) was flagged for attempting to chop a %2 multiple times",name _unit,getPlayerUID _unit];
				};
			};
		};
	} foreach life_flaggyMcFlag;
};
life_chopShopInUse = true;
_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");

_dbInfo = _vehicle getVariable["dbInfo",[]];
if(count _dbInfo > 0) then {
	_uid = _dbInfo select 0;
	_plate = _dbInfo select 1;

	_query = format["UPDATE vehicles SET alive='0' WHERE pid='%1' AND plate='%2'",_uid,_plate];

	_sql = [_query,1] call DB_fnc_asyncCall;
};
if(typeOf _vehicle isEqualTo "Jonzie_Raptor") then {
	{
		detach _x;
		deleteVehicle _x;
	} foreach (_vehicle getVariable ["spotlights",[]]);
};		
deleteVehicle _vehicle;
[_unit,_cash,_displayName,_price,_vehicle] spawn {
	params ["_unit","_cash","_displayName","_price","_vehicle"];
	waitUntil {isNull _vehicle};
	["life_action_inUse",false] remoteExecCall ["life_fnc_netSetVar",_unit];
	["cash","add",_cash] remoteExecCall ["life_fnc_handleCash",_unit];
	[2,format[(localize "STR_NOTF_ChopSoldCar"),_displayName,[_price] call life_fnc_numberText]] remoteExecCall ["life_fnc_broadcast",_unit];
	sleep 3;
	life_chopShopInUse = false;
};
