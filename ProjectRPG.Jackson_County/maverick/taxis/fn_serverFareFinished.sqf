/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_id", -1, [-1]]
];

if (_id == -1) exitWith {};

{
	if (_x param [2, -1] == _id) exitWith {
		mav_taxi_v_activeFares deleteAt _forEachIndex;
	};
} forEach mav_taxi_v_activeFares;