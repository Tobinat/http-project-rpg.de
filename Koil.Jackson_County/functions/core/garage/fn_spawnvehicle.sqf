private["_vehicle"];

_vehicle = _this select 0;

if(isNil "Attachedcar") then {
	attachedcar = true;
};
attachedcar = true;

_vehicle attachTo [player, [0, 2.5, 3.5]]; 
if(_vehicle iskindof "SHIP") then {
	_vehicle attachTo [player, [0, 4.5, 5.5]]; 
};

_vehicle setdir 90;

clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;