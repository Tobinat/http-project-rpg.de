client_fnc_towvehicle = {
	_playerVehicle = vehicle Player;
	_towableVehicle = (nearestObjects [_playerVehicle, ["Car","Ship","Air"], 15]) select 1;
	if (vehicle player == player) exitWith {hint "You have to be in your towtruck!"};
    if (isNil "_towableVehicle") exitWith {hint"No vehicle found!";};
    if ({alive _x} count crew _towableVehicle > 0)exitWith {hint "That vehicle is not empty!";};
    if (speed _playerVehicle > 1) exitWith {hint "You must be idle."};
    vehicle player allowDamage false;	
	_playerVehicle setVariable ["Towing", 1, true];
	_playerVehicle setVariable ["VehicleBeingTowed", _towableVehicle, true];
	_towableVehicle attachTo [_playerVehicle, [1.2,-5,2], "TrackFLL"];
	sleep 1;
	vehicle player allowDamage true;
};

client_fnc_untowvehicle = {
	_playerVehicle = vehicle player;
	_towedVehicle = (_playerVehicle getVariable "VehicleBeingTowed");
	_towedVehicle attachTo [_playerVehicle, [1.2,-12,2], "TrackFLL"];
	detach _towedVehicle;
	_playerVehicle setVariable ["Towing", 0, true];
};

 