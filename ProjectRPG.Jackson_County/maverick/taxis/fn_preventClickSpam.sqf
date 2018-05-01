/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_timeToElapse", 1, [1]]
];

if (isNil "mav_taxi_v_lastClick") then {
	mav_taxi_v_lastClick = 0;
};

if (diag_tickTime - mav_taxi_v_lastClick < _timeToElapse) exitWith {
	true
};

mav_taxi_v_lastClick = diag_tickTime;

false