disableSerialization;
createDialog "ATM";

_bankAccount = format ["ATM # Account:%1", str (player getVariable "bankAccount")]; 
ctrlSetText [1000, _bankAccount];

_bank = player getVariable "sl_atm_silverlake"; 
_bank = _bank call client_fnc_numberText;

ctrlSetText [1002, _bank];

_cash = player getVariable "sl_wallet_silverlake"; 
_cash = _cash call client_fnc_numberText;
ctrlSetText [1004, _cash];