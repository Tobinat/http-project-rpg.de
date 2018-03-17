/*
	
	
	Description:
	Takes partial data of a player and updates it, this is meant to be
	less network intensive towards data flowing through it for updates.
*/
private["_value","_mode","_query"];
params [["_uid", "", [""]], ["_side", sideUnknown, [civilian]]];
_mode = param [3,-1,[0]];

if(_uid isEqualTo "" OR _side isEqualTo sideUnknown) exitWith {}; 
_query = "";

switch(_mode) do {
	case 0: {
		_value = param [2,0,[0]];
		_value = [_value] call DB_fnc_numberSafe;
		_query = format["UPDATE players SET cash='%1' WHERE playerid='%2'",_value,_uid];
	};
	case 1: {
		_value = param [2,0,[0]];
		_value = [_value] call DB_fnc_numberSafe;
		_query = format["UPDATE players SET bankacc='%1' WHERE playerid='%2'",_value,_uid];
	};
	case 2: {
		_value = param [2,[],[[]]];
		for "_i" from 0 to count(_value)-1 do {
			_bool = [(_value select _i) select 1] call DB_fnc_bool;
			_value set[_i,[(_value select _i) select 0,_bool]];
		};
		_value = [_value] call DB_fnc_mresArray;
		switch(_side) do {
			case west: {_query = format["UPDATE players SET cop_licenses='%1' WHERE playerid='%2'",_value,_uid];};
			case civilian: {_query = format["UPDATE players SET civ_licenses='%1' WHERE playerid='%2'",_value,_uid];};
			case east: {_query = format["UPDATE players SET civ_licenses='%1' WHERE playerid='%2'",_value,_uid];};
			case independent: {_query = format["UPDATE players SET med_licenses='%1' WHERE playerid='%2'",_value,_uid];};
		};
	};
	case 3: {
		_value = param [2,[],[[]]];
		_value = [_value] call DB_fnc_mresArray;
		switch(_side) do {
			case west: {_query = format["UPDATE players SET cop_gear='%1' WHERE playerid='%2'",_value,_uid];};
			case civilian: {_query = format["UPDATE players SET civ_gear='%1' WHERE playerid='%2'",_value,_uid];};
			case east: {_query = format["UPDATE players SET civ_gear='%1' WHERE playerid='%2'",_value,_uid];};
			case independent: {_query = format["UPDATE players SET med_gear='%1' WHERE playerid='%2'",_value,_uid];};
		};
	};
	case 4: {
		_value = param [2,false,[true]];
		_value = [_value] call DB_fnc_bool;
		_query = format["UPDATE players SET alive='%1' WHERE playerid='%2'",_value,_uid];
	};

	case 5: {
		_value = param [2,false,[true]];
		_value = [_value] call DB_fnc_bool;
		_query = format["UPDATE players SET arrested='%1' WHERE playerid='%2'",_value,_uid];
	};

	case 6: {
		_value1 = param [2,0,[0]];
		_value2 = param [4,0,[0]];
		_value1 = [_value1] call DB_fnc_numberSafe;
		_value2 = [_value2] call DB_fnc_numberSafe;
		_query = format["UPDATE players SET cash='%1', bankacc='%2' WHERE playerid='%3'",_value1,_value2,_uid];
	};
	case 7: {
		_value = param [2,0,[0]];
		_value = [_value] call DB_fnc_numberSafe;
		_query = format["UPDATE players SET donatorlvl='%1' WHERE playerid='%2'",_value,_uid];
	};
	case 8: {
		_cash = param [2,0,[0]];
		_bank = param [4,0,[0]];
		_cash = [_cash] call DB_fnc_numberSafe;
		_bank = [_bank] call DB_fnc_numberSafe;
		_karma = param [5,0,[0]];
		_karma = [_karma] call DB_fnc_numberSafe;		
		_gear = param [6,[],[[]]];
		_gear = [_gear] call DB_fnc_mresArray;
		switch(_side) do {
			case west: {_query = format["UPDATE players SET cash='%1', bankacc='%2', donatorlvl='%3', cop_gear='%4' WHERE playerid='%5'",_cash,_bank,_karma,_gear,_uid]};
			case civilian: {_query = format["UPDATE players SET cash='%1', bankacc='%2', donatorlvl='%3', civ_gear='%4' WHERE playerid='%5'",_cash,_bank,_karma,_gear,_uid]};
			case east: {_query = format["UPDATE players SET cash='%1', bankacc='%2', donatorlvl='%3', civ_gear='%4' WHERE playerid='%5'",_cash,_bank,_karma,_gear,_uid]};
			case independent: {_query = format["UPDATE players SET cash='%1', bankacc='%2', donatorlvl='%3', med_gear='%4' WHERE playerid='%5'",_cash,_bank,_karma,_gear,_uid]};
		};
	};
};

if(_query isEqualTo "") exitWith {};

[_query,1] call DB_fnc_asyncCall;