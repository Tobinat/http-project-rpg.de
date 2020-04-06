disableSerialization;


_selectedBG = lbData[911,lbCurSel (911)];
_selectedBG = call compile format["%1", _selectedBG];

phoneBackground = _selectedBG;
if(isNil "phoneBackground") exitwith { hint "Es ist ein Fehler aufgetreten."; };

_bg = [phoneBackground,phoneskin];

[player, "phoneBackground", [phoneBackground,phoneskin]] remoteExec ["Server_fnc_setVariable",2];
[_bg, getPlayerUID player] remoteExec ["Server_fnc_PhoneBackgroundSync", 2];

[1] call Client_fnc_sl_removeBank_secure;



["Der Betrag von $1 für einen Neuen Handy Hintergrund wurde bezahlt!", false] spawn domsg; 