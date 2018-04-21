_license = _this select 0;
_status = _this select 1;
_object = _this select 2;
_player = _this select 3;

_information = _object getVariable "information";

diag_log format["DEBUG - server_fnc_updateCarStatus: %1",_this];

_exit = false;
if (_status isEqualTo 0) then {
	 _license = _information select 0;
	 _carowner = _information select 8;
	 _className = typeOf _object;
	 _vehicleName = getText(configFile >> "CfgVehicles" >> _className >> "displayName");
	 if (_player in currentCop) then {
		[_player,objNull,18,format ["%1 odholował %2 (%3)", name _player, _vehicleName, _className],_className] call server_fnc_copLog;
	 } else {
		[_player,4,format ["%1 zezlomowal %2", name _player, _vehicleName],"",_className,_vehicleName] call server_fnc_vehiclelog;
	 };
	 if (isNil "_carowner") exitwith {_exit = true;};
	 {if (getplayeruid _x isEqualTo _carowner) exitwith { _player = _x; }; } foreach playableunits;
	 deleteVehicle _object;
};
if (_exit) exitwith { deleteVehicle _object; };
_updatestr = format["updateCarStatus:%1:%2", _status, _license];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;

if (_status isEqualTo 0) then {
	 _information SET[7, 0];
	 ["garage", _information] remoteExec["client_fnc_setVariable", _player];
	 deleteVehicle _object;
} else {
	_license = _information select 0;
	_information SET[7, 1];
	_fuel = fuel _object;
	_damage = damage _object;
	 if !(_damage == 1) then {
		_information set [9,_fuel];
		_information set [10,_damage];
		[_fuel,_damage,_license] call server_fnc_updateFuelDamage;
		_currentCars = _player getvariable "usedgarage";
	 	_currentCars pushback _information;
	 };
	 _player setvariable["usedgarage", _currentCars, false];
};
