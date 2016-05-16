/*
	Rob stolen by Koil
*/

params [["_shop", objNull, [objNull]], ["_robber", objNull, [objNull]], "_action", "", ["_timer", 480], "_funds", "_dist", ["_success", false]];



if(!life_canrob) exitWith { hint "Du kannst erst nach dem Spawn 10 Minuten lang nichts ausrauben - Maximal 1 Raub gleichzeitig."; }; 

if(_cops < 4) exitWith { hint "Es müssen mehr Polizisten online sein! (4+)"; }; 

if(vehicle player != _robber) exitWith { hint "Du musst aus deinem Fahrzeug aussteigen!"; }; 

_factor = player distance (getmarkerpos "cop_spawn_1");

_payment = 0;
_timer = _factor / 8;
_timer = round (_timer);
_funds = _factor * 0.8; 
_dist = _robber distance _shop;
_cops = (west countSide playableUnits);

if (!(_robber getVariable["dead",FALSE]) && {currentWeapon _robber != "" && currentWeapon player != "Binocular" && currentWeapon player != "Rangefinder"} && {_funds > 0}) then {

	[1,"911 Notruf: Ein/e Shop/Person wird ausgeraubt - die Koordienaten wurden an ihr Navi geschickt!"] remoteExecCall ["life_fnc_broadcast", west];
	
	hint format ["Laden wird ausgeraubt! Warte %1 Sekunden.",_timer];
	myStoreMarker = createMarker [format["%1",player], position player];
	myStoreMarker setMarkerType "Mil_dot";
	myStoreMarker setMarkerText "ACTIVE ROBBERY";
	myStoreMarker setMarkerColor "ColorRed";
	life_canrob = false;
	_shop removeAction _action;

	while {true} do {
		hintsilent format ["%1 Sekunden verbleiben.",_timer];
		uiSleep 1;
		_timer = _timer - 1;
		_payment = _payment + 1;
		_dist = _robber distance _shop;
		if ((_robber getVariable["dead",FALSE])) exitwith {
				life_canrob = true;
				deleteMarker myStoreMarker;
				hint "Du brauchst einen Arzt!";
				uiSleep _factor;
				_action = _shop addAction["Rob",life_fnc_robStore];
		};
		if (_dist >= 6) exitwith {
				life_canrob = true;
			deleteMarker myStoreMarker;
			hint "Danke das du mich verschonst!";
			uiSleep _factor;
			_action = _shop addAction["Rob",life_fnc_robStore];
		};
		if (currentWeapon _robber == "" || currentWeapon player == "Binocular" || currentWeapon player == "Rangefinder") exitwith {
				life_canrob = true;
			deleteMarker myStoreMarker;
			hint "Ich habe keine Angst mehr vor dir!";
			uiSleep _factor;
			_action = _shop addAction["Rob",life_fnc_robStore];
		};
		if(_payment > 60) then { ["cash","add",350] call life_fnc_handleCash; _payment = 0; ["Du konntest 350 Dollars stehlen!", false] spawn domsg;  };
		if(_timer < 1) exitWith { deleteMarker myStoreMarker; _success = true; };
	};
	if(!_success) exitWith { deleteMarker myStoreMarker; life_canrob = true; };
	life_canrob = true;
	["cash","add",_funds] call life_fnc_handleCash; 
	hint format["Du hast $%1 gestohlen!",_funds];
	_reason = "211";
	[_robber,_robber,_reason] spawn life_fnc_createEvidence;
	[1,format["LAKESIDE NEWS: Ein Shop wurde über $%2 ausgeraubt", _shop, [_funds] call life_fnc_numberText]] remoteExecCall ["life_fnc_broadcast", civilian];
	_funds = 0;
	["Remove",10] call fnc_karma;
	life_use_atm = false;
	uiSleep 180;
	life_use_atm = true;
	uiSleep _factor;
	_action = _shop addAction["Rob",life_fnc_robStore];
};

