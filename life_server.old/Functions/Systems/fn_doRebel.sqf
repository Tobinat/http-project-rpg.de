_mode = param [0,"",[""]];
_unit = param [1,objNull,[objNull]];

if(_mode == "dochecks") exitwith {
	_checkTime = 0;
	deletemarker "rebelShipment";
	_rebelshipment = createMarker ["rebelShipment", rebelshipment];
	_rebelshipment setMarkerShape "RECTANGLE";
	_rebelshipment setMarkerColor "ColorRed";
	_rebelshipment setMarkerSize [350,350];
	while{true} do {
		if((_unit getVariable["dead",FALSE]) || isNull _unit) exitwith { 
			deletemarker "rebelShipment";
			rebelshipment setvariable ["notCaptured", nil, true];
			rebelshipment setvariable ["progress", nil, true];
			rebelshipment setvariable ["finished", nil, true];
		};
		if((rebelshipment getVariable["finished",FALSE])) exitwith {};
		if(!(rebelshipment getVariable["progress",FALSE])) exitwith {};
		uisleep 1;
		_checkTime = _checkTime + 1;
		if(_checkTime > 1210) exitWith { 
			rebelshipment setvariable ["notCaptured", nil, true];			
			rebelshipment setvariable ["progress", nil, true];
			rebelshipment setvariable ["finished", nil, true];
			deletemarker "rebelShipment";
		};
	};
};

//add more options later?