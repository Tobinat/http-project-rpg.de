/*
Params
0 - Number - (1 - Cash, 2 - Bank)
1 - Number - Amount of checked money
["sl_wallet_silverlake",_amount] call Client_fnc_sl_addCash_secure;
*/
params ["_type", "_amount"];

_return = false;
if (_type == 1) then {
	_cash = player getVariable "sl_wallet_silverlake";
	_math = _cash - _amount;
	if (_math >= 0) then {_return = true}
} else {
	_bank = player getVariable "sl_atm_silverlake";
	_math = _bank - _amount;
	if (_math >= 0) then {_return = true}
};

_return

