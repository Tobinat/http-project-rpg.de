disableSerialization;
createDialog "ATMmafia";

_bank = mafiaBank; 
_bank = _bank call client_fnc_numberText;
ctrlSetText [1002, _bank];

_cash = player getVariable "wallet"; 
_cash = _cash call client_fnc_numberText;
ctrlSetText [1004, _cash];