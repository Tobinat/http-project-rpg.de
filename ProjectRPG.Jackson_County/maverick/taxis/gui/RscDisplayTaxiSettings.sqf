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

		private _customizeTaximeterPositionButton = _display displayCtrl MAV_IDC_RSCDISPLAYTAXISETTINGS_TAXIMETER_CUSTOMIZE;
		_customizeTaximeterPositionButton ctrlAddEventHandler ["ButtonClick", {["customizeTaximeter", _this] call RscDisplayTaxiSettings}];

		private _customizeTaximeterPositionResetButton = _display displayCtrl MAV_IDC_RSCDISPLAYTAXISETTINGS_TAXIMETER_RESET;
		_customizeTaximeterPositionResetButton ctrlAddEventHandler ["ButtonClick", {["resetTaximeter", _this] call RscDisplayTaxiSettings}];
	};

	case "customizeTaximeter": {
		_params params [
			["_btnCtrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _btnCtrl;
		createDialog "RscDisplayTaxiCustomizeTaximeter";
	};

	case "resetTaximeter": {
		_params params [
			["_btnCtrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _btnCtrl;

		profileNamespace setVariable ["mav_taxi_v_taximeterPosition", []];
		saveProfileNamespace;

		hint (["msgTaximeterPositionReset"] call mav_taxi_fnc_getLocalization);
	};
};