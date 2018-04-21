_vehicle = _this select 0;
_vehicle = call compile format["%1", _vehicle]; 
_plate = _this select 1;
_player = _this select 2;
_oldPlate = _vehicle select 0;

_countPlate = count _plate;

if (_countPlate > 7) exitWith {diag_log "License letters have more than 7";};
_string = _plate splitString " " joinString ""; 
_string = _string splitString "#" joinString "";
_string = _string splitString "*" joinString "";
_string = _string splitString "-" joinString "";
_string = _string splitString "." joinString "";
_string = _string splitString "/" joinString "";
_string = _string splitString "\" joinString "";
_string = _string splitString ">" joinString "";
_string = _string splitString "<" joinString "";
_string = _string splitString "|" joinString "";
_string = _string splitString "_" joinString "";
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

_checkstr = format ["existLicense:%1", _plate]; 
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery; 
_booli = (_check select 0) select 0; 
diag_log format ["license change - %1 - %2", _player, _string]; 
 
if(_booli) then { 
	["Taka tablica już istnieje!", false] remoteexec ["domsg",_player]; 
} else { 
 
_checkstr = format ["updateLicense:%1:%2", _plate, _oldPlate]; 
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery; 
 
_garage = _player getVariable "garage"; 
_pia = _garage find _vehicle; 
_garage deleteAt _pia; 
 
_vehicle SET [0,_plate]; 
_garage pushback _vehicle; 
 
_player setVariable ["garage", _garage, false]; 
 
[_garage] remoteexec ["client_fnc_finishLicense",_player]; 
}; 
