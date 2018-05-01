/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_distance", 0, [0]]
];

if (_distance < 0) exitWith {};

// Set global var
mav_taxi_v_currentFare_totalDistanceByDriver = _distance;
mav_taxi_v_callerReceivedTotalDistance = true;