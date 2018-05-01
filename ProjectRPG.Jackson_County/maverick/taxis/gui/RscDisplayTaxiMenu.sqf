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

		private _driverCondition = getText (script_config >> "drivers" >> "condition");

		private _btnDriver = _display displayCtrl MAV_IDC_RSCDISPLAYTAXIMENU_DRIVER;
		_btnDriver ctrlAddEventHandler ["ButtonClick", {["btnDriverClicked", _this] call RscDisplayTaxiMenu}];

		private _btnCustomer = _display displayCtrl MAV_IDC_RSCDISPLAYTAXIMENU_CUSTOMER;
		_btnCustomer ctrlAddEventHandler ["ButtonClick", {["btnCustomerClicked", _this] call RscDisplayTaxiMenu}];

		private _btnSettings = _display displayCtrl MAV_IDC_RSCDISPLAYTAXIMENU_SETTINGS;
		_btnSettings ctrlAddEventHandler ["ButtonClick", {["btnSettingsClicked", _this] call RscDisplayTaxiMenu}];

		if (call compile _driverCondition) then {
			_btnDriver ctrlEnable true;

			if (mav_taxi_v_isOnDuty) then {
				_btnDriver ctrlSetText (["msgTaxiMenuActiveCalls"] call mav_taxi_fnc_getLocalization);
			};
		} else {
			_btnDriver ctrlEnable false;
			_btnDriver ctrlSetTooltip (["msgTaxiDriverNotAvailable"] call mav_taxi_fnc_getLocalization);
		};

		if (mav_taxi_v_isDriver) then {
			_btnCustomer ctrlEnable false;
			_btnCustomer ctrlSetTooltip (["msgTaxiCannotCallWhileDriver"] call mav_taxi_fnc_getLocalization);
		};

		if (mav_taxi_v_hasCalledTaxi) then {
			_btnDriver ctrlEnable false;
			_btnDriver ctrlSetTooltip (["msgTaxiCannotDriveWhileCalling"] call mav_taxi_fnc_getLocalization);
		};

		if (!isNull mav_taxi_v_myDriver) then {
			_btnCustomer ctrlSetText (["msgTaxiCurrentFareInformation"] call mav_taxi_fnc_getLocalization);
		};

		if (!isNull mav_taxi_v_myCustomer) then {
			_btnDriver ctrlSetText (["msgTaxiCurrentFareInformation"] call mav_taxi_fnc_getLocalization);
		};
	};

	case "btnDriverClicked": {
		_params params [
			["_btnCtrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _btnCtrl;

		closeDialog 0;
		createDialog "RscDisplayTaxiCalls";
	};

	case "btnCustomerClicked": {
		_params params [
			["_btnCtrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _btnCtrl;

		closeDialog 0;
		createDialog "RscDisplayTaxiCall";
	};

	case "btnSettingsClicked": {
		_params params [
			["_btnCtrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _btnCtrl;

		closeDialog 0;
		createDialog "RscDisplayTaxiSettings";
	};
};