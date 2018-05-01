/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define MAVFNC MAV_guiNavigationResize
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
		MAVV(position) = ["gui", []] call MAV_gps_fnc_fetchSettings;

		if (MAVV(position) isEqualTo []) then {
			private _test = [];
			_test append (("true" configClasses (missionConfigFile >> "MAV_guiNavigationResize" >> "ControlsBackground")) apply {[getNumber (_x >> "x"), getNumber (_x >> "y"), getNumber (_x >> "w"), getNumber (_x >> "h")]});
			_test append (("true" configClasses (missionConfigFile >> "MAV_guiNavigationResize" >> "Controls")) apply {[getNumber (_x >> "x"), getNumber (_x >> "y"), getNumber (_x >> "w"), getNumber (_x >> "h")]});
			MAVV(position) = _test;
		} else {
			{
				private _ctrl = _x;
				_ctrl ctrlSetPosition (MAVV(position) select _forEachIndex);
				_ctrl ctrlCommit 0;
			} forEach (allControls _display);
		};

		_display displayAddEventHandler ["KeyDown", {["KeyDown", _this] call MAVFNC}];

		[(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgPressSpace")),-1,-1,4,1] spawn BIS_fnc_dynamicText;
	};

	case "KeyDown": {
		_params params [
			["_display", displayNull, [displayNull]],
			["_keyCode", -1, [0]]
		];

		if (_keyCode isEqualTo 0x39 && {diag_tickTime > MAVV(Spam)}) then {
			MAVV(Spam) = diag_tickTime + 1;
			MAVV(position) = (allControls _display) apply {ctrlPosition _x};

			["gui", MAVV(position)] call MAV_gps_fnc_saveSettings;
			saveProfileNamespace;
			_display closeDisplay 1;
			hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgGpsPosSaved"));
		};
	};

	case "onUnload": {
		[""] spawn BIS_fnc_dynamicText;
		MAVV(position) = nil;
		MAVV(Spam) = nil;
	};
};
