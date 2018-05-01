/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define MAVFNC MAV_guiNavigationSaved
#define MAVCFG missionConfigFile >> "maverick_navigation_cfg"
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
		private _world = worldName;

		private _close = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVED_BACK;
		_close ctrlAddEventHandler ["ButtonClick", {ctrlParent (_this select 0) closeDisplay 0;}];

		private _start = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVED_START;
		_start ctrlAddEventHandler ["ButtonClick", {["start", _this] call MAVFNC}];

		private _delete = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVED_DELETE;
		_delete ctrlAddEventHandler ["ButtonClick", {["delete", _this] call MAVFNC}];

		private _list = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVED_LIST;
		_list ctrlAddEventHandler ["LBSelChanged", {["routeSelected", _this] call MAVFNC}];

		{
			private _nr = _x;
			private _ret = profileNamespace getVariable [format ["MAV_gps_saved_%1_%2", _world, _nr], []];
			if (!(_ret isEqualTo []) && {_ret isEqualTypeParams ["", [], []]}) then {
				_ret params ["_title", "_points", "_route"];
				private _index = _list lbAdd _title;
				_list lbSetValue [_index, _nr];
				_list lbSetData [_index, _title];
			};
		} forEach [0, 1, 2, 3, 4];

		if (lbSize _list isEqualTo 0) exitWith {
			_list lbAdd (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgNoSavedRoutes"));
		};
	};

	case "routeSelected": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_index", -1, [0]]
		];

		private _display = ctrlParent _ctrl;
		private _start = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVED_START;

		if (_index isEqualTo -1) exitWith {
			_start ctrlShow false;
			(_display displayCtrl MAV_IDC_GUINAVIGATIONSAVED_DELETE) ctrlShow false;
		};

		_start ctrlShow (isNil "MAV_gps_currentRoute" && {!((_ctrl lbData _index) isEqualTo "")});

		private _delete = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVED_DELETE;
		_delete ctrlShow !((_ctrl lbData _index) isEqualTo "");
	};

	case "start": {
		if !(isNil "MAV_gps_v_currentRoute") exitWith {
			hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgFinishRouteFirst"));
		};

		if (MAVV(Spam) > diag_tickTime) exitWith {};
		MAVV(Spam) = diag_tickTime + 0.5;

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _ctrl;
		private _list = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVED_LIST;
		private _curSel = lbCurSel _list;
		if (_curSel isEqualTo -1) exitWith {};

		(profileNamespace getVariable [format ["MAV_gps_saved_%1_%2", toLower worldName, _list lbValue _curSel], []]) params [
			["_title", "", [""]],
			["_points", [], [[]]],
			["_route", [], [[]]],
			["_searchType", "default", [""]]
		];

		_route = _route apply {(_x nearRoads 0.5) param [0]};
		_route = _route select {!isNull _x};

		/*if ([ _route ] call MAV_gps_fnc_addPath) then {
			MAV_gps_v_currentRoute = [_points, _route];
        	true call MAV_gps_fnc_initGPS;
			(ctrlParent _ctrl) closeDisplay 2;
		};*/

		_startRoad = if !((_points param [0]) isEqualTo []) then { [_points param [0], 100, []] call BIS_fnc_nearestRoad } else { objNull };
		_middleRoad = if !((_points param [1]) isEqualTo []) then { [_points param [1], 100, []] call BIS_fnc_nearestRoad } else { objNull };
		_endRoad = if !((_points param [2]) isEqualTo []) then { [_points param [2], 100, []] call BIS_fnc_nearestRoad } else { objNull };

		// Set variables and show route info screen before starting navigation
		mav_gps_v_currentRouteSearchType = _searchType;
		MAV_guiNavigationNew_info = [_startRoad, _middleRoad, _endRoad, _route];
		MAV_guiNavigationCalculate_Route = _route;
		_display createDisplay "MAV_guiNavigationCalculateWO";
	};

	case "delete": {
		if (MAVV(Spam) > diag_tickTime) exitWith {};
		MAVV(Spam) = diag_tickTime + 0.5;

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _ctrl;
		private _list = _display displayCtrl MAV_IDC_GUINAVIGATIONSAVED_LIST;
		private _curSel = lbCurSel _list;

		if !(_curSel isEqualTo -1) then {
			_list lbDelete _curSel;
			profileNamespace setVariable [format ["MAV_gps_saved_%1_%2", worldName, _list lbValue _curSel], nil];
			hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRouteDeleted"));
			saveProfileNamespace;
		};

		if (lbSize _list isEqualTo 0) then {
			_ctrl ctrlShow false;
			(_display displayCtrl MAV_IDC_GUINAVIGATIONSAVED_START) ctrlShow false;
			_list lbAdd (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgNoSavedRoutes"));
		};

		_list lbSetCurSel -1;
	};

	case "onUnload": {
		MAVV(Spam) = nil;
	};
};
