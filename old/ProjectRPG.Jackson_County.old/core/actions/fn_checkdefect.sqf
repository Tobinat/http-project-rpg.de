/*

	Description:
	Pulls civilians out of a car if it's stopped.
*/

["Das Fahrzeug wird in 30 Sekunden zerstört!", false] spawn domsg;
_vehicle = cursorTarget;

if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base"))) exitWith {};

_vehdestroy = 30;

while{_vehdestroy > 0} do {
	if(player distance _vehicle >= 10) exitWith {
		["Das Fahrzeug wurde nicht zerstört! Die Entfernung stimmt nicht.", false] spawn domsg;
	};
	_vehdestroy = _vehdestroy - 1;
	uiSleep 1;
	hint format["Fahrzeug wird in %1 Sekunden zerstört!",_vehdestroy];
};

if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base"))) exitWith {};

if(player distance _vehicle >= 10) exitWith {
	["as Fahrzeug wurde nicht zerstört! Die Entfernung stimmt nicht.", false] spawn domsg;
};


_vehicle setdamage 1;

["Fahrzeug zerstört!", false] spawn domsg;