/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#include "gui\gui_includes.h"
disableSerialization;

params [
	["_customer", objNull, [objNull]],
	["_destination", [], [[]]]
];

if (isNull _customer) exitWith {};
if (count _destination != 3) exitWith {};

// Notification
["Proceed to the marked location"] spawn mav_taxi_fnc_showLargeNotification;

// Set variables
mav_taxi_v_myCustomer = _customer;
mav_taxi_v_destination = _destination;
mav_taxi_v_isDriver = true;
player setVariable ["mav_taxi_v_isOnDuty", nil, true];

// Add money
private _basePrice = getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "basePrice");
[-(round _basePrice), true] call mav_taxi_fnc_attemptPayment;

// Update UI if present
private _display = findDisplay MAV_IDD_RSCDISPLAYTAXICALLS;

if (!isNull _display) then {
	closeDialog 0; // Close dialog and open dialog for current job/call
	//createDialog "RscDisplayTaxiCurrentCustomer";
};

// Start fare
[player, _customer, true] call mav_taxi_fnc_startFare;

// Mark customer on map via task
[
	[
		["msgTaskDriverPickupDescription"] call mav_taxi_fnc_getLocalization,
		["msgTaskDriverPickupDescriptionS"] call mav_taxi_fnc_getLocalization,
		["msgTaskDriverPickupHUD"] call mav_taxi_fnc_getLocalization
	],
	_customer,
	"default"
] call mav_taxi_fnc_setTask;

// Start navigation if navigator is enabled
if ([] call mav_taxi_fnc_isNavigatorEnabled) then {
	[getPos player, getPos mav_taxi_v_myCustomer, [], "NORMAL", true] spawn mav_gps_fnc_startNavigationScripted;
};

// Set start position
mav_taxi_v_currentFare_startPosition = getPos _customer;