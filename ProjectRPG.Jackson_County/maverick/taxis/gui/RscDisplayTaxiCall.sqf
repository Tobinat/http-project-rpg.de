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

		private _mainInfoText = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_INFOTEXT;

		private _callTaxiButton = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_CALLTAXI;
		_callTaxiButton ctrlAddEventHandler ["ButtonClick", {["callTaxiClicked", _this] call RscDisplayTaxiCall}];

		private _cancelTaxiButton = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_CANCELTAXI;
		_cancelTaxiButton ctrlAddEventHandler ["ButtonClick", {["cancelTaxiClicked", _this] call RscDisplayTaxiCall}];

		private _cb1 = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_STATUS_MARKEDDESTINATION;
		_cb1 ctrlEnable false;

		private _cb2 = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_STATUS_CREATEDCALL;
		_cb2 ctrlEnable false;

		private _cb3 = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_STATUS_DRIVERFOUND;
		_cb3 ctrlEnable false;

		private _cb4 = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_STATUS_PICKEDUP;
		_cb4 ctrlEnable false;

		private _map = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_DESTINATIONMAP;
		_map ctrlAddEventHandler ["Draw", {["mapDraw", _this] call RscDisplayTaxiCall}];
		_map ctrlAddEventHandler ["MouseButtonDblClick", {["mapDblClick", _this] call RscDisplayTaxiCall}];

		// Set Call Taxi button text
		private _basePrice = getNumber (script_config >> "pricing" >> "basePrice");

		if (_basePrice > 0) then {
			_callTaxiButton ctrlSetText format [(["msgCallTaxi"] call mav_taxi_fnc_getLocalization) + " (%1$)", getNumber (script_config >> "pricing" >> "basePrice")];
		} else {
			_callTaxiButton ctrlSetText (["msgCallTaxi"] call mav_taxi_fnc_getLocalization);
		};

		// Show UI depending on situation
		["showUI", [_display]] call RscDisplayTaxiCall;
	};

	case "mapDraw": {
		_params params [
			["_map", controlNull, [controlNull]]
		];

		private _display = ctrlParent _map;

		if (count mav_taxi_v_destination == 3) then {
			_map drawIcon [
				"\a3\ui_f\data\Map\MapControl\waypoint_CA.paa",
      			[1,0,0,1],
      			mav_taxi_v_destination,
      			30,
      			30,
      			0,
				"Destination",
				1.5,
				0.06,
				"RobotoCondensed"
			];
		};
	};

	case "mapDblClick": {
		private _exit = false;
		if (!isNull mav_taxi_v_myDriver) then {
			if ([5] call mav_taxi_fnc_preventClickSpam) exitWith { _exit = true; };
		} else {
			[] call mav_taxi_fnc_resetClickSpam;
		};

		// Exit cause you aint gonna be this fast
		if (_exit) exitWith { [] call mav_taxi_fnc_hintClickSpam; };

		_params params ["_ctrl", "_button", "_mouseX", "_mouseY"];
		private _display = ctrlParent _ctrl;

		private _pos = _ctrl ctrlMapScreenToWorld [_mouseX, _mouseY];
		_pos set [2, 0];

		private _nearestRoad = [_pos, 250, []] call BIS_fnc_nearestRoad;

		if (isNull _nearestRoad) then {
			hint (["msgTaxiNoRoadNearFound"] call mav_taxi_fnc_getLocalization)
		} else {
			mav_taxi_v_destination = getPos _nearestRoad;
		};

		["showUI", [_display]] call RscDisplayTaxiCall;

		if (!isNull mav_taxi_v_myDriver) then {
			// Update on driver machine
			[player, mav_taxi_v_destination] remoteExecCall ["mav_taxi_fnc_serverUpdateDestination", 2];

			if (mav_taxi_v_taxiMeterRan) then {
				// Update locally
				[
					[
						["msgTaskDriverGoToDescription"] call mav_taxi_fnc_getLocalization,
						["msgTaskDriverGoToDescriptionS"] call mav_taxi_fnc_getLocalization,
						["msgTaskDriverGoToDriverHUD"] call mav_taxi_fnc_getLocalization
					],
					mav_taxi_v_destination,
					"default"
				] call mav_taxi_fnc_setTask;
			};
		};
	};

	case "callTaxiClicked": {
		if ([1] call mav_taxi_fnc_preventClickSpam) exitWith {[] call mav_taxi_fnc_hintClickSpam;};

		private _basePrice = getNumber (script_config >> "pricing" >> "basePrice");
		private _exit = false;

		if (_basePrice > 0) then {
			private _couldPay = [_basePrice, false] call mav_taxi_fnc_attemptPayment;

			if (!_couldPay) then {
				_exit = true;
				hint (["msgBaseNotAffordable"] call mav_taxi_fnc_getLocalization);
				mav_taxi_v_destination = [];
			};
		};

		if (_exit) exitWith {};

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _ctrl;
		[player, mav_taxi_v_destination] remoteExecCall ["mav_taxi_fnc_serverQueueRequest", 2];
		mav_taxi_v_hasCalledTaxi = true;
		mav_taxi_v_currentFare_startPosition = getPos player;

		// Show UI depending on situation
		["showUI", [_display]] call RscDisplayTaxiCall;

		// Hint
		hint (["msgTaxiCalled"] call mav_taxi_fnc_getLocalization);
	};

	case "cancelTaxiClicked": {
		if ([1] call mav_taxi_fnc_preventClickSpam) exitWith {[] call mav_taxi_fnc_hintClickSpam;};

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _ctrl;

		if (mav_taxi_v_hasCalledTaxi) then {
			if (isNull mav_taxi_v_myDriver) then {
				[player] remoteExecCall ["mav_taxi_fnc_serverDequeueRequest", 2];
				mav_taxi_v_hasCalledTaxi = false;

				hint (["msgTaxiCancelled"] call mav_taxi_fnc_getLocalization);
				["showUI", [_display]] call RscDisplayTaxiCall;
				mav_taxi_v_destination = [];

				private _basePrice = getNumber (script_config >> "pricing" >> "basePrice");
				[-_basePrice, false] call mav_taxi_fnc_attemptPayment;
			} else {
				// A taxidriver has already accepted, are you sure?
				[_display] spawn {
					disableSerialization;
					params [
						["_display", displayNull, [displayNull]]
					];

					private _ret = [["msgTaxiCancelConfirm"] call mav_taxi_fnc_getLocalization,
						["msgTaxiCancelHeader"] call mav_taxi_fnc_getLocalization,
						["msgTaxiCancelButtonConfirm"] call mav_taxi_fnc_getLocalization,
						["msgTaxiCancelButtonCancel"] call mav_taxi_fnc_getLocalization
					] call BIS_fnc_guiMessage;

					if (_ret) then {
						mav_taxi_v_hasCalledTaxi = true;

						// Notify server that the call has ended
						[mav_taxi_v_myCallId] remoteExec ["mav_taxi_fnc_serverFareFinished", 2];

						//hint (["msgTaxiCancelled"] call mav_taxi_fnc_getLocalization);
						[["msgTaxiCancelled"] call mav_taxi_fnc_getLocalization, true] spawn mav_taxi_fnc_showLargeNotification;

						["BY_CUSTOMER"] remoteExecCall ["mav_taxi_fnc_fareCancelled", mav_taxi_v_myDriver];
						["BY_CUSTOMER"] call mav_taxi_fnc_fareCancelled;
						["showUI", [_display]] call RscDisplayTaxiCall;

						closeDialog 0;
					};
				};
			};
		};
	};

	case "showUI": {
		_params params [
			["_display", displayNull, [displayNull]]
		];

		private _mainInfoText = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_INFOTEXT;
		private _callTaxiButton = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_CALLTAXI;
		private _cancelTaxiButton = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_CANCELTAXI;
		private _cb1 = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_STATUS_MARKEDDESTINATION;
		private _cb2 = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_STATUS_CREATEDCALL;
		private _cb3 = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_STATUS_DRIVERFOUND;
		private _cb4 = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_STATUS_PICKEDUP;
		private _lblAvailableDrivers = _display displayCtrl MAV_IDC_RSCDISPLAYTAXICALL_AVAILABLEDRIVERS;

		_lblAvailableDrivers ctrlSetText str count (playableUnits select {_x getVariable ["mav_taxi_v_isOnDuty", false]});

		_cb1 cbSetChecked false;
		_cb2 cbSetChecked false;
		_cb3 cbSetChecked false;
		_cb4 cbSetChecked false;

		_cancelTaxiButton ctrlShow false;
		_callTaxiButton ctrlShow false;

		if (count mav_taxi_v_destination == 3) then {
			_cb1 cbSetChecked true;
		};

		if (mav_taxi_v_hasCalledTaxi) then {
			_cancelTaxiButton ctrlShow true;
			_cb2 cbSetChecked true;

			if (isNull mav_taxi_v_myDriver) then {

			} else {
				_cb3 cbSetChecked true;
			};

			if (mav_taxi_v_taxiMeterRan) then {
				_cb4 cbSetChecked true;
			};
		} else {
			_mainInfoText ctrlSetStructuredText parseText format [["msgMainInfoNoTaxiCalled"] call mav_taxi_fnc_getLocalization, count (AllPlayers select {_x getVariable ["mav_taxi_v_isOnDuty", false]})];
			_callTaxiButton ctrlShow true;
			_callTaxiButton ctrlEnable true;

			if (count mav_taxi_v_destination != 3) then {
				_callTaxiButton ctrlEnable false;
			};
		};
	};

	default {

	};
};