/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#include "gui_includes.h"
#define pixelScale 0.50
#define GRID_H (pixelH * pixelGrid * pixelScale)
#define script_config missionConfigFile >> "maverick_taxis_cfg"
disableSerialization;

params [
	["_mode", "", [""]],
	["_params", [], [[]]]
];

private _getPos = {
	params [
		["_display", displayNull, [displayNull]]
	];

	private _allElementPositions = (allControls _display) apply { ctrlPosition _x; };
	_allElementPositions
};

switch (_mode) do {
	case "onLoad": {
		_params params [
			["_display", displayNull, [displayNull]]
		];

		_display displayAddEventHandler ["KeyDown", {["KeyDown", _this] call RscDisplayTaxiCustomizeTaximeter}];

		private _savedPositions = profileNamespace getVariable ["mav_taxi_v_taximeterPosition", []];
		private _allControls = allControls _display;

		if (count _savedPositions == 0) then {
			_savedPositions = [_display] call _getPos;
		};

		if ((count _allControls) == (count _savedPositions)) then {
			{
				_x ctrlSetPosition (_savedPositions select _forEachIndex);
				_x ctrlCommit 0;
			} forEach _allControls;
		};

		[["msgTaxiPressSpaceSaveSettings"] call mav_taxi_fnc_getLocalization, -1, -1, 4, 1] spawn BIS_fnc_dynamicText;
	};

	case "KeyDown": {
		_params params [
			["_display", displayNull, [displayNull]],
			["_keyCode", -1, [0]]
		];

		if (_keyCode isEqualTo 0x39) then {
			private _positions = [_display] call _getPos;

			profileNamespace setVariable ["mav_taxi_v_taximeterPosition", _positions];
			saveProfileNamespace;

			_display closeDisplay 1;
			hint (["msgTaximeterPositionSaved"] call mav_taxi_fnc_getLocalization);

			// Reload position if dialog is already opened
			if (!isNull (uiNamespace getVariable ["RscTitleTaxiMeter", displayNull])) then {
				private _existingDisplay = (uiNamespace getVariable ["RscTitleTaxiMeter", displayNull]);
				["loadProfilePosition", [_existingDisplay]] call RscTitleTaxiMeter;
			};
		};
	};
};