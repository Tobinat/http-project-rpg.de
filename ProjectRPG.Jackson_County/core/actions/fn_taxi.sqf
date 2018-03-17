if( life_koil_parachute != 2 ) exitWith { ["INFO: Ich benötige Ihr genutztes Flugticket", false] spawn domsg; };


if(life_action_inUse) exitWith {

};	

if((player getVariable ["tied", false])) exitWith {

};		
if((player getVariable ["restrained", false])) exitWith {

};

life_koil_parachute = 1;
_timer = 300;
_className = 1;

[format ["Du musst dich ans Steuer setzen! Sonst wird das Fahrzeug in 5 Minuten abgeschleppt!",_className], false] spawn domsg;

_vehicle = createVehicle ["S_Rangerover_Black", (player), [], 0, "NONE"];
waitUntil {!isNil "_vehicle"}; //Wait?
_vehicle allowDamage false; //Temp disable damage handling..
[_vehicle] call life_fnc_clearVehicleAmmo;
_vehicle disableTIEquipment true; 
_vehicle allowDamage false;

while { _timer > 0 } do {
	uiSleep 1;
	_timer = _timer - 1;
	hintsilent format ["Fahrzeit: %1",_timer];
};
_vehicle setVelocity [0, 0, 0];
deleteVehicle _vehicle;
[format ["Der Dienst ist vorbei...",_className], false] spawn domsg;
