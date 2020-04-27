private["_vehicle"];

_vehicle = _this select 0;

if(isNil "Attachedcar") then {
	attachedcar = true;
};
attachedcar = true;

if(_vehicle iskindof "CAR") then {
	_vehicle attachTo [player, [0, 2.5, 2.5]];
};
if(_vehicle iskindof "SHIP") then {
	_vehicle attachTo [player, [0, 8.5, 5.5]];
};
if(_vehicle iskindof "AIR") then {
	_vehicle attachTo [player, [0, 5.5, 2.5]];
};

attachedCarArray = [];
attachedCarArray pushback _vehicle;

_vehicle setdir 90;

clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;

[_vehicle, player] remoteExecCall ["disableCollisionWith", 0, _vehicle];

_vehicle setvariable ["tracker1",objNull,true];
_vehicle setvariable ["tracker2",objNull,true];
_vehicle setvariable ["tracker3",objNull,true];

_vehicle setvariable ["tracker1c",objNull,true];
_vehicle setvariable ["tracker2c",objNull,true];
_vehicle setvariable ["tracker3c",objNull,true];

while { attachedcar } do {
	uisleep 0.1;
	if(vehicle player != player) exitWith { [] spawn client_fnc_detach; };
};
