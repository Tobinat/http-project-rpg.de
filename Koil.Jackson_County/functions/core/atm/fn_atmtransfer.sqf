params["_bankType"];

if(_bankType == 1) exitwith { hint "Du hast keinen Zugriff auf das Mafia-Konto"; };

_amount = parseNumber (ctrlText 1400);
_player = call compile format["%1",(lbData[1111,(lbCurSel 1111)])];
if(isnil "_player") exitwith { hint "Kein Empfänger ausgewählt."; };
closeDialog 0;

_old = player getVariable "atm";
_new = _old - _amount;

if (_new < 0 || _amount < 0) exitwith { hint "Not enough money"; };

[_amount] call Client_fnc_removeBank;
[_amount] remoteExec ["Client_fnc_addBank",_player];

hint "Überweisung wurde erfolgreich getätigt.";