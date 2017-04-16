client_fnc_towvehicle = {
	_myVeh = vehicle player;
	_car = (nearestObjects [_myVeh, ["LandVehicle"], 15]) select 1; 
	_carType = typeOf _car;
	if (vehicle player == player) exitWith {hint "You have to be in your tow truck!"};
	if (isNil "_car") exitWith {hint"No vehicle found!";};
	if ({alive _x} count crew _car > 0)exitWith {hint "That vehicle is not empty!";};
	if (speed _myVeh > 1 || {speed _myVeh < -1}) exitWith {hint "You must be idle."};
	vehicle player allowDamage false;

	if (!isClass (missionConfigFile >> "TowingPos" >> _carType)) then {
		_carType = "default";
	};
	_pos = getArray(missionConfigFile >> "TowingPos" >>_carType >> "pos");
	_car attachTo [(vehicle player), _pos];
	
	_myVeh setVariable ["Tow", _car, true]; 
	sleep 1;
	vehicle player allowDamage true;
};

client_fnc_untowvehicle = {
	_veh = vehicle player;
	_car = _veh getVariable ["Tow", objNull];	
	if (isNull _car) exitWith {hint "No car attached"};
	vehicle player allowDamage false;
	detach _car;
	waitUntil { isNull attachedTo _car };
	_car setPos (_veh modelToWorld [0, -11, 3]);
	_veh setVariable["Tow", objNull, true];
	vehicle player allowDamage true;
};
