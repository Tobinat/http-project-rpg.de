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
for "_i" from 0 to 1 step 0 do  {
	uisleep 0.5;
	_mycash = [1,2] call Client_fnc_sl_checkMoney_secure;
	[2] call Client_fnc_sl_removeCash_secure;
	_curFuel = fuel _vehicle;
	if !(_mycash) exitwith { hint "Nie masz już pieniędzy."; };
	if(_curFuel > 0.99) exitwith { hint "Pojazd zatankowany!"; };
	if(player distance _startpos > 5) exitwith { hint "Odszedles zbyt daleko, tankowanie anulowane"; };
	_vehicle setFuel (_curFuel + 0.05);
};