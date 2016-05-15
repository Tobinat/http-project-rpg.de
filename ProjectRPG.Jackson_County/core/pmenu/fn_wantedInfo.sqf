/*
	File: fn_wantedInfo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pulls back information about the wanted criminal.
*/
private["_display","_list","_crimes","_bounty","_mylist","_data"];
disableSerialization;

_data = [_this,0,[],[[]]] call BIS_fnc_param;
_display = findDisplay 2400;
_list = _display displayCtrl 2402;
_mylist = [];
_data = call compile format["%1", _data];
if(isNil "_data") exitWith {hint "Fehler beim Laden.";};
if(typeName _data != "ARRAY") exitWith {hint "Fehler beim Laden.";};
if(count _data == 0) exitWith {hint "Fehler beim Laden.";};
lbClear _list;

_crimes = _data select 0;
_bounty = _data select 1;

{
	_crime = _x;
	if(!(_crime in _mylist)) then
	{
		_mylist pushBack _crime;
		_list lbAdd format["%1x %2",{_x == _crime} count _crimes,_crime];
	};
} foreach _crimes;

ctrlSetText[2403,format["Bußgeld: %1$",[_bounty] call life_fnc_numberText]]; 