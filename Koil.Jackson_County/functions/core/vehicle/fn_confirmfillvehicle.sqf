disableserialization;
private["_vehicle","_car","_mycash","_curFuel"];
_currentitemindex = lbCurSel 1500;
if (_currentitemindex == -1) exitWith {};
_car = lbData [1500, _currentitemindex];
_vehicle = call compile format["%1", _car]; 
_pos = _vehicle select 1;
_vehicle = _vehicle select 0;

_vehicles = nearestObjects [_pos, ["Car","Air","Ship"], 7];

{
	if(typeof _x == _vehicle) exitwith { _vehicle = _x; };
}foreach _vehicles;

_startpos = getpos _vehicle;
closedialog 0;
while {true} do {
	uisleep 0.5;
	_mycash = [1,2] call client_fnc_checkmoney;
	[2] call Client_fnc_removeCash;
	_curFuel = fuel _vehicle;
	if !(_mycash) exitwith { hint "You dont have enough money to fill any more."; };
	if(_curFuel > 0.99) exitwith { hint "Vehicle filled!"; };
	if(player distance _startpos > 5) exitwith { hint "Moved away from pump, filling cancelled"; };
	_vehicle setFuel (_curFuel + 0.05);
};