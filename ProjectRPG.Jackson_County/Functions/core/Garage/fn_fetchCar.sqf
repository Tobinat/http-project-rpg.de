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

closeDialog 0;

_car = call compile format["%1", _car]; 

if((_this select 0) == 1) exitwith { 
	_vehicle = _car createvehicle getpos player; 
	_vehicle allowdamage false;
	_className = toLower(_car);
	if (str _className find "vory_" > -1) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
	};
	if (str _className find "onzie_" > -1 || str _className find "adm_" > -1  || str _className find "ADM_" > -1 ) then {
		[_vehicle, "", "jonzie"] remoteexec ["client_fnc_numberPlate",2];
	};
	if (str _className find "vv_" > -1 ) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
	};
	if (str _className find "adilac_" > -1 ) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
	};
	if (str _className find "_unmarked_bb" > -1) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
		[_vehicle, ["black","matte"], "black", 10, 10] call client_fnc_IvoryInitVehicle;
	};
	if (str _className find "_unmarked_br" > -1) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
		[_vehicle, ["wildstrawberry","matte"], "wildstrawberry", 10, 10] call client_fnc_IvoryInitVehicle;
	};
	if (str _className find "_unmarked_rr" > -1) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
		[_vehicle, ["darkred","matte"], "red", 10, 10] call client_fnc_IvoryInitVehicle;
	};
	if (str _className find "_unmarked_rb" > -1) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
		[_vehicle, ["darkred","matte"], "black", 10, 10] call client_fnc_IvoryInitVehicle;
	};
	if (str _className find "_unmarked_mbb" > -1) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
		[_vehicle, ["black","metallic"], "black", 10, 10] call client_fnc_IvoryInitVehicle;
	};
	if (str _className find "_unmarked_gb" > -1) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
		[_vehicle, ["dimgray","matte"], "black", 10, 10] call client_fnc_IvoryInitVehicle;
	};
	if (str _className find "_unmarked_mgb" > -1) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
		[_vehicle, ["sunglow","metallic"], "black", 10, 10] call client_fnc_IvoryInitVehicle;
	};
	if (str _className find "_unmarked_blb" > -1) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
		[_vehicle, ["brandeisblue","matte"], "black", 10, 10] call client_fnc_IvoryInitVehicle;
	};
	if (str _className find "_unmarked_mblb" > -1) then {
		[_vehicle, "", "ivory"] remoteexec ["client_fnc_numberPlate",2];
		[_vehicle, ["darkjunglegreen","metallic"], "black", 10, 10] call client_fnc_IvoryInitVehicle;
	};
	[_vehicle] call client_fnc_spawnvehicle;
	_vehicle allowdamage true;
	Current_Cars pushBack _vehicle;
};

_numberPlate = _car select 0;
_className = toLower(_car select 1);
_carColor = _car select 2;
_carFinish = _car select 3;
_wheelColor = _car select 4;
_windowTint = _car select 5;
_headlightTint = _car select 6;
_status = _car select 7;
_carowner = _car select 8;
_fuel = _car select 9;
_damage = _car select 10;

_garage = player getVariable "garage";
_pia = _garage find _car;
_garage deleteAt _pia;
player setVariable ["garage", _garage, false];

if (_damage > 0.99) exitWith {["Informacja","Mój pojazd jest doszczętnie rozwalony!",[255,69,0,1],""] call Client_fnc_showNotification; };

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
		[_vehicle, [_carColor,_carFinish], _wheelColor, _windowTint, _headlightTint] call client_fnc_IvoryInitVehicle;
		[_vehicle, _numberPlate, "ivory"] remoteexec ["client_fnc_numberPlate",2];
	};

	if (str _className find "red_" > -1) then {
		[_vehicle, [_carColor,_carFinish], _wheelColor, _windowTint, _headlightTint] call client_fnc_IvoryInitVehicle;
	};
	
	if (str _className find "sl_" > -1) then {
		[_vehicle, [_carColor,_carFinish], _wheelColor, _windowTint, _headlightTint] call client_fnc_IvoryInitVehicle;
	};

	if (str _className find "onzie_" > -1 || str _className find "adm_" > -1  || str _className find "ADM_" > -1 ) then {
		[_vehicle, [_carColor,_carFinish]] call client_fnc_initVehicle;
		[_vehicle, _numberPlate, "jonzie"] remoteexec ["client_fnc_numberPlate",2];
	};

	if (str _className find "opixel_" > -1 ) then {
		[_vehicle, [_carColor,_carFinish]] call client_fnc_initVehicle;
	};
	if (str _className find "vv_" > -1 ) then {
		[_vehicle, [_carColor,_carFinish], _wheelColor, _windowTint, _headlightTint] call client_fnc_IvoryInitVehicle;
		[_vehicle, _numberPlate, "ivory"] remoteexec ["client_fnc_numberPlate",2];
	};
	if (str _className find "adilac_" > -1 ) then {
		[_vehicle, [_carColor,_carFinish], _wheelColor, _windowTint, _headlightTint] call client_fnc_IvoryInitVehicle;
		[_vehicle, _numberPlate, "ivory"] remoteexec ["client_fnc_numberPlate",2];
	};
_vehicle setFuel _fuel;
_vehicle setDamage _damage;
};

[_vehicle] call client_fnc_spawnvehicle;
//_vehicle allowdamage true;
Current_Cars pushBack _vehicle;
//[1,_vehicle,_vehicle,_numberPlate,player] remoteExec ["server_fnc_fuelVehicle", 2];

[getPlayerUID player, "usedgarage", Current_Cars] remoteExec ["Server_fnc_setVariable",2];
_vehicleName = getText(configFile >> "CfgVehicles" >> _className >> "displayName");
[player,2,format ["%1 wyciagnał pojazd %2", name player, _vehicleName],"",_className,_vehicleName] remoteExec ["server_fnc_vehicleLog", 2];

_vehicle setvariable ["tracker1",objNull,true];
_vehicle setvariable ["tracker2",objNull,true];
_vehicle setvariable ["tracker3",objNull,true];

_vehicle setvariable ["tracker1c",objNull,true];
_vehicle setvariable ["tracker2c",objNull,true];
_vehicle setvariable ["tracker3c",objNull,true];
