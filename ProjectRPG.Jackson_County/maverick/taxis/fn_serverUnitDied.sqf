/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_unit", objNull, [objNull]]
];

// Nope
if (isNull _unit) exitWith {};
if (!isPlayer _unit) exitWith {};

{
	private _passenger = _x param [0, objNull];
	private _driver = _x param [1, objNull];

	if (_unit in [_passenger, _driver]) exitWith {
		// Execute the fareCancelled script on both sides
		["BY_SERVER"] remoteExec ["mav_taxi_fnc_fareCancelled", _passenger];
		["BY_SERVER"] remoteExec ["mav_taxi_fnc_fareCancelled", _driver];

		mav_taxi_v_activeFares deleteAt _forEachIndex;
	};
} forEach mav_taxi_v_activeFares;