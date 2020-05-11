_cash = cursortarget getVariable ["sl_wallet_silverlake",0];
if (_cash == 0) exitWith ( hint "Du findest kein Geld"; );
[format["Du hast %1$ genommen.", _cash], false] spawn domsg;
[_cash] call client_fnc_sl_addcash_secure;