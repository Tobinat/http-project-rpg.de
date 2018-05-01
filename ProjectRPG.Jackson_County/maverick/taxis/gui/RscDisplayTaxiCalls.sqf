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

		if (isNull _display) exitWith {};

		// Handlers
		private _btnGoOnDuty = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_GOONDUTYBTN;
		_btnGoOnDuty ctrlAddEventHandler ["ButtonClick", {["btnOnDuty", _this] call RscDisplayTaxiCalls}];

		private _btnGoOffDuty = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_GOOFFDUTYBTN;
		_btnGoOffDuty ctrlAddEventHandler ["ButtonClick", {["btnOffDuty", _this] call RscDisplayTaxiCalls}];

		private _btnAcceptCall = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_ACCEPTCALL;
		_btnAcceptCall ctrlAddEventHandler ["ButtonClick", {["btnAccept", _this] call RscDisplayTaxiCalls}];

		private _btnCancelFare = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_CANCELCALL;
		_btnCancelFare ctrlAddEventHandler ["ButtonClick", {["btnCancel", _this] call RscDisplayTaxiCalls}];

		private _listnbox = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_LISTNBOX;
		_listnbox ctrlAddEventHandler ["LBSelChanged", {["lbSelectionChanged", _this] call RscDisplayTaxiCalls}];

		private _btnRefresh = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_REFRESHBTN;
		_btnRefresh ctrlAddEventHandler ["ButtonClick", {["refreshButtonClicked", _this] call RscDisplayTaxiCalls}];

		// Refresh list
		["refreshButtonClicked", [_display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_REFRESHBTN]] call RscDisplayTaxiCalls;

		// Refresh UI
		["refreshUI", [_display]] call RscDisplayTaxiCalls;

		// Automatically refresh UI
		["automaticListRefresh", [_display]] spawn RscDisplayTaxiCalls;
	};

	case "automaticListRefresh": {
		_params params ["_display"];

		while {!isNull _display} do {
			["refreshButtonClicked", [_display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_REFRESHBTN]] call RscDisplayTaxiCalls;
			sleep 1;
		};
	};

	case "refreshButtonClicked": {
		_params params [
			["_buttonCtrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _buttonCtrl;
		private _taxiCallsListbox = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_LISTNBOX;

		// Clear list
		lnbClear _taxiCallsListbox;

		// Header
		_taxiCallsListbox lnbAddRow ["Caller", "Distance", "Waiting For", "Current Location", "Destination"];
		_taxiCallsListbox lnbSetValue [[0, 0], -1];
		_taxiCallsListbox lnbSetColor [[0,0], [0.99,0.49,0,1]];
		_taxiCallsListbox lnbSetColor [[0,1], [0.99,0.49,0,1]];
		_taxiCallsListbox lnbSetColor [[0,2], [0.99,0.49,0,1]];
		_taxiCallsListbox lnbSetColor [[0,3], [0.99,0.49,0,1]];
		_taxiCallsListbox lnbSetColor [[0,4], [0.99,0.49,0,1]];

		// Add calls
		{
			_x params ["_unit", "_createdAt", "_id", "_destinationPosition"];

			private _distance = player distance2D _unit;
			private _distanceText = if (_distance >= 1000) then {
				format ["%1 km", (_distance / 1000) toFixed 2]
			} else {
				format ["%1 m", _distance toFixed 0]
			};

			_index = _taxiCallsListbox lnbAddRow [
				name _unit,
				_distanceText,
				[serverTime - _createdAt, "MM:SS"] call BIS_fnc_secondsToString,
				[getPos _unit] call mav_taxi_fnc_nearestLocation,
				[_destinationPosition] call mav_taxi_fnc_nearestLocation
			];

			_taxiCallsListbox lnbSetValue [[_index, 0], _id];
		} forEach mav_taxi_v_callQueue;
	};

	case "refreshUI": {
		_params params [
			["_display", displayNull, [displayNull]]
		];

		if (isNull _display) exitWith {};

		private _btnGoOnDuty = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_GOONDUTYBTN;
		private _btnGoOffDuty = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_GOOFFDUTYBTN;
		private _btnAcceptCall = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_ACCEPTCALL;
		private _btnCancelFare = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_CANCELCALL;
		private _listnbox = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_LISTNBOX;

		_btnGoOnDuty ctrlShow false;
		_btnGoOffDuty ctrlShow false;
		_btnAcceptCall ctrlShow false;
		_btnCancelFare ctrlShow false;

		if (mav_taxi_v_isOnDuty) then {
			if (isNull mav_taxi_v_myCustomer) then {
				_btnGoOffDuty ctrlShow true;
				_btnAcceptCall ctrlShow true;

				if (lnbCurSelRow _listnbox == -1) then {
					_btnAcceptCall ctrlEnable false;
				};
			} else {
				_btnCancelFare ctrlShow true;
			};
		} else {
			if (isNull mav_taxi_v_myCustomer) then {
				_btnGoOnDuty ctrlShow true;
				_btnAcceptCall ctrlShow true;
				_btnAcceptCall ctrlEnable false;
			} else {
				_btnCancelFare ctrlShow true;
			};
		};
	};

	case "lbSelectionChanged": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_index", -1, [-1]]
		];

		private _display = ctrlParent _ctrl;
		private _listnbox = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_LISTNBOX;
		private _btnRefresh = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_REFRESHBTN;
		private _btnAcceptCall = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_ACCEPTCALL;

		if ((_listnbox lnbValue [_index, 0]) != -1) then {
			_btnAcceptCall ctrlEnable true;
		} else {
			_btnAcceptCall ctrlEnable false;
		};

		// Refresh UI
		["refreshUI", [_display]] call RscDisplayTaxiCalls;
	};

	case "btnOnDuty": {
		if ([] call mav_taxi_fnc_preventClickSpam) exitWith { [] call mav_taxi_fnc_hintClickSpam; };

		_params params [
			["_buttonCtrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _buttonCtrl;

		mav_taxi_v_isOnDuty = true;
		mav_taxi_v_isDriver = true;
		player setVariable ["mav_taxi_v_isOnDuty", true, true];

		// Refresh UI
		["refreshUI", [_display]] call RscDisplayTaxiCalls;

		// Message
		//hint (["msgNowOnDuty"] call mav_taxi_fnc_getLocalization);
		[["msgNowOnDuty"] call mav_taxi_fnc_getLocalization, true, "maverick\taxis\data\images\information-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;

		// Save old call amount so we can notice the difference when a new call comes in
		mav_taxi_v_callAmount = count mav_taxi_v_callQueue;
	};

	case "btnOffDuty": {
		if ([] call mav_taxi_fnc_preventClickSpam) exitWith { [] call mav_taxi_fnc_hintClickSpam; };

		_params params [
			["_buttonCtrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _buttonCtrl;

		mav_taxi_v_isOnDuty = false;
		mav_taxi_v_isDriver = false;
		player setVariable ["mav_taxi_v_isOnDuty", nil, true];

		// Refresh UI
		["refreshUI", [_display]] call RscDisplayTaxiCalls;

		// Message
		//hint (["msgNowOffDuty"] call mav_taxi_fnc_getLocalization);
		[["msgNowOffDuty"] call mav_taxi_fnc_getLocalization, true, "maverick\taxis\data\images\information-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
	};

	case "btnAccept": {
		if ([] call mav_taxi_fnc_preventClickSpam) exitWith { [] call mav_taxi_fnc_hintClickSpam; };

		_params params [
			["_buttonCtrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _buttonCtrl;
		private _listnbox = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_LISTNBOX;

		if ((_listnbox lnbValue [lnbCurSelRow _listnbox, 0]) != -1) then {
			[_listnbox lnbValue [lnbCurSelRow _listnbox, 0], player] remoteExecCall ["mav_taxi_fnc_serverCallAccepted", 2];
		};

		// Refresh UI
		["refreshUI", [_display]] call RscDisplayTaxiCalls;
	};

	case "btnCancel": {
		if ([] call mav_taxi_fnc_preventClickSpam) exitWith { [] call mav_taxi_fnc_hintClickSpam; };

		_params params [
			["_buttonCtrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _buttonCtrl;

		// Are you sure?
		[_display] spawn {
			disableSerialization;
			params [
				["_display", displayNull, [displayNull]]
			];

			private _ret = [["msgTaxiCancelDriverConfirm"] call mav_taxi_fnc_getLocalization,
				["msgTaxiCancelHeader"] call mav_taxi_fnc_getLocalization,
				["msgTaxiCancelButtonConfirm"] call mav_taxi_fnc_getLocalization,
				["msgTaxiCancelButtonCancel"] call mav_taxi_fnc_getLocalization
			] call BIS_fnc_guiMessage;

			if (_ret) then {
				// Notify server that the call has ended
				[mav_taxi_v_myCallId] remoteExec ["mav_taxi_fnc_serverFareFinished", 2];

				hint (["msgTaxiFareCancelled"] call mav_taxi_fnc_getLocalization);

				["BY_DRIVER"] remoteExecCall ["mav_taxi_fnc_fareCancelled", mav_taxi_v_myCustomer];
				["BY_DRIVER"] call mav_taxi_fnc_fareCancelled;
				["refreshUI", [_display]] call RscDisplayTaxiCalls;

				closeDialog 0;
			};
		};
	};
};