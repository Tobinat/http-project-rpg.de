/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

disableSerialization;
params [
	["_startRoad", objNull, [objNull]],
	["_endRoad", objNull, [objNull]]
];

if (isNull _startRoad || {isNull _endRoad}) exitWith {false};
if (isNil {missionNamespace getVariable "mav_gps_v_markers"}) then { mav_gps_v_markers = []; };

private _startRoadPosition = getPos _startRoad;
private _endRoadPosition = getPos _endRoad;
private _direction = [_startRoadPosition, _endRoadPosition] call BIS_fnc_dirTo;
private _centerPosition = [
	((_startRoadPosition select 0) + (_endRoadPosition select 0)) / 2,
	((_startRoadPosition select 1) + (_endRoadPosition select 1)) / 2,
	((_startRoadPosition select 2) + (_endRoadPosition select 2)) / 2
];
private _length = (_startRoadPosition distance _endRoadPosition) / 1.5;
private _width = 6;

private _markerName = format ["mav_gps_marker_%1", count mav_gps_v_markers];
private _increaseCounter = 1;

while {!((allMapMarkers find _markerName) isEqualTo -1)} do {
	_increaseCounter = _increaseCounter + 1;
	_markerName = format ["mav_gps_marker_%1", (count mav_gps_v_markers) + _increaseCounter];
};

private _marker = createMarkerLocal [_markerName, _centerPosition];
_marker setMarkerDirLocal _direction;
_marker setMarkerShapeLocal "RECTANGLE";
_marker setMarkerSizeLocal [_width, _length];
_marker setMarkerColorLocal "ColorUNKNOWN";
_marker setMarkerAlphaLocal 1;
_marker setMarkerBrushLocal "SolidFull";

mav_gps_v_markers pushBack [_markerName, _endRoad, "none", []];

true