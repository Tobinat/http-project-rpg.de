/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

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

// Notification
["Drive to the destination"] spawn mav_taxi_fnc_showLargeNotification;

// Reset time
mav_taxi_v_currentFare_startTime = diag_tickTime;

// Start navigation to the destination
if ([] call mav_taxi_fnc_isNavigatorEnabled) then {
	[getPos player, mav_taxi_v_destination, [], "NORMAL", true] spawn mav_gps_fnc_startNavigationScripted;
};

// Set start position
mav_taxi_v_currentFare_startPosition = getPos player;