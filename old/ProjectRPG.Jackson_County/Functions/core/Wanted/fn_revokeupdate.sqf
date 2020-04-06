disableSerialization;
createdialog "revoke_Menu";

params["_licenses","_playername"];

_display = findDisplay 9999; 
_list = _display displayCtrl 9001;

_licenses = licenseArray;

if(_licenses select 0 == 1) then {
	_list lbAdd "Führerschein";
	_list lbSetdata [(lbSize _list)-1,str(1)];
};

if(_licenses select 1 == 1) then {
	_list lbAdd "Waffenlizenz";
	_list lbSetdata [(lbSize _list)-1,str(2)];
};

if(_licenses select 2 == 1) then {
	_list lbAdd "Miner Lizenz";
	_list lbSetdata [(lbSize _list)-1,str(3)];
};

if(_licenses select 3 == 1) then {
	_list lbAdd "Holzfäller Lizenz";
	_list lbSetdata [(lbSize _list)-1,str(4)];
};

if(_licenses select 4 == 1) then {
	_list lbAdd "Fischer Lizenz";
	_list lbSetdata [(lbSize _list)-1,str(5)];
};

if(_licenses select 5 == 1) then {
	_list lbAdd "LKW-Führerschein";
	_list lbSetdata [(lbSize _list)-1,str(5)];
};