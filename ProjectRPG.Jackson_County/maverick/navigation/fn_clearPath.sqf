/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

if (isNil {missionNamespace getVariable "mav_gps_v_markers"}) then { mav_gps_v_markers = []; };

{
	_x params [
		["_markerName", "", [""]],
		["_roadObject", objNull, [objNull]]
	];

	deleteMarkerLocal _markerName;
} forEach mav_gps_v_markers;

mav_gps_v_markers = nil;