/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_finalDistanceDriven", 0, [0]],
	["_isDriver", false, [false]]
];

// Do billing
[_finalDistanceDriven, _isDriver, mav_taxi_v_myDriver, mav_taxi_v_myCustomer, mav_taxi_v_taxiMeterRan, false, false, mav_taxi_v_currentFare_startPosition, mav_taxi_v_destination] spawn mav_taxi_fnc_processFareBilling;

if (_isDriver) then {
	// Send to the server that the fare is over
	[mav_taxi_v_myCallId] remoteExecCall ["mav_taxi_fnc_serverFareFinished", 2];
};

// End fare
[] call mav_taxi_fnc_stopFare;