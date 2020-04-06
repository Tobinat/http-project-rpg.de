private["_veh","_fuelstation","_fuel_old","_fuel_new","_fuel_price","_steps","_spent_money","_fuel_min_distance"];
_fuel_price = 500;
_steps = 100.0;
_fuel_min_distance = 6;
_fuel_price_one_step = _fuel_price / _steps;


while {true} do
{
	waitUntil {sleep 5; ((vehicle player != player) && (!isEngineOn (vehicle player)) && ((driver (vehicle player)) == player) && (fuel (vehicle player)) < 0.99 && (speed (vehicle player)) < 0.1 && count (nearestObjects [player, ["Land_fs_feed_F"], _fuel_min_distance]) > 0)};
	_veh = vehicle player;
	
	if(_veh isKindOf "Air") exitWith {};

	_fuelstation = (nearestObjects [player, ["Land_fs_feed_F"], _fuel_min_distance]) select 0;
	
	sleep 1;
	_spent_money = 0;
	
	while {true} do
	{
		if(vehicle player == player) exitWith {};
		if((driver (vehicle player)) != player) exitWith {};
		if((fuel (vehicle player)) >= 0.99) exitWith {};
		if((speed (vehicle player)) > 0.1) exitWith {};
		if(!(alive (vehicle player))) exitWith {};
		if(isEngineOn (vehicle player)) exitWith {hint "Der Motor ist noch an! Abschalten, damit du Tanken kannst."};
		if((player distance _fuelstation) > _fuel_min_distance) exitWith {};
		if(cash_in_hand < _fuel_price_one_step) exitWith {hint format["Du brauchst mehr Geld um weiter zu Tanken. Voller Tank kostet $%1",_fuel_price]; sleep 1;};

		_fuel_old = fuel _veh;
		_fuel_new = _fuel_old + (1 / _steps);
		_veh setFuel _fuel_new;
		
		["cash","take",_fuel_price_one_step] call life_fnc_handleCash;
		_spent_money = _spent_money + _fuel_price_one_step;
		
		hintSilent parseText format["<img image='textures\fuel.jpg'/><br/><br/><t size='1.1' font='TahomaB'>Betankung Läuft:</t><br/><t size='1.2' color='#ff0000'>Status: %1%2<br/>Preis: $%3</t><br/>", ceil (_fuel_new * 100), "%", _spent_money];
		
		sleep (0.3 + random(0.7));
	};

	[1,false] call SOCK_fnc_updatePartial;
};