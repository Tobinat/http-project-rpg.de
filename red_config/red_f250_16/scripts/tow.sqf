client_fnc_towvehicle = {
    _myVeh = vehicle player;
    _car = (nearestObjects [_myVeh, ["Car","Truck"], 8]) select 1; 
	if (vehicle player == player) exitWith {hint "You have to be in your vehicle!"};
	if (isNil "_car") exitWith {hint"No vehicle found!";};
	//if ({alive _x} count crew _car > 0)exitWith {hint "That vehicle is not empty!";};
	if (speed _myVeh > 1) exitWith {hint "You must be idle."};
	vehicle player allowDamage false;
	_memes = 0;
	if (typeOf _car == "C_Quadbike_01_F") then {_car attachTo [(vehicle player), [0,-2,2] ]; _memes = 1;  };
	if (typeOf _car == "B_Quadbike_01_F") then {_car attachTo [(vehicle player), [0,-2,2] ]; _memes = 1;  };
	if (typeOf _car == "red_kawasaki_10_p_sheriff") then {_car attachTo [(vehicle player), [0,-2.1,0.5] ]; _memes = 1;  };
	if (typeOf _car == "red_kawasaki_10_p_trooper") then {_car attachTo [(vehicle player), [0,-2.1,0.5] ]; _memes = 1;  };
	
	if (_memes == 0) exitWith {hint "This vehicle is not an ATV/Motorcycle/Stretcher!"};
	 
	 _myVeh setVariable ["Tow", _car, true]; //set variable.... stop people dropping when they not towing etc.
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
	_car setPos (_veh modelToWorld [0, -6, 3]);
	_veh setVariable["Tow", objNull, true];
	vehicle player allowDamage true;
};