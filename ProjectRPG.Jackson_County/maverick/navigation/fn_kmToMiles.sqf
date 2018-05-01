/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_convert", false, [false]],
	["_distance", -1, [0]],
	["_short", false, [false]]
];

if (_distance isEqualTo -1) exitWith {0};

if (_convert) then {
	_distance = _distance / 1000;
 	private _half = _distance / 2;
 	private _quarter = _half / 4;
	private _ret = _quarter + _half;

	if (_ret < 1) then {
		_ret = _ret toFixed 2;
	} else {
		_ret = _ret toFixed 1;
	};

	format ["%1 %2", _ret, ["mile(s)", "mi."] select _short];
} else {
	if (_distance >= 1000) then {
		format ["%1 %2", (_distance / 1000) toFixed 1, ["kilometre(s)", "km"] select _short]
	} else {
		private _shortTerm = ["metre(s)", "m"] select _short;
		if (_distance > 100) then {
			format ["%1 %2", (parseNumber ((_distance / 100) toFixed 0)) * 100, _shortTerm];
		} else {
			format ["%1 %2", (parseNumber ((_distance / 10) toFixed 0)) * 10, _shortTerm];
		};
	};
};
