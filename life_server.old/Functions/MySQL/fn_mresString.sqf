/*
	File: fn_mresString.sqf
	
	
	Description:
	Makes the string safe to be passed to MySQL (strips various stuff).
*/
private["_string","_filter"];
_string = param [0,"",[""]];
_filter = "'/\`:|;,{}-""<>";

_string = toArray _string; 
_filter = toArray _filter; 

{
	if(_x in _filter) then {
		_string set[_forEachIndex,-1];
	};
} foreach _string;

_string = _string - [-1];
toString _string;