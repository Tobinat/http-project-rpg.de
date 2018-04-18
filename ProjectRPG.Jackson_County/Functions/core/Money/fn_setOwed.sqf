disableserialization;

_amount = parseNumber (ctrlText 9993);

_display = findDisplay 9999;

_status = lbData[9001,lbCurSel (9001)];
_loan = call compile format["%1", _status];

_old = _loan select 2;

_error = false;

if ((player getVariable "Mafia") < 5 && _amount < _old) then {
	_change = _old - _amount;
	_enoughCash = [1, _change] call Client_fnc_sl_checkMoney_secure;
	if(!_enoughCash) exitwith { _error = true; hint "Potrzebujesz gotowki by oddać dlug..."; };
	[_change] call Client_fnc_sl_removeCash_secure;
	["Add",_change] remoteexec ["server_fnc_updateMafiaBank",2];
};

if(_error) exitwith {};

_player = call compile format["%1",(lbData[9001,(lbCurSel 9001)])];

_player = call compile format["%1",(_player select 0)];

["set","MafiaMoney",_amount] remoteExec ["client_fnc_sustain",_player];

closedialog 0;