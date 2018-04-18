disableSerialization;
//9001 
_cash = player getVariable "sl_wallet_silverlake";
_bank = player getVariable "sl_atm_silverlake";
_display = findDisplay 9999; 

_text = _display displayCtrl 9993;

_bank = _bank call client_fnc_numberText;

_text ctrlSetStructuredText parseText format["%1",_bank];

_text = _display displayCtrl 9994;

_cash = _cash call client_fnc_numberText;

_text ctrlSetStructuredText parseText format["%1",_cash];

_list = _display displayCtrl 9001;

_licenses = licenseArray;

if(_licenses select 0 == 1) then {
	_list lbAdd "Prawo Jazdy";
};

if(_licenses select 1 == 1) then {
	_list lbAdd "Licencja na Broń";
};

if(_licenses select 2 == 1) then {
	_list lbAdd "Licencja Górnika";
};

if(_licenses select 3 == 1) then {
	_list lbAdd "Licencja Drwala";
};

if(_licenses select 4 == 1) then {
	_list lbAdd "Licencja Rybaka";
};

