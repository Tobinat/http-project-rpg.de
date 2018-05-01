/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define MAVFNC MAV_guiNavigationCurrent
#define MAVCFG missionConfigFile >> "maverick_navigationcfg"
#include "gui_includes.h"

disableSerialization;

params [
	["_mode", "", [""]],
	["_params", [], [[]]]
];

switch _mode do {
	case "onLoad": {
		_params params [
			["_display", displayNull, [displayNull]]
		];

		MAVV(Spam) = diag_tickTime;

		private _close = _display displayCtrl MAV_IDC_GUINAVIGATIONCURRENT_CLOSE;
		_close ctrlAddEventHandler ["ButtonClick", {ctrlParent (_this select 0) closeDisplay 0;}];

		private _resetBtn = _display displayCtrl MAV_IDC_GUINAVIGATIONCURRENT_BTN;
		_resetBtn ctrlAddEventHandler ["ButtonClick", {["resetRoute", _this] spawn MAVFNC}];

		//private _recalculateBtn = _display displayCtrl MAV_IDC_GUINAVIGATIONCURRENT_BTNRECALCULATE;
		//_recalculateBtn ctrlAddEventHandler ["ButtonClick", {["recalculateRoute", _this] spawn MAVFNC}];

		private _distances = ["distance", 0] call MAV_gps_fnc_fetchSettings;

		private _paths = ["km/h", "mph"];
		private _count = count _paths;

		if ((_distances + 1) > _count) then {
			_distances = 0;
		};

		_distances = [false, true] select (_distances isEqualTo 1);

		private _distance = [ MAV_gps_v_currentRoute param [1] ] call MAV_gps_fnc_distance;
		private _totalDistance = [ _distances, _distance ] call MAV_gps_fnc_kmToMiles;

		private _timeLeft = (_distance / (75 / 3.6));
		private _timeLeftRounded = parseNumber ((_timeLeft / 60) toFixed 0);

		private _timeLeftText = if (_timeLeft < 60) then {
			(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgOneMinute"))
		} else {
			format [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgMinutesLeft")), _timeLeftRounded]
		};

		private _infoText = _display displayCtrl MAV_IDC_GUINAVIGATIONCURRENT_INFO;
		_infoText ctrlSetStructuredText parseText format [
			"<t align='left' size='1.1'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRouteInfo"))+"</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgFrom"))+"</t><t align='right'>%1</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTo"))+"</t><t align='right'>%2</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTotalDistance"))+"</t><t align='right'>%3</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTotalravelTime"))+"</t><t align='right'>%4</t>",
			[((MAV_gps_v_currentRoute param [0]) param [0])] call MAV_gps_fnc_nearestLocation,
			[((MAV_gps_v_currentRoute param [0]) param [2])] call MAV_gps_fnc_nearestLocation,
			_totalDistance,
			_timeLeftText
		];

		_resetBtn ctrlShow true;
		//_recalculateBtn ctrlShow true;
	};

	case "resetRoute": {
		if ((missionNamespace getVariable ["MAV_guiNavigationCurrent_Spam", diag_tickTime]) > diag_tickTime) exitWith {};
		missionNamespace setVariable ["MAV_guiNavigationCurrent_Spam", diag_tickTime + 0.5];

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _ret = [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgCancelConfirm")),
			(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgCancelRoute")),
			(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgProceed")),
			(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgCancel"))
		] call BIS_fnc_guiMessage;

		if (_ret) then {
			(ctrlParent _ctrl) closeDisplay 2;
			false call MAV_gps_fnc_initGPS;
		};
	};

	case "onUnload": {
		MAVV(Spam) = nil;
	};

	case "recalculateRoute": {

	};
};
