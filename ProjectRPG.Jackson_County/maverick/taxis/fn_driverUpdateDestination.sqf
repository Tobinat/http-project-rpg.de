/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_destination", [], [[]]]
];

if (count _destination != 3) exitWith {};

// Notification
[["msgTaxiDestinationUpdated"] call mav_taxi_fnc_getLocalization] spawn mav_taxi_fnc_showLargeNotification;

// Set variable
mav_taxi_v_destination = _destination;

if (mav_taxi_v_taxiMeterRan) then {
	// Update task
	[
		[
			["msgTaskDriverGoToDescription"] call mav_taxi_fnc_getLocalization,
			["msgTaskDriverGoToDescriptionS"] call mav_taxi_fnc_getLocalization,
			["msgTaskDriverGoToDriverHUD"] call mav_taxi_fnc_getLocalization
		],
		mav_taxi_v_destination,
		"default"
	] call mav_taxi_fnc_setTask;

	// Start navigation if navigator is enabled
	if ([] call mav_taxi_fnc_isNavigatorEnabled) then {
		[getPos player, mav_taxi_v_destination, [], "NORMAL", true] spawn mav_gps_fnc_startNavigationScripted;
	};
};