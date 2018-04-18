_price = _this select 1;
_cashcheck = [1,_price] call client_fnc_checkmoney;
if!(_cashcheck) exitwith { hint "Not enough $$"; };

["Add","license",_this select 0] call client_fnc_sustain;

[_price] call Client_fnc_removeCash;

closedialog 0;

hint "You bought the license";