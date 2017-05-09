/*
_textures = getArray(configfile >> "cfgivorytextures" >> "textures"); hint format["%1",_textures];
[this] call ivory_fnc_initVehicle;
    This will randomize the color of the body, ceteris paribus.
    This will turn the car into Matte Olive Green with White rims and 100% tint on windows and 50% tint on lights.
[this] call ivory_fnc_setLicense;
vehspawned = createVehicle ["ivory_r34", getpos player, [], 0, "NONE"];
[vehicle player, "nopixel"] call ivory_fnc_setLicense;
[vehicle player, ["white","matte"], "white", 1, 1] call ivory_fnc_initVehicle;

 license, class, color, finish, rims, windows, lights, statuses, owner 


*/

_currentitemindex = lbCurSel 1500;
if (_currentitemindex == -1) exitWith {};
_car = lbData [1500, _currentitemindex];

lbDelete [1500, _currentitemindex];

_car = call compile format["%1", _car]; 

if((_this select 0) == 1) exitwith { 
	_vehicle = _car createvehicle getpos player; 
	_vehicle allowdamage false; 
	[_vehicle] call client_fnc_spawnvehicle;
	_vehicle allowdamage true;
	Current_Cars pushBack _vehicle;
};

_numberPlate = _car select 0;
_className = _car select 1;
_carColor = _car select 2;
_carFinish = _car select 3;
_wheelColor = _car select 4;
_windowTint = _car select 5;
_headlightTint = _car select 6;
_status = _car select 7;
_carowner = _car select 8;


closeDialog 0;
_garage = player getVariable "garage";
_pia = _garage find _car;
_garage deleteAt _pia;
player setVariable ["garage", _garage, false];

_vehicle = _classname createVehicle [(getpos player) select 0,(getpos player) select 1,((getpos player) select 2) + 100];

waitUntil {!isNil "_vehicle" && {!isNull _vehicle}};

//changing the vehicle to non-impounded
if(_status == 0) then { 
	[_numberPlate,1,_vehicle,player] remoteExec ["Server_fnc_updateCarStatus",2];
	_car SET [7,1];
};

_vehicle allowdamage false;

[_vehicle, "information", _car] remoteExec ["Server_fnc_setVariable",2];
_vehicle setvariable ["information",_car,false];

if (_vehicle isKindOf "Car") then {

	if (str _className find "vory_" > -1) then {
		[_vehicle, [_carColor,_carFinish], _wheelColor, _windowTint, _headlightTint] remoteexec ["client_fnc_IvoryInitVehicle",2];
		[_vehicle, _numberPlate, "ivory"] remoteexec ["client_fnc_numberPlate",2];
	};

	if (str _className find "onzie_" > -1 || str _className find "adm_" > -1  || str _className find "ADM_" > -1 ) then {
		[_vehicle, [_carColor,_carFinish]] remoteexec ["client_fnc_initVehicle",2];
		[_vehicle, _numberPlate, "jonzie"] remoteexec ["client_fnc_numberPlate",2];
	};

	if (str _className find "nopixel_" > -1 ) then {
		[_vehicle, [_carColor,_carFinish]] remoteexec ["client_fnc_initVehicle",2];
	};

};

[_vehicle] call client_fnc_spawnvehicle;
_vehicle allowdamage true;
Current_Cars pushBack _vehicle;
[getPlayerUID player, "usedgarage", Current_Cars] remoteExec ["Server_fnc_setVariable",2];
