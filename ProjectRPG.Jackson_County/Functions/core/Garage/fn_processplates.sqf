disableserialization;
private["_text"];


_cashcheck = [2,2000] call Client_fnc_sl_checkMoney_secure;
if!(_cashCheck) exitwith { hint "Nie masz pieniędzy!"; };


_text = ctrlText 9993;

_countPlate = count _text;
if (_countPlate > 7) exitWith {["Błąd","Twoja tablica ma więcej niż 7 znaków!",[255,0,0,1],""] call Client_fnc_showNotification;};
_string = _text splitString " " joinString "";
_string = _string splitString "#" joinString "";
_string = _string splitString "*" joinString "";
_string = _string splitString "-" joinString "";
_string = _string splitString "." joinString "";
_string = _string splitString "/" joinString "";
_string = _string splitString "\" joinString "";
_string = _string splitString ">" joinString "";
_string = _string splitString "<" joinString "";
_string = _string splitString "_" joinString "";
_string = _string splitString "|" joinString "";
_string = _string splitString "?" joinString "";
_string = _string splitString "!" joinString "";
_string = _string splitString "," joinString "";
_string = _string splitString "@" joinString "";
_string = _string splitString "$" joinString "";
_string = _string splitString "%" joinString "";
_string = _string splitString "^" joinString "";
_string = _string splitString "&" joinString "";
_string = _string splitString "(" joinString "";
_string = _string splitString ")" joinString "";
_string = _string splitString "=" joinString "";
_string = _string splitString "+" joinString "";
_string = _string splitString "[" joinString "";
_string = _string splitString "]" joinString "";
_string = _string splitString "{" joinString "";
_string = _string splitString "}" joinString "";
_string = _string splitString "'" joinString "";
_string = _string splitString ";" joinString "";
_string = _string splitString ":" joinString "";
_string = _string splitString "€" joinString "";
_string = _string splitString "ł" joinString "";
_string = _string splitString "ó" joinString "";
_string = _string splitString "ą" joinString "";
_string = _string splitString "ć" joinString "";
_string = _string splitString "ż" joinString "";
_string = _string splitString "ź" joinString "";
_string = _string splitString "ć" joinString "";
_string = _string splitString "ę" joinString "";
_string = _string splitString "ń" joinString "";
_string = _string splitString "ś" joinString "";
_string = _string splitString "`" joinString "";
_string = _string splitString "~" joinString "";

if (_string == "") exitWith {["Błąd","Twoja tablica jest pusta!",[255,0,0,1],""] call Client_fnc_showNotification;};
if (isNil "_string") exitWith {["Błąd","Twoja tablica jest pusta!",[255,0,0,1],""] call Client_fnc_showNotification;};



[(2000 * mav_ttm_var_mechanicRent)] call Client_fnc_sl_removeBank_secure;

[plateChange,_string,player] remoteexec ["server_fnc_platechange",2];

closedialog 0;