/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_amount", 0, [0]],
	["_allowNegativ", false, [false]]
];

// Vars
private _cashHandVar = getText (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "moneyHandVariable");
private _cashBankVar = getText (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "moneyBankVariable");
private _paymentSource = getText (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "paymentSource");
private _return = false;
private _handled = false;
private _both = (_paymentSource == "both");

if ((_paymentSource == "wallet" || {_both}) && !_handled) then {
	if ((missionNamespace getVariable [_cashHandVar, 0]) >= _amount) then {
		missionNamespace setVariable [_cashHandVar, (missionNamespace getVariable [_cashHandVar, 0]) - _amount];
		_return = true;
		_handled = true;
	} else {
		if (_allowNegativ) then {
			missionNamespace setVariable [_cashHandVar, (missionNamespace getVariable [_cashHandVar, 0]) - _amount];
			_return = true;
			_handled = true;
		} else {
			_return = false;
		};
	};
};

if ((_paymentSource == "bank" || {_both}) && !_handled) then {
	if ((missionNamespace getVariable [_cashBankVar, 0]) >= _amount) then {
		missionNamespace setVariable [_cashBankVar, (missionNamespace getVariable [_cashBankVar, 0]) - _amount];
		_return = true;
	} else {
		if (_allowNegativ) then {
			missionNamespace setVariable [_cashBankVar, (missionNamespace getVariable [_cashBankVar, 0]) - _amount];
			_return = true;
		} else {
			_return = false;
		};
	};
};

// Return
_return