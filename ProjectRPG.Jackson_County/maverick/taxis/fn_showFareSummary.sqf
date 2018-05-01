/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_segments", [], [[]]],
	["_startPos", [], [[]]],
	["_endPos", [], [[]]]
];

mav_taxi_v_fareSummary_total = 0;
mav_taxi_v_fareSummary_summaryString = format ["<br/>From<t align='right'>%1</t><br/>To<t align='right'>%2</t>", [_startPos] call mav_taxi_fnc_nearestLocation, [_endPos] call mav_taxi_fnc_nearestLocation];

{
	_x params [
		["_text", "", [""]],
		["_toAdd", 0, [0]],
		["_localize", true, [true]]
	];

	private _finalLabelText = if (_localize) then { [_text] call mav_taxi_fnc_getLocalization } else { _text };

	if (_toAdd < 0) then {
		mav_taxi_v_fareSummary_summaryString = format ["%1<br/>%2<t align='right' color='#c62828'>%3$</t>", mav_taxi_v_fareSummary_summaryString, _finalLabelText, _toAdd toFixed 0];
	} else {
		mav_taxi_v_fareSummary_summaryString = format ["%1<br/>%2<t align='right' color='#43a047'>+%3$</t>", mav_taxi_v_fareSummary_summaryString, _finalLabelText, _toAdd toFixed 0];
	};

	mav_taxi_v_fareSummary_total = mav_taxi_v_fareSummary_total + _toAdd;
} forEach _segments;

// Show UI
["RscTitleTaxiFareSummary"] call mav_gui_fnc_createLayer;