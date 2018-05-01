/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_finalDistanceDriven", 0, [0]],
	["_isDriver", false, [false]],
	["_driver", objNull, [objNull]],
	["_customer", objNull, [objNull]],
	["_didTaxiMeterRun", false, [false]],
	["_notCompleted", false, [false]],
	["_cancelledByDriver", false, [false]],
	["_startPosition", [], [[]]],
	["_endPosition", [], [[]]]
];

// No
if (_finalDistanceDriven < 0) exitWith {};

// If we are the driver, send the driven distance to the customer (driver has the higher priority in this case!) and if we are the customer, wait for that data, previous data was only for the UI
if (_isDriver) then {
	[_finalDistanceDriven] remoteExecCall ["mav_taxi_fnc_setDrivenDistance", _customer];
} else {
	waitUntil {sleep 0.1; mav_taxi_v_callerReceivedTotalDistance};
	_finalDistanceDriven = mav_taxi_v_currentFare_totalDistanceByDriver;
	mav_taxi_v_currentFare_totalDistanceByDriver = nil;
};

// Get billing mode and total price
//private _automaticBilling = (getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "automaticTransactions")) == 1;
private _automaticBilling = true;
private _totalPrice = (mav_taxi_v_pricePerKilometre * (_finalDistanceDriven / 1000));
private _basePrice = getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "basePrice");

if (_automaticBilling) then {
	private _exit = false;
	private _totalSegmentsToDisplay = [];

	// If we were the driver, wait for the total amount the customer could actually pay us!
	if (_isDriver) then {
		// Add base price to bill
		_totalSegmentsToDisplay pushBack ["msgTaxiBillingBasePrice", round _basePrice, true];

		if (_totalPrice > 0) then {
			// Add total price by distance to bill
			_totalSegmentsToDisplay pushBack ["msgTaxiBillingPayment", round _totalPrice, true];
		};

		waitUntil {sleep 0.1; (mav_taxi_v_callerPaid != -1)};

		if (mav_taxi_v_callerPaid > _totalPrice) then {
			_totalPrice = mav_taxi_v_callerPaid;
		};

		// Check if the full price has been paid
		if (mav_taxi_v_callerPaid == _totalPrice) then {
			// Full price
			[round (-_totalPrice), true] call mav_taxi_fnc_attemptPayment;

			if (!_notCompleted) then {
				[format [["msgPaidDriver"] call mav_taxi_fnc_getLocalization, (_totalPrice + _basePrice) toFixed 0], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
			};
		} else {
			// Not full price
			[round (-mav_taxi_v_callerPaid), true] call mav_taxi_fnc_attemptPayment;

			if (!_notCompleted) then {
				[format [["msgNotFullyPaidDriver"] call mav_taxi_fnc_getLocalization, (_totalPrice + _basePrice) toFixed 0, mav_taxi_v_callerPaid], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
			};

			if (_totalPrice > 0) then {
				// Add that not the full price was available
				_totalSegmentsToDisplay pushBack ["msgTaxiBillingDriverMissingP", -(round (_totalPrice - mav_taxi_v_callerPaid)), true];
			};
		};
	} else {
		// Process caller billing and send the total amount paid to the driver
		private _couldPay = [round _totalPrice, false] call mav_taxi_fnc_attemptPayment;

		// Add base price to bill
		_totalSegmentsToDisplay pushBack ["msgTaxiBillingBasePrice", -(round _basePrice), true];

		if (_totalPrice > 0) then {
			// Add total price by distance to bill
			_totalSegmentsToDisplay pushBack ["msgTaxiBillingPayment", -(round _totalPrice), true];
		};

		if (_couldPay) then {
			[_totalPrice] remoteExecCall ["mav_taxi_fnc_driverCallerPaid", _driver];

			if (!_notCompleted) then {
				[format [["msgPaidCustomer"] call mav_taxi_fnc_getLocalization, (_totalPrice + _basePrice) toFixed 0], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
			};
		} else {
			// Could not afford full price, manually get the highest amount we could pay
			private _maxAmountAvailable = [] call mav_taxi_fnc_getMaximumMoneyAvailable;

			// Notify taxi driver of actual amount
			[_maxAmountAvailable] remoteExecCall ["mav_taxi_fnc_driverCallerPaid", _driver];
			[_maxAmountAvailable, false] call mav_taxi_fnc_attemptPayment;

			// Message
			if (!_notCompleted) then {
				[format [["msgNotFullyPaidCustomer"] call mav_taxi_fnc_getLocalization, (_totalPrice + _basePrice) toFixed 0, _maxAmountAvailable], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
			};

			if (_totalPrice > 0) then {
				// Add that not the full price was available
				_totalSegmentsToDisplay pushBack ["msgTaxiBillingCustomerMissingP", (round (_totalPrice - _maxAmountAvailable)), true];
			};
		};
	};

	// Was the fare cancelled? Give back the base price
	if (_cancelledByDriver) then {
		if (_isDriver) then {
			[_basePrice, false] call mav_taxi_fnc_attemptPayment;
			_totalSegmentsToDisplay pushBack ["msgTaxiBillingCancelled", -_basePrice];
		} else {
			_totalSegmentsToDisplay pushBack ["msgTaxiBillingCancelled", _basePrice];
			[-_basePrice, true] call mav_taxi_fnc_attemptPayment;
		};
	};

	[_totalSegmentsToDisplay, _startPosition, _endPosition] spawn mav_taxi_fnc_showFareSummary;
} else {
	if (!_isDriver) then {
		[format [["msgPayCustomer"] call mav_taxi_fnc_getLocalization, _totalPrice toFixed 2], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
	} else {
		[format [["msgPayDriver"] call mav_taxi_fnc_getLocalization, _totalPrice toFixed 2], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
	};
};

// Systemchat message
//systemChat (format [["msgTotalPayment"] call mav_taxi_fnc_getLocalization, _totalPrice toFixed 2]);