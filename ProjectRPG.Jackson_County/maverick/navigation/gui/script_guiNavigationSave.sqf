/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define MAVFNC MAV_guiNavigationSave
#define MAVCFG missionConfigFile >> "maverick_navigation_cfg"
#include "gui_includes.h"

disableSerialization;

params [
	["_mode", "", [""]],
	["_params", [], [[]]]
];

switch _mode do {
	case "onLoad": {
		_params params [
			["_display", displayNull, [displayNull]]
		];

		MAVV(Spam) = diag_tickTime;

		private _close = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVE_CLOSE;
		_close ctrlAddEventHandler ["ButtonClick", {ctrlParent (_this select 0) closeDisplay 0;}];

		private _start = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVE_SAVE;
		_start ctrlAddEventHandler ["ButtonClick", {["saveRoute", _this] call MAVFNC}];

		private _edit = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVE_EDIT;
		_edit ctrlAddEventHandler ["KeyUp", {["onKeyUp", _this] call MAVFNC}];
		_edit ctrlAddEventHandler ["MouseEnter", {["onMouseEnter", _this] call MAVFNC}];
	};

	case "onKeyUp": {
		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _ctrl;
		private _routeName = ctrlText _ctrl;

		(_display displayCtrl MAV_IDC_GUINAVIGATIONSAVE_SAVE) ctrlShow !(_routeName isEqualTo "");
	};

	case "onMouseEnter": {
		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _routeName = ctrlText _ctrl;
		//if (_routeName isEqualTo "Enter Route Name") then {
			_ctrl ctrlSetText "";
		//};
	};

	case "saveRoute": {
		if (MAVV(Spam) > diag_tickTime) exitWith {};
		MAVV(Spam) = diag_tickTime + 0.5;

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _ctrl;
		private _edit = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVE_EDIT;
		private _text = ctrlText _edit;

		if (_text isEqualTo "") exitWith {
			hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgNoRouteNameGiven"));
		};

		if (count _text > 30) exitWith {
			hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRouteNameLimit"));
		};

		private _allowed = [32, 65, 66, 76, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122];
		if ({!(_x in _allowed)} count toArray _text > 0) exitWith {
			hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgIllegalChars"));
		};

		private _savedLocation = -1;
		private _world = toLower worldName;

		{
			private _nr = _x;
			private _ret = profileNamespace getVariable [format ["MAV_gps_saved_%1_%2", _world, _nr], []];
			if (_ret isEqualTo []) exitWith {
				_savedLocation = _nr;
			};
		} forEach [0, 1, 2, 3, 4];

		if (_savedLocation isEqualTo -1) exitWith {
			hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRouteLimit"));
		};

		profileNamespace setVariable [format ["MAV_gps_saved_%1_%2", _world, _savedLocation], [_text, MAV_guiNavigationCalculate_Waypoint, MAV_guiNavigationCalculate_Route apply {getPos _x}, mav_gps_v_currentRouteSearchType]];
		saveProfileNamespace;

		closeDialog 0;
		hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRouteSaved"));
	};

	case "onUnload": {
		MAVV(Spam) = nil;
	};
};
