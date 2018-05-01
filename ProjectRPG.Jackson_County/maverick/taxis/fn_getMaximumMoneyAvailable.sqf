/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

// Vars
private _cashHandVar = getText (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "moneyHandVariable");
private _cashBankVar = getText (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "moneyBankVariable");
private _paymentSource = getText (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "paymentSource");
private _return = 0;
private _both = (_paymentSource == "both");

// Get money from wallet
if (_paymentSource == "wallet" || {_both}) then {
	private _walletMoney = missionNamespace getVariable [_cashHandVar, 0];

	if (_walletMoney > _return) then {
		_return = _walletMoney;
	};
};

if (_paymentSource == "bank" || {_both}) then {
	private _bankMoney = missionNamespace getVariable [_cashBankVar, 0];

	if (_bankMoney > _return) then {
		_return = _bankMoney;
	};
};

// Return
_return