/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/
#define __filename "fn_initLayer.sqf"

params [
    ["_path", "", [""]],
    ["_function", "", [""]],
    ["_params", [], [[]]],
	["_filename", "", [""]]
];

_params params [
    ["_display", displayNull, [displayNull]]
];

uiNamespace setVariable [_function, _display];

if (isNil {missionNamespace getVariable _function}) then {

    private _header = format ["
		private _fnc_scriptNameParent = if (isNil '_fnc_scriptName') then {'%1'} else {_fnc_scriptName};
		private _fnc_scriptName = '%1';
		scriptName _fnc_scriptName;
	", _function];

	if (_filename == "") then {
		missionNamespace setVariable [_function, compileFinal (_header + preprocessFileLineNumbers format ["maverick\%1\script_%2.sqf", _path, _function select [4]])];
	} else {
		missionNamespace setVariable [_function, compileFinal (_header + preprocessFileLineNumbers format ["maverick\%1\%2.sqf", _path, _filename])];
	};
};

["onLoad", _params] call (missionNamespace getVariable _function);