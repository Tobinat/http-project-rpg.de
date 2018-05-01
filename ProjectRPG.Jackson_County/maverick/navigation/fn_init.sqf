/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

if(!hasInterface) exitWith {};

0 spawn {
	waitUntil {!isNull player};
	waitUntil {!isNull (findDisplay 46)};

	mav_gps_v_dialog_keyCode = getNumber (missionConfigFile >> "maverick_navigation_cfg" >> "bindings" >> "keyCode");
	mav_gps_v_dialog_reqShift = (getNumber (missionConfigFile >> "maverick_navigation_cfg" >> "bindings" >> "reqShift")) == 1;
	mav_gps_v_dialog_reqCtrl = (getNumber (missionConfigFile >> "maverick_navigation_cfg" >> "bindings" >> "reqCtrl")) == 1;
	mav_gps_v_dialog_reqAlt = (getNumber (missionConfigFile >> "maverick_navigation_cfg" >> "bindings" >> "reqAlt")) == 1;
	mav_gps_v_dialog_handlerBlockedUntil = 0;

	(findDisplay 46) displayAddEventHandler ["KeyDown", {
		private _handled = false;

		params [
			"_display",
			"_keyCode",
			"_isShift",
			"_isCtrl",
			"_isAlt"
		];

		if (_keyCode == (missionNamespace getVariable ["mav_gps_v_dialog_keyCode", -1])) then {
			if ((missionNamespace getVariable ["mav_gps_v_dialog_reqShift", false]) && !_isShift) exitWith {};
			if ((missionNamespace getVariable ["mav_gps_v_dialog_reqCtrl", false]) && !_isCtrl) exitWith {};
			if ((missionNamespace getVariable ["mav_gps_v_dialog_reqAlt", false]) && !_isAlt) exitWith {};

			if ((missionNamespace getVariable ["mav_gps_v_dialog_handlerBlockedUntil", 0]) > diag_tickTime) exitWith { _handled = true; };
			missionNamespace setVariable ["mav_gps_v_dialog_handlerBlockedUntil", diag_tickTime];

			if (!dialog) then {
				[] call mav_gps_fnc_initNavigation;
			};
		};

		_handled
	}];
};