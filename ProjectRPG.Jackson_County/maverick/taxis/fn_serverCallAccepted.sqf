/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_callId", -1, [-1]],
	["_by", objNull, [objNull]]
];

// Nope
if (_callId == -1 || {isNull _by}) exitWith {};

// Check if the driver is already active in a different fare
private _alreadyInFare = false;
{
	private _customer = _x param [0, objNull];
	private _inFareDriver = _x  param [1, objNull, [objNull]];

	if (_inFareDriver isEqualTo _by) exitWith {
		_alreadyInFare = true;
	};
} forEach mav_taxi_v_activeFares;

if (_alreadyInFare) exitWith {
	[["msgTaxiAlreadyInFare"] call mav_taxi_fnc_getLocalization] remoteExec ["mav_taxi_fnc_showLargeNotification", _by];
};

// Check if the call exists
private _callData = [];
private _atIndex = -1;
{
	_x params [
		"_player",
		"_since",
		"_id",
		"_destination"
	];

	if (_id == _callId && !isNull _player) exitWith {
		_callData = _x;
		_atIndex = _forEachIndex;
	};
} forEach mav_taxi_v_callQueue;

if (_callData isEqualTo [] || _atIndex == -1) then {
	[] remoteExecCall ["mav_taxi_fnc_driverCallAlreadyAccepted", _by];
} else {
	// Delete call from queue
	mav_taxi_v_callQueue deleteAt _atIndex;
	publicVariable "mav_taxi_v_callQueue";

	private _customer = _callData param [0, objNull];
	private _destination = _callData param [3, []];
	private _alreadyExists = false;
	{
		_x params ["_existingCustomer"];

		if (_existingCustomer isEqualTo _customer) exitWith {
			_alreadyExists = true;
		};
	} forEach mav_taxi_v_activeFares;

	if (_alreadyExists) exitWith {};

	// Notify driver and customer
	[_callData param [0, objNull], _destination] remoteExec ["mav_taxi_fnc_driverCallAccepted", _by];
	[_by, _destination] remoteExec ["mav_taxi_fnc_customerCallAccepted", _customer];

	// Set call ids
	private _id = _callData param [2, -1];
	[_id] remoteExec ["mav_taxi_fnc_setCallId", _by];
	[_id] remoteExec ["mav_taxi_fnc_setCallId", _customer];

	// Add the fare to the list of fares to be tracked
	mav_taxi_v_activeFares pushBack [_customer, _by, _callData param [2, -1]];
};