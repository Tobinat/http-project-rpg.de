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

		// INFO: Now directly called from fareRecording.sqf to save a thread!
		//if (!isNil "mav_taxi_v_taxiMeterDisplayUpdaterThread") then {
		//	terminate mav_taxi_v_taxiMeterDisplayUpdaterThread;
		//	mav_taxi_v_taxiMeterDisplayUpdaterThread = nil;
		//};

		//mav_taxi_v_taxiMeterDisplayUpdaterThread = ["infoUpdater", [_display]] spawn RscTitleTaxiMeter;

		["loadProfilePosition", [_display]] call RscTitleTaxiMeter;
	};

	case "loadProfilePosition": {
		_params params [
			["_display", displayNull, [displayNull]]
		];

		// Load taximeter position
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
	};

	case "infoUpdater": {
		_params params [
			["_display", displayNull, [displayNull]]
		];

		private _infoText = _display displayCtrl MAV_IDC_RSCTITLETAXIMETER_INFOTEXT;
		private _footerBackground = _display displayCtrl MAV_IDC_RSCTITLETAXIMETER_ACTIVEFOOTER_BACKGROUND;
		private _footerText = _display displayCtrl MAV_IDC_RSCTITLETAXIMETER_ACTIVEFOOTER_TEXT;

		while {!isNull _display} do {
			private _timeDifferenceSeconds = diag_tickTime - mav_taxi_v_currentFare_startTime;
			private _fareTime = [_timeDifferenceSeconds, "MM:SS"] call BIS_fnc_secondsToString;
			private _totalDistanceString = "";
			private _totalPriceString = "";

			// Calculate distance string in a nice way (e.g. "4.23 km")
			if (mav_taxi_v_currentFare_totalDistance >= 1000) then {
				_totalDistanceString = format ["%1 km", ((mav_taxi_v_currentFare_totalDistance / 1000) toFixed 2)];
			} else {
				_totalDistanceString = format ["%1 m", (mav_taxi_v_currentFare_totalDistance toFixed 0)];
			};

			// Calculate price and then display friendly version
			private _price = mav_taxi_v_pricePerKilometre * (mav_taxi_v_currentFare_totalDistance / 1000);
			_totalPriceString = format ["%1$", _price toFixed 0];

			_infoText ctrlSetStructuredText parseText format [["msgTaxiMeterInfoText"] call mav_taxi_fnc_getLocalization, _totalDistanceString, _fareTime, mav_taxi_v_pricePerKilometre, _totalPriceString];

			if (mav_taxi_v_currentFare_isCounting) then {
				_footerBackground ctrlSetBackgroundColor [0.99,0.49,0,1];
				_footerText ctrlSetStructuredText parseText (["msgTaxiMeterStatusTextActive"] call mav_taxi_fnc_getLocalization);
			} else {
				_footerBackground ctrlSetBackgroundColor [0,0,0,0.3];
				_footerText ctrlSetStructuredText parseText (["msgTaxiMeterStatusTextInactive"] call mav_taxi_fnc_getLocalization);
			};

			sleep 1;
		};
	};

	default {

	};
};