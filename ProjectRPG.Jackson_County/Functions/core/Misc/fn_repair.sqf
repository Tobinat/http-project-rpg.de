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
			hint "Zuzyles zestaw do naprawy silnika podczas naprawy.";
		};
	};
	_repaired = false;
	_checkNear = nearestObjects [player, [], 30];
	{
		if(str _x find "tallerdepinturaabandonado" > -1) exitwith { _object setdamage 0; _repaired = true; };
	}foreach _checkNear;

	if(_repaired) exitwith {};

	hint "Potrzebujesz mechanika, odholowac do garazu albo zestaw do naprawy silnika!";
};

_wheels = {_x == "CG_wheel"} count magazines player;
if(_wheels > 0) exitwith {
 _object setdamage 0;
 ["VehicleRepaired"] spawn mav_ttm_fnc_addExp;
 	_chance = random ( 100 );
	if(_chance > 85) then {
		hint "Zuzyles zestaw do naprawy kol podczas naprawy.";
	};
};
hint "Potrzebujesz kola do naprawy tego samochodu.";




