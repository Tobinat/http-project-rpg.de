/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define MAVFNC MAV_guiNavigation
#define MAVCFG missionConfigFile >> "maverick_navigation_cfg"
#define pixelScale 0.50
#define GRID_W (pixelW * pixelGrid * pixelScale)
#define GRID_H (pixelH * pixelGrid * pixelScale)
#define SIZE_XL	6
#define BORDER 2
#define IMAGE_SIZE (SIZE_XL * 6)
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

		MAVV(Controls) = [];

		_display displayAddEventHandler ["ChildDestroyed", {["childDestroyed", _this] call MAVFNC}];

		private _close = _display displayCtrl MAV_IDC_GUINAVIGATION_CLOSE;
		_close ctrlAddEventHandler ["ButtonClick", {ctrlParent (_this select 0) closeDisplay 0;}];

		["refreshControls", [_display]] call MAVFNC;
	};

	case "childDestroyed": {
		_params params ["_display", "_child", "_exit"];

		if (_exit isEqualTo 2) exitWith {
			_display closeDisplay 1;
		};

		{ctrlDelete _x;} count MAVV(Controls);
		MAVV(Controls) = [];

		["refreshControls", [_display]] call MAVFNC;
	};

	case "refreshControls": {
		_params params [
			["_display", displayNull, [displayNull]]
		];

		private _group = _display displayCtrl MAV_IDC_GUINAVIGATION_MAINGRP;

		{
			_x params ["_title", "_image", "_condition", "_action"];

			private _cond = call compile _condition;

			private _btn = _display ctrlCreate ["RscActivePictureKeepAspect", -1, _group];
			MAVV(Controls) pushBack _btn;

			_btn ctrlSetPosition [(_forEachIndex * (IMAGE_SIZE + BORDER)) * GRID_W, 0, IMAGE_SIZE * GRID_W, IMAGE_SIZE * GRID_H];
			_btn ctrlCommit 0;
			_btn ctrlSetTextColor ([[1, 1, 1, 0.3], [1, 1, 1, 0.7]] select _cond);
			_btn ctrlSetText _image;
			_btn ctrlSetTooltip _title;
			_btn ctrlAddEventHandler ["ButtonClick", _action];
			_btn ctrlEnable _cond;

		} forEach getArray (MAVCFG >> "option_list");

		if ((count MAVV(Controls)) <= 5) then {
			(_display displayCtrl MAV_IDC_GUINAVIGATION_FOOTER) ctrlShow true;
		};
	};

	case "onUnload": {
		MAVV(Controls) = nil;
	};
};
