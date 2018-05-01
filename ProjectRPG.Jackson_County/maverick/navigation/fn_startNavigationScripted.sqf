/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_startPosition", [], [[]]],
	["_endPosition", [], [[]]],
	["_checkpoints", [], [[]]],
	["_searchMode", "NORMAL", [""]],
	["_stopExistingNavigation", true, [true]]
];

if (_stopExistingNavigation) then {
	[] call mav_gps_fnc_stopNavigationScripted;
} else {
	if ([] call mav_gps_fnc_isNavigationRunning) exitWith {
		false
	};
};

private _const_roadSearchRadius = 150;

if (_startPosition isEqualTo [] || {count _startPosition != 3}) exitWith {
	_msg = (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgStartInvalid"));
	diag_log _msg;
	[_msg] call BIS_fnc_error;
};

if (_endPosition isEqualTo [] || {count _endPosition != 3}) exitWith {
	_msg = (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgEndPosInvalid"));
	diag_log _msg;
	[_msg] call BIS_fnc_error;
};

private _hasError = false;
{
	if (_x isEqualTo [] || {count _x != 3}) exitWith {
		_msg = (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgCheckpointInvalid"));
		diag_log _msg;
		[_msg] call BIS_fnc_error;
		_hasError = true;
	};
} forEach _checkpoints;

if (_hasError) exitWith {};

private _totalRoute = [];
private _previousPosition = _startPosition;
private _targetPosition = if (count _checkpoints > 0) then { _checkpoints param [0, [0,0,0], [[]]] } else { _endingReached = true; _endPosition };
private _endingReached = false;

for "_i" from 0 to 1 step 0 do {
	private _lastSegmentRoadEndingObject = _totalRoute param [count _totalRoute - 1, objNull, [objNull]];
	private _startRoad = objNull;
	private _endRoad = objNull;

	if (!isNull _lastSegmentRoadEndingObject) then {
		_startRoad = _lastSegmentRoadEndingObject;
	} else {
		_startRoad = [_previousPosition, _const_roadSearchRadius, []] call BIS_fnc_nearestRoad;
	};

	_endRoad = [_targetPosition, _const_roadSearchRadius, []] call BIS_fnc_nearestRoad;

	if (isNull _startRoad || isNull _endRoad) exitWith {
		_msg = format [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgNoRoadsegmentFound")), _const_roadSearchRadius, _previousPosition];
		diag_log _msg;
		[_msg] call BIS_fnc_error;
		_hasError = true;
	};

	private _segmentPath = [_startRoad, _endRoad, toLower _searchMode] call MAV_gps_fnc_explorer;
	_segmentPath deleteAt 0;
	_totalRoute append _segmentPath;

	if (count _checkpoints > 0) then {
		_checkpoints deleteAt 0;
	};

	if (_endingReached) exitWith {};

	//_previousPosition = getPos (_totalRoute select (count _totalRoute - 1));
	_previousPosition = if (!isNull (_totalRoute param [count _totalRoute - 1, objNull])) then { getPos (_totalRoute param [count _totalRoute - 1, objNull]) } else { _startPosition };
	_targetPosition = if (count _checkpoints > 0) then { _checkpoints param [0, [0,0,0], [[]]] } else { _endingReached = true; _endPosition };
};

if (count _totalRoute < 3) exitWith {
	false
};

if (_hasError) exitWith {};
reverse _totalRoute;

MAV_gps_v_currentRoute = [[_startPosition, objNull, _endPosition], _totalRoute];

[_totalRoute] call MAV_gps_fnc_addPath;

[true] call MAV_gps_fnc_initGPS;

true