//Los Diablos Taxi Service Spawn

if( !life_koil_parachute ) exitWith {["FLY GUY: Ich brauche dein Flugticket.", false] spawn domsg; };


if(life_action_inUse) exitWith {

};	

if((player getVariable ["tied", false])) exitWith {

};		
if((player getVariable ["restrained", false])) exitWith {

};

life_koil_parachute = 0;
_spawnPoint = "air_g_8";
_className = "CG_Taxi";
_timer = 300;

[format ["Dieses Fahrzeug wird beim Aussteigen entfernt, oder nach 5 Minuten - Du musst der Fahrer sein.",_className], false] spawn domsg;

_vehicle = createVehicle [_className, (getMarkerPos _spawnPoint), [], 0, "NONE"];
waitUntil {!isNil "_vehicle"}; //Wait?
_vehicle allowDamage true; //Temp disable damage handling..
_vehicle lock 1;
_vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
_vehicle setDir (markerDir _spawnPoint);
_vehicle setPos (getMarkerPos _spawnPoint);
[_vehicle] call life_fnc_clearVehicleAmmo;
_vehicle disableTIEquipment true; 


[] spawn {
	waituntil {vehicle player != player};
	_vehicle allowDamage true;
	waituntil {isNull objectParent player};
	if(!isNil _vehicle) then {
		_vehicle setVelocity [0, 0, 0];
		deleteVehicle _vehicle;
	};
};

[] spawn {
	while { _timer > 0 } do {
		uiSleep 1;
		_timer = _timer - 1;
	};
	if(!isNil _vehicle) then {
		_vehicle setVelocity [0, 0, 0];
		deleteVehicle _vehicle;
	};
};

[format ["Dein Taxi-Service ist beendet.",_className], false] spawn domsg;