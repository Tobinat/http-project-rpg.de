/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

// Delete getIn task
[] call mav_taxi_fnc_stopTask;

// Reset time
mav_taxi_v_currentFare_startTime = diag_tickTime;

// Show marker where destination is
[
	[
		["msgTaskDriverGoToDescription"] call mav_taxi_fnc_getLocalization,
		["msgTaskDriverGoToDescriptionS"] call mav_taxi_fnc_getLocalization,
		["msgTaskDriverGoToDriverHUD"] call mav_taxi_fnc_getLocalization
	],
	mav_taxi_v_destination,
	"default"
] call mav_taxi_fnc_setTask;

// Set start position
mav_taxi_v_currentFare_startPosition = getPos player;