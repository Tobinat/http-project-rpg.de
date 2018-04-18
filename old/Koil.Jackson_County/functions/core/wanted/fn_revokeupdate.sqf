disableSerialization;
createdialog "revoke_Menu";

params["_licenses","_playername"];

_display = findDisplay 9999; 
_list = _display displayCtrl 9001;

_licenses = licenseArray;

if(_licenses select 0 == 1) then {
	_list lbAdd "Vehicle License";
	_list lbSetdata [(lbSize _list)-1,str(1)];
};

if(_licenses select 1 == 1) then {
	_list lbAdd "Gun License";
	_list lbSetdata [(lbSize _list)-1,str(2)];
};

if(_licenses select 2 == 1) then {
	_list lbAdd "Mining License";
	_list lbSetdata [(lbSize _list)-1,str(3)];
};

if(_licenses select 3 == 1) then {
	_list lbAdd "Loggers License";
	_list lbSetdata [(lbSize _list)-1,str(4)];
};

if(_licenses select 4 == 1) then {
	_list lbAdd "Fishing License";
	_list lbSetdata [(lbSize _list)-1,str(5)];
};