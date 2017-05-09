params ["_ct"];

_pia = Current_Cars find _ct;
Current_Cars deleteAt _pia;

_garage = player getVariable "garage";
_information = _ct getVariable "information";

	if(!isnil "_information") then {

	_garage pushBack _information;

	player setVariable ["garage", _garage, false];

	[getPlayerUID player, "usedgarage", current_cars] remoteExec ["Server_fnc_setVariable",2];
	
};

deleteVehicle _ct;