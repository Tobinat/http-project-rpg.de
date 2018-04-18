disableSerialization;
_response = _this select 0;


_display = findDisplay 1333;

_ctrl = _display displayCtrl 1400;
_amount = ctrlText _ctrl; 
_amount = parseNumber _amount;

_ctrl = _display displayCtrl 1403;
_cop = ctrlText _ctrl; 


_cop = call compile format["%1",_cop];
_responseReason = "Refusal to Pay.";

if(_response == "paid") then {
	_old = player getVariable "atm";
	_new = _old - _amount;
	if (_new < 0) then { 
		_response = "refused";
		_responseReason = "Not enough money in bank.";
	};
};

if(_response == "refused") then {
	[format["Did not pay: %1",_responseReason], false] remoteExec ["domsg",_cop];
} else { 
	[_amount] call Client_fnc_removeBank;
	[format["Ticket Paid by: %1",name player], false] remoteExec ["domsg",_cop];
};

closedialog 0;