// repair CurrentCursorTarget;

_object = _this select 0;

if(myjob == "repairman" || myjob == "ems") exitwith { _object setdamage 0; };

if(_object gethit "motor" > 0.9 && _object iskindof "car") exitwith {

	_engines = {_x == "CG_Engine"} count magazines player;
	if(_engines > 0) exitwith {
		_object setdamage 0;
		_chance = random ( 100 );
		if(_chance > 85) then {
			player removeitem "cg_engine";
			hint "Du hast das RepairKit für den Motor während der Reparatur verbraucht.";
		};
	};
	_repaired = false;
	_checkNear = nearestObjects [player, [], 30];
	{
		if(str _x find "tallerdepinturaabandonado" > -1) exitwith { _object setdamage 0; _repaired = true; };
	}foreach _checkNear;

	if(_repaired) exitwith {};

	hint "Du brauchst ein Motor Kit oder einen Mechaniker.";
};

_wheels = {_x == "CG_wheel"} count magazines player;
if(_wheels > 0) exitwith {
 _object setdamage 0;
 ["VehicleRepaired"] spawn mav_ttm_fnc_addExp;
 	_chance = random ( 100 );
	if(_chance > 85) then {
		hint "Du hast das RepairKit für den Reifen während der Reparatur verbraucht.";
		_object setHitPointDamage  ["hitlfwheel", 0];
		_object setHitPointDamage  ["hitlf2wheel", 0];
		_object setHitPointDamage  ["hitrfwheel", 0];
		_object setHitPointDamage  ["hitlf2wheel", 0];
	};
};
hint "Du benötigst ein Rad zum Reparieren.";




