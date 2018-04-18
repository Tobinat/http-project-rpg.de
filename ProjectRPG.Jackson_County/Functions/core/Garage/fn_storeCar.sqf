params ["_ct"];
private["_license"];

_pia = Current_Cars find _ct;
Current_Cars deleteAt _pia;

_garage = player getVariable "garage";
_information = _ct getVariable "information";

	if(!isnil "_information") then {
	_license = _information select 0;
		_fuel = fuel _ct;
		_damage = damage _ct;

		if (_damage > 0.99) then {
			//nothing
		} else {
			_information set [9,_fuel];
			_information set [10,_damage];
			_garage pushBack _information;
			player setVariable ["garage", _garage, false];
		};


	[getPlayerUID player, "usedgarage", current_cars] remoteExec ["Server_fnc_setVariable",2];
	[_fuel,_damage,_license] remoteExec ["server_fnc_updateFuelDamage", 2];
	uiSleep 0.5;
	
};
_className = typeOf _ct;
deleteVehicle _ct;
_vehicleName = getText(configFile >> "CfgVehicles" >> _className >> "displayName");
[player,3,format ["%1 schował pojazd %2", name player, _vehicleName],"",_className,_vehicleName] remoteExec ["server_fnc_vehicleLog", 2];