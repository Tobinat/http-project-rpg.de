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

		private _ctrlSummaryText = _display displayCtrl MAV_IDC_RSCTITLETAXIFARESUMMARY_INFOTEXT;
		private _ctrlTotalText = _display displayCtrl MAV_IDC_RSCTITLETEXTFARESUMMARY_TOTALPRICE;
		private _totalPrice = missionNamespace getVariable ["mav_taxi_v_fareSummary_total", 0];

		_ctrlSummaryText ctrlSetStructuredText parseText (missionNamespace getVariable ["mav_taxi_v_fareSummary_summaryString", ""]);

		if (mav_taxi_v_fareSummary_total < 0) then {
			_ctrlTotalText ctrlSetText format ["%1$", _totalPrice toFixed 0];
			_ctrlTotalText ctrlSetTextColor [0.77,0.15,0.15,1];
		} else {
			_ctrlTotalText ctrlSetText format ["+%1$", _totalPrice toFixed 0];
			_ctrlTotalText ctrlSetTextColor [0.26,0.62,0.27,1];
		};
	};
};