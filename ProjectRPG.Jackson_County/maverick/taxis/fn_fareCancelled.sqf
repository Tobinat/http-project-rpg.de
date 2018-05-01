/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#include "gui\gui_includes.h"

params [
	["_reason", "", [""]]
];

// Stop existing fare recorder
if (!isNil "mav_taxi_v_fareRecordingThread") then {
	terminate mav_taxi_v_fareRecordingThread;
	mav_taxi_v_fareRecordingThread = nil;
};

// Driver/customer specific events
if (mav_taxi_v_isDriver) then {
	if (_reason != "BY_DRIVER") then {
		[["masTaxiFareCancelledAsDriver"] call mav_taxi_fnc_getLocalization] spawn mav_taxi_fnc_showLargeNotification;
	};

	// Local vars
	mav_taxi_v_isOnDuty = true;

	// Global vars
	player setVariable ["mav_taxi_v_isOnDuty", true, true];
} else {
	if (_reason != "BY_CUSTOMER") then {
		[["msgTaxiFareCancelledAsCustomer"] call mav_taxi_fnc_getLocalization] spawn mav_taxi_fnc_showLargeNotification;
	};
};

// Delete any task if present
[] call mav_taxi_fnc_stopTask;

// Delete the taximeter if its present
["RscTitleTaxiMeter"] call mav_gui_fnc_destroyLayer;

// Stop possible navigation
if ([] call mav_taxi_fnc_isNavigatorEnabled) then {
	[] spawn mav_gps_fnc_stopNavigationScripted;
};

// Give/take money visually and actually (wew)
//private _automaticBilling = (getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "automaticTransactions")) == 1;
private _automaticBilling = true;
private _totalPrice = (mav_taxi_v_pricePerKilometre * (mav_taxi_v_currentFare_totalDistance / 1000));
[_totalPrice, mav_taxi_v_isDriver, mav_taxi_v_myDriver, mav_taxi_v_myCustomer, true, true, _reason == "BY_DRIVER", mav_taxi_v_currentFare_startPosition, mav_taxi_v_destination] spawn mav_taxi_fnc_processFareBilling;

// Reset vars
mav_taxi_v_hasCalledTaxi				= false;
mav_taxi_v_myDriver						= objNull;
mav_taxi_v_myCustomer					= objNull;
mav_taxi_v_currentFare_startTime		= 0;
mav_taxi_v_currentFare_totalDistance 	= 0;
mav_taxi_v_myCallId						= -1;
mav_taxi_v_hasReachedOtherParty			= false;
mav_taxi_v_taxiMeterRan					= false;
mav_taxi_v_destination					= [];