// successKO CurrentCursorTarget;

if(imRestrained) exitwith {};
player playMoveNow "Incapacitated";
player setVariable ["tf_voiceVolume", 0, true];
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
_obj setPosATL (getPosATL player);
player attachTo [_obj,[0,0,0]];
[_obj] spawn {
	params ["_obj"];
	[3] call client_fnc_hudElements;
	uisleep 5;
	deleteVehicle _obj;
	player switchmove "";
	player setVariable ["tf_voiceVolume", 1, true];	
};