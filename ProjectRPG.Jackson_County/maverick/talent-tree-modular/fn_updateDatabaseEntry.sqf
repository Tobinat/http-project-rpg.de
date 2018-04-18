scriptName "fn_updateDatabaseEntry";
/*--------------------------------------------------------------------
	Author: Maverick (ofpectag: MAV)
    File: fn_updateDatabaseEntry.sqf

	<Maverick Applications>
    Written by Maverick Applications (www.maverick-apps.de)
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "fn_updateDatabaseEntry.sqf"

scopeName "main";


params [
	["_which", -1, [0]],
	["_toUpdate", [], [0, []]],
	["_pid", "", [""]]
];


if (_toUpdate isEqualTo [] || {_pid isEqualTo ""} || {_which isEqualTo -1}) exitWith {};


private _query = "";
switch (_which) do {

	case 0: {
		if (_toUpdate isEqualType []) then {breakOut "main"};
		_query = format ["updateExpLevel:%1:%2", _toUpdate, _pid];
	};

	case 1: {
		if (_toUpdate isEqualType []) then {breakOut "main"};
		_query = format ["updateExpTotal:%1:%2", _toUpdate, _pid];
	};

	case 2: {
		if (_toUpdate isEqualType []) then {breakOut "main"};
		_query = format ["updateExpPerkPoints:%1:%2", _toUpdate, _pid];
	};

	case 3: {
		if (_toUpdate isEqualType 0) then {breakOut "main"};
		_toUpdate call mav_ttm_fnc_tinyIntConverter;
		_query = format ["updateExpPerks:%1:%2", _toUpdate, _pid];
	};
};

if (_query isEqualTo "") exitWith {};

[_query, 1] call ExternalS_fnc_ExtDBasync;