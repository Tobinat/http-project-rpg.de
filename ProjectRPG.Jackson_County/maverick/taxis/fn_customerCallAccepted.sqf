/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

disableSerialization;

params [
	["_driver", objNull, [objNull]]
];

if (isNull _driver) exitWith {};

// Notification
[["msgTaxiCallAccepted"] call mav_taxi_fnc_getLocalization] spawn mav_taxi_fnc_showLargeNotification;

// Start fare
[_driver, player, false] call mav_taxi_fnc_startFare;

// Update UI if still open
private _display = uiNamespace getVariable ["RscDisplayTaxiCall", displayNull];

if (!isNull _display) then {
	["showUI", [_display]] call RscDisplayTaxiCall;
};