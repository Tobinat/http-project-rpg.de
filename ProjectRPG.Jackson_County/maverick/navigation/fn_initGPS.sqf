/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_showGPS", false, [false]]
];

if (_showGPS) exitWith {
	mav_gps_v_running = true;
	["MAV_titleNavigation", 2] call MAV_gui_fnc_createLayer;
};

disableSerialization;

private _display = uiNamespace getVariable ["MAV_titleNavigation", displayNull];
if !(isNull _display) then {
	(_display displayCtrl 1) ctrlRemoveEventHandler ["Draw", MAV_titleNavigation_MapHandle];
};

"MAV_titleNavigation" call MAV_gui_fnc_destroyLayer;

if !(isNil "mav_gps_v_markers") then {
	{ deleteMarkerLocal (_x param [0]); } count mav_gps_v_markers;
	mav_gps_v_markers = nil;
};

if !(isNil "MAV_gps_v_currentRoute") then {
	MAV_gps_v_currentRoute = nil;
};