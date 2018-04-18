// repair CurrentCursorTarget;

_object = _this select 0;

if(myjob == "repairman") exitwith { _object setdamage 0; };

if(_object gethit "motor" > 0.9 && _object iskindof "car") exitwith { 

	_engines = {_x == "CG_Engine"} count magazines player;
	if(_engines > 0) exitwith { 
		_object setdamage 0; 
		_chance = random ( 100 );
		if(_chance > 85) then {
			player removeitem "cg_engine"; 
			hint "You consumed your engine repair kit on the vehicle.";
		};
	};
	_repaired = false;
	_checkNear = nearestObjects [player, [], 30];
	{
		if(str _x find "tallerdepinturaabandonado" > -1) exitwith { _object setdamage 0; _repaired = true; };
	}foreach _checkNear;

	if(_repaired) exitwith {};

	hint "You need a repairman, a tow to a garage or an engine to fix this - its too damaged!"; 
};

_wheels = {_x == "CG_wheel"} count magazines player;
if(_wheels > 0) exitwith {
 _object setdamage 0; 
 	_chance = random ( 100 );
	if(_chance > 85) then {
		hint "You consumed your wheel repair kit on the vehicle.";
	};
};
hint "You need a wheel to fix this car";




