/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

disableSerialization;

params [
	["_driver", objNull, [objNull]],
	["_customer", objNull, [objNull]],
	["_asDriver", false, [false]]
];

if (isNull _driver || {isNull _customer}) exitWith {};

// Global var
mav_taxi_v_currentFare_isCounting = false;

// Taxi meter display
private _taximeterDisplay = displayNull;

// Kill performance
while {true} do {
	private _oldPosition = getPos _driver;
	sleep 1;
	private _newPos = getPos _driver;

	if (((vehicle _driver) isEqualTo (vehicle _customer)) && (_driver isEqualTo (driver vehicle _driver))) then {
		mav_taxi_v_currentFare_isCounting = true;
		mav_taxi_v_currentFare_totalDistance = mav_taxi_v_currentFare_totalDistance + (_oldPosition distance2D _newPos);

		// Scripted handler for when both parties for the first time sit in the same vehicle
		if (!mav_taxi_v_taxiMeterRan) then {
			mav_taxi_v_taxiMeterRan = true; // One time event

			if (_asDriver) then {
				[] spawn mav_taxi_fnc_driverCallerReached;
			} else {
				[] spawn mav_taxi_fnc_customerDriverReached;
			};

			// Open taxi-meter
			["RscTitleTaxiMeter", 0, false] call mav_gui_fnc_createLayer;
			_taximeterDisplay = uiNamespace getVariable ["RscTitleTaxiMeter", displayNull];
		};
	} else {
		mav_taxi_v_currentFare_isCounting = false;
	};

	// Scripted handler for when both parties are near each other
	if (!mav_taxi_v_hasReachedOtherParty) then {
		if ((_driver distance2D _customer) < 50) then {
			mav_taxi_v_hasReachedOtherParty = true; // Mark that both parties have found each other! Love!

			if (!_asDriver) then {
				// If we are a customer, mark us to get into the vehicle of the taxi driver
				[
					[
						["msgTaskCustomerDriverDescription"] call mav_taxi_fnc_getLocalization,
						["msgTaskCustomerDriverDescriptionS"] call mav_taxi_fnc_getLocalization,
						["msgTaskCustomerDriverHUD"] call mav_taxi_fnc_getLocalization
					],
					_driver,
					"getin"
				] call mav_taxi_fnc_setTask;

				// Show a notification
				["Your taxi driver is near you"] spawn mav_taxi_fnc_showLargeNotification;
			};
		};
	};

	// Check if at destination
	if ((player distance2D mav_taxi_v_destination) < 20) exitWith {
		mav_taxi_v_reachedDestination = true;

		// End script
		[mav_taxi_v_currentFare_totalDistance, _asDriver] spawn mav_taxi_fnc_destinationReached;
	};

	// Update display if not null
	if (!isNull _taximeterDisplay) then {
		["infoUpdater", [_taximeterDisplay]] spawn RscTitleTaxiMeter;
	};
};