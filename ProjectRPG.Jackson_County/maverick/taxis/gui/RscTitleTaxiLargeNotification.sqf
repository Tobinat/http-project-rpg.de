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

switch (_mode) do {
	case "onLoad": {
		_params params [
			["_display", displayNull, [displayNull]]
		];

		private _controlGroup = _display displayCtrl MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_GROUPBOX;
		private _text = _display displayCtrl MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_HEADER;
		private _iconCtrl = _display displayCtrl MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_ICON;
		private _textSmall = _display displayCtrl MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_HEADERSMALL;
		private _textToDisplay = mav_taxi_v_largeNotifications_currentNotification param [0, ""];
		private _customIcon = mav_taxi_v_largeNotifications_currentNotification param [2, ""];
		private _originalSize = ctrlPosition _controlGroup;
		private _hiddenSize = [_originalSize select 0, _originalSize select 1, 0, _originalSize select 3];

		// Which is the text size the notification should use? (Small or big)
		private _textControlToDisplayOn = if (mav_taxi_v_largeNotifications_currentNotification param [1, false]) then {
			_textSmall
		} else {
			_text
		};

		// Is the icon something custom?
		if (_customIcon != "") then {
			_iconCtrl ctrlSetText _customIcon;
		};

		[_display, _controlGroup, _textControlToDisplayOn, _textToDisplay, _originalSize, _hiddenSize] spawn {
			disableSerialization;

			params [
				["_display", displayNull, [displayNull]],
				["_controlGroup", controlNull, [controlNull]],
				["_text", controlNull, [controlNull]],
				["_textToDisplay", "", [""]],
				["_originalSize", [], [[]]],
				["_hiddenSize", [], [[]]]
			];

			// Was?
			if (isNull _display) exitWith {};

			// Show text
			_text ctrlShow true;

			// Change width to be hidden
			_controlGroup ctrlSetPosition _hiddenSize;
			_controlGroup ctrlCommit 0;

			// Unhide control
			_controlGroup ctrlShow true;

			// Set original size with 0.4 seconds animation time
			_controlGroup ctrlSetPosition _originalSize;
			_controlGroup ctrlCommit 0.4;

			// Animate text cursor
			private _showCursor = false;
			while {!isNull _display} do {
				_showCursor = !_showCursor;

				if (_showCursor) then {
					_text ctrlSetStructuredText parseText format ["%1_", _textToDisplay];
				} else {
					_text ctrlSetStructuredText parseText _textToDisplay;
				};

				sleep 0.5;
			};
		};

		// Collapse again after 7 seconds
		[_display, _controlGroup, _originalSize, _hiddenSize] spawn {
			disableSerialization;

			params [
				["_display", displayNull, [displayNull]],
				["_controlGroup", controlNull, [controlNull]],
				["_originalSize", [], [[]]],
				["_hiddenSize", [], [[]]]
			];

			sleep 7;

			_controlGroup ctrlSetPosition _hiddenSize;
			_controlGroup ctrlCommit 0.4;
		};
	};
};