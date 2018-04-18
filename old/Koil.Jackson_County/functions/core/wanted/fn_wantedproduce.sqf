disableSerialization;

latestwanted = _this select 0;

latestwanted = call compile format["%1", latestwanted]; 

_display = findDisplay 5111;

_list = _display displayCtrl 911;

lbClear _list;

{
	_ID = _x select 0;
	_criminal = call compile format["%1", (_x select 1)];
	_officer = call compile format["%1", (_x select 2)];
	_crime = _x select 3;
	_wantedLevel = _x select 4;
	_list lbAdd format["ID: %1 - Wanted: %2 - Suspect: %3 - Crime: %4", _ID, _wantedlevel, (_criminal select 0), _crime];
	_list lbSetdata [(lbSize _list)-1,str([_ID, _wantedlevel, _criminal, _crime, _officer])];
} foreach latestwanted;




_list = _display displayCtrl 1120;
lbClear _list;

{
	_side = switch(side _x) do {case west: {"Cop"}; case east : {"Civ"}; case civilian : {"Civ"}; case independent : {"Medic"}; default {"Unknown"};};	
	_list lbAdd format["%1 - %2", name _x,_side];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;
