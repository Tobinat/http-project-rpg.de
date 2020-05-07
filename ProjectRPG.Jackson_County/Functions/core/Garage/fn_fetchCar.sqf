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
	if (str _className find "onzie_" > -1) then {
		if (myJob == "Cop") then {
			_coplicense = round(random 100);
			_plate = format ["SLSD - %1",_coplicense];
			[_vehicle, _plate, "jonzie"] remoteexec ["client_fnc_numberPlate",2];
		} else {
			_medlicense = round(random 100);
			_plate = format ["SLFD - %1",_medlicense];
			[_vehicle, _plate, "jonzie"] remoteexec ["client_fnc_numberPlate",2];
		};
		if (str _className find "Tow_Truck" > -1) then {	
			[_vehicle, ["burntorange","Glossy"]] call client_fnc_initVehicle;
		};
	};
	if (str _className find "red_" > -1) then {
		[_vehicle, "", "red"] remoteexec ["client_fnc_numberPlate",2];
		if (str _className find "_p_u_bla" > -1 || str _className find "_p_f_cus" > -1 ) then {
			_colorarray = ["black","blue","red","green","orange","purple","white","wildstrawberry","darkred","dimgray","sunglow","brandeisblue","darkjunglegreen"];
			_color = _colorarray call BIS_fnc_selectRandom;
			_materialarray = ["metallic","matte"];
			_material = _materialarray call BIS_fnc_selectRandom;
			[_vehicle, [_color,_material]] call client_fnc_initVehicle;
			_vehicle setvariable ["slpdcar",0,true];
		} else {
			//_vehicle setObjectMaterialGlobal  [0, "ivory_data\data\metallic.rvmat" ];
			if (myJob == "Cop") then {
				_coplicense = round(random 100);
				_vehicle setPlateNumber format["SLSD-%1",_coplicense];
				_vehicle setvariable ["slpdcar",_coplicense,true];
			} else {
				_medlicense = round(random 100);
				_vehicle setPlateNumber format["SLFD-%1",_medlicense];
			};
		};
	}; 
	[_vehicle] call client_fnc_spawnvehicle;
	_vehicle allowdamage true;
	Current_Cars pushBack _vehicle;
	["ACE_Wheel", _vehicle, 1] call ace_cargo_fnc_removeCargoItem;
	if (myJob == "EMS") then {
		_vehicle addItemCargoGlobal ["Manguera_magazine",1];
		_vehicle addWeaponCargoGlobal ["fireextinguisher",1];
	};
	if (myJob == "Cop") then {
		_vehicle addItemCargoGlobal ["hlc_30rnd_9x19_b_MP5",3];
		_vehicle addWeaponWithAttachmentsCargoGlobal [["hlc_smg_mp5a4", "", "", "RH_barska_rds", ["hlc_30rnd_9x19_b_MP5", 30], [], ""], 1];
	};
	[_vehicle,2] remoteExecCall ["client_fnc_lock",_vehicle];
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

if (_damage > 0.99) exitWith {["Information","Dein Wagen ist vollständig im Eimer!",[255,69,0,1],""] call Client_fnc_showNotification; };

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
	if (str _className find "vory_" > -1 || str _className find "sl_" > -1 || str _className find "onzie_" > -1 || str _className find "adm_" > -1  || str _className find "ADM_" > -1 || str _className find "opixel_" > -1 || str _className find "vv_" > -1 || str _className find "adilac_" > -1 || str _className find "red_" > -1) then {
		if (str _className find "vory_" > -1) then {
			[_vehicle, [_carColor,_carFinish], _wheelColor, _windowTint, _headlightTint] call client_fnc_IvoryInitVehicle;
			//[_vehicle, _numberPlate, "ivory"] remoteexec ["client_fnc_numberPlate",2];
			_vehicle setVariable ["kennzeichen",_numberplate,true];
		};

		if (str _className find "red_" > -1) then {
			[_vehicle, [_carColor,_carFinish]] call client_fnc_initVehicle;
			//[_vehicle, _numberPlate, "red"] remoteexec ["client_fnc_numberPlate",2];
			_vehicle setVariable ["kennzeichen",_numberplate,true];
		};

		if (str _className find "sl_" > -1) then {
			[_vehicle, [_carColor,_carFinish], _wheelColor, _windowTint, _headlightTint] call client_fnc_IvoryInitVehicle;
			_vehicle setVariable ["kennzeichen",_numberplate,true];
		};

		if (str _className find "onzie_" > -1 || str _className find "adm_" > -1  || str _className find "ADM_" > -1 ) then {
			[_vehicle, [_carColor,_carFinish]] call client_fnc_initVehicle;
			[_vehicle, _numberPlate, "jonzie"] remoteexec ["client_fnc_numberPlate",2];
			_vehicle setVariable ["kennzeichen",_numberplate,true];
		};

		if (str _className find "opixel_" > -1 ) then {
			[_vehicle, [_carColor,_carFinish]] call client_fnc_initVehicle;
			_vehicle setVariable ["kennzeichen",_numberplate,true];
		};
		if (str _className find "vv_" > -1 ) then {
			[_vehicle, [_carColor,_carFinish], _wheelColor, _windowTint, _headlightTint] call client_fnc_IvoryInitVehicle;
			[_vehicle, _numberPlate, "ivory"] remoteexec ["client_fnc_numberPlate",2];
			_vehicle setVariable ["kennzeichen",_numberplate,true];
		};
		if (str _className find "adilac_" > -1 ) then {
			[_vehicle, [_carColor,_carFinish], _wheelColor, _windowTint, _headlightTint] call client_fnc_IvoryInitVehicle;
			[_vehicle, _numberPlate, "ivory"] remoteexec ["client_fnc_numberPlate",2];
			_vehicle setVariable ["kennzeichen",_numberplate,true];
		};
	} else {
		[_vehicle, [_carColor,_carFinish]] call client_fnc_initVehicle;
		_vehicle setVariable ["kennzeichen",_numberplate,true];
	};
	_vehicle setFuel _fuel;
	_vehicle setDamage _damage;
	["ACE_Wheel", _vehicle, 1] call ace_cargo_fnc_removeCargoItem;
	_license = toUpper(_numberPlate);
	_vehicle setPlateNumber _license;
};

[_vehicle] call client_fnc_spawnvehicle;
//_vehicle allowdamage true;
Current_Cars pushBack _vehicle;
//[1,_vehicle,_vehicle,_numberPlate,player] remoteExec ["server_fnc_fuelVehicle", 2];

[getPlayerUID player, "usedgarage", Current_Cars] remoteExec ["Server_fnc_setVariable",2];
_vehicleName = getText(configFile >> "CfgVehicles" >> _className >> "displayName");
[player,2,format ["%1 hat einen %2 ausgeparkt", name player, _vehicleName],"",_className,_vehicleName] remoteExec ["server_fnc_vehicleLog", 2];

_vehicle setvariable ["tracker1",objNull,true];
_vehicle setvariable ["tracker2",objNull,true];
_vehicle setvariable ["tracker3",objNull,true];

_vehicle setvariable ["tracker1c",objNull,true];
_vehicle setvariable ["tracker2c",objNull,true];
_vehicle setvariable ["tracker3c",objNull,true];
_vehicle setvariable ["slpdcar",0,true];
[_vehicle,2] remoteExecCall ["client_fnc_lock",_vehicle];
