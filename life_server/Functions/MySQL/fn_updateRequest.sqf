/*
	File: fn_updateRequest.sqf
	
	
	Description:
	Ain't got time to describe it, READ THE FILE NAME!
*/
private["_uid","_side","_cash","_bank","_licenses","_gear","_name","_query","_thread"];
_uid = param [0,"",[""]];
_name = param [1,"",[""]];
_side = param [2,sideUnknown,[civilian]];
_cash = param [3,0,[0]];
_bank = param [4,5000,[0]];
_licenses = param [5,[],[[]]];


if((_uid == "") OR (_name == "")) exitWith {};


_name = [_name] call DB_fnc_mresString;
_cash = [_cash] call DB_fnc_numberSafe;
_bank = [_bank] call DB_fnc_numberSafe;


for "_i" from 0 to count(_licenses)-1 do {
_bool = [(_licenses select _i) select 1] call DB_fnc_bool;
_licenses set[_i,[(_licenses select _i) select 0,_bool]];
};

_licenses = [_licenses] call DB_fnc_mresArray;

switch (_side) do {
case west: {_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', cop_licenses='%4' WHERE playerid='%5'",_name,_cash,_bank,_licenses,_uid];};
case east: {_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', civ_licenses='%4', arrested='%6' WHERE playerid='%5'",_name,_cash,_bank,_licenses,_uid,[_this select 7] call DB_fnc_bool];};
case civilian: {_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', civ_licenses='%4', arrested='%6' WHERE playerid='%5'",_name,_cash,_bank,_licenses,_uid,[_this select 7] call DB_fnc_bool];};
case independent: {_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', med_licenses='%4' WHERE playerid='%5'",_name,_cash,_bank,_licenses,_uid];};
};


_queryResult = [_query,1] call DB_fnc_asyncCall;