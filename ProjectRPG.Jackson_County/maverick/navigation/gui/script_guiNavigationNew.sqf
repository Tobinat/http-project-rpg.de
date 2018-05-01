/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define MAVFNC MAV_guiNavigationNew
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
		MAVV(Tab) = 0;
		MAVV(Info) = [objNull, objNull, objNull, []];

		private _world = toLower worldName;

		_display displayAddEventHandler ["ChildDestroyed", {["childDestroyed", _this] call MAVFNC}];

		private _close = _display displayCtrl MAV_IDC_GUINAVIGATIONNEW_CLOSE;
		_close ctrlAddEventHandler ["ButtonClick", {ctrlParent (_this select 0) closeDisplay 0;}];

		private _tabs = _display displayCtrl MAV_IDC_GUINAVIGATIONNEW_TABS;
		_tabs ctrlAddEventHandler ["ToolBoxSelChanged", {["tabChanged", _this] call MAVFNC}];

		private _map = _display displayCtrl MAV_IDC_GUINAVIGATIONNEW_MAP;
		_map ctrlAddEventHandler ["Draw", {["mapDraw", _this] call MAVFNC}];
		_map ctrlAddEventHandler ["MouseButtonDblClick", {["mapDblClick", _this] call MAVFNC}];

		private _commonList = _display displayCtrl MAV_IDC_GUINAVIGATIONNEW_COMMON;
		_commonList ctrlAddEventHandler ["LBSelChanged", {["commonLocations", _this] call MAVFNC}];

		private _currentLocationIndex = _commonList lbAdd ( toUpper (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgCurrentLocation")) );
		_commonList lbSetData [ _currentLocationIndex, str( [ toUpper (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgCurrentLocation")), getPosATL player] ) ];

		// Possibly find nearest road and mark it as a start road automatically
		private _nearestRoad = [getPos player, 100, []] call BIS_fnc_nearestRoad;
		private _showEndTab = false;

		if (!isNull _nearestRoad) then {
			// Save nearest road as start point
			MAVV(Info) = [_nearestRoad, objNull, objNull, []];

			// Set endpointtab as default tab
			_showEndTab = true;
		};


		{
			_x params ["_title", "_location"];
			private _index = _commonList lbAdd (toUpper _title);
			_commonList lbSetData [_index, str _x];
			false
		} count (getArray (MAVCFG >> "presets" >> worldName >> "presetLocations"));

		private _savedList = _display displayCtrl MAV_IDC_GUINAVIGATIONNEW_SAVED;
		_savedList ctrlAddEventHandler ["LBSelChanged", {["savedLocation", _this] call MAVFNC}];

		{
			private _nr = _x;
			private _ret = profileNamespace getVariable [format ["MAV_gps_saved_%1_%2", _world, _nr], []];
			if (!(_ret isEqualTo []) && {_ret isEqualTypeParams ["", [], []]}) then {
				_ret params ["_title", "_points", "_route"];
				private _index = _savedList lbAdd _title;
				_savedList lbSetValue [_index, _nr];
				_savedList lbSetData [_index, _title];
			};
			false
		} count [0, 1, 2, 3, 4];

		private _newRoute = _display displayCtrl MAV_IDC_GUINAVIGATIONNEW_BTN;
		_newRoute ctrlAddEventHandler ["ButtonClick", {["newRoute", _this] call MAVFNC}];

		if (_showEndTab) then {
			_tabs lbSetCurSel 2;
			["tabChanged", [_tabs, 2]] call MAVFNC;
		} else {
			["tabChanged", [_tabs, 0]] call MAVFNC;
		};
	};

	case "tabChanged": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_index", -1, [0]]
		];

		if (_index isEqualTo -1) exitWith {};

		MAVV(Tab) = _index;

		private _commonList = (ctrlParent _ctrl) displayCtrl MAV_IDC_GUINAVIGATIONNEW_COMMON;
		_commonList lbSetCurSel -1;
	};

	case "childDestroyed": {
		_params params ["_display", "_child", "_exit"];

		if (_exit isEqualTo 2) exitWith {
			_display closeDisplay 1;
		};

		MAVV(Info) = [objNull, objNull, []];
		MAVV(Spam) = diag_tickTime + 0.3;

		private _savedList = _display displayCtrl MAV_IDC_GUINAVIGATIONNEW_SAVED;
		_savedList lbSetCurSel -1;

		["isValid", [_display]] call MAVFNC;
	};

	case "mapDraw": {
		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _ctrl;

		if (isNull _display || {!ctrlShown _ctrl}) exitWith {};

		{
			private _location = _x;
			if !(isNull _location) then {
				private _pos = getPosWorld _location;
				_ctrl drawIcon [
					["\a3\ui_f\data\Map\MapControl\waypoint_CA.paa", "\a3\ui_f\data\Map\MapControl\waypoint_CA.paa", "\a3\ui_f\data\Map\MapControl\waypointcompleted_CA.paa"] select _forEachIndex, //icon
          			[1,0,0,1],
          			_pos,
          			30,
          			30,
          			0,
					format ["%1 (%2)", [
						(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgStart")),
						(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgCheckpoint")),
						(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgDestination"))
					] select _forEachIndex, mapGridPosition _pos],
					1.5,
					0.06,
					"RobotoCondensed"
				];
			};
		} forEach [MAVV(Info) param [0], MAVV(Info) param [1], MAVV(Info) param [2]];
	};

	case "commonLocations": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_index", -1, [0]]
		];

		if (_index isEqualTo -1) exitWith {
			MAVV(Info) set [MAVV(Tab), objNull];
		};

		private _data = _ctrl lbData _index;
		if (_data isEqualTo "") exitWith {};

		(parseSimpleArray _data) params ["_title", "_location"];

		if (_location isEqualType "") then {
		    _location = getMarkerPos _location;
		};

		private _roads = _location nearRoads 350;
		if (_roads isEqualTo []) exitWith {hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgNoRoadsFound"));};

		_roads = _roads apply { [_x distance _location, _x] };
		_roads sort true;

		private _road = ( _roads param [0] ) param [1, objNull];

		if (isNull _road) exitWith {hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgInvalidRoadSegment"));};
		if ((roadsConnectedTo _road) isEqualTo []) exitWith {hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgInvalidRoadSegment"));};

		if !((MAVV(Info) param [3]) isEqualTo []) then {
			MAVV(Info) set [3, []];
		};

		MAVV(Info) set [MAVV(Tab), _road];
		["isValid", [ctrlParent _ctrl]] call MAVFNC;
	};

	case "savedLocation": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_index", -1, [0]]
		];

		if (_index isEqualTo -1) exitWith {
			MAVV(Info) = [objNull, objNull, objNull, []];
		};

		(profileNamespace getVariable [format ["MAV_gps_saved_%1_%2", toLower worldName, _ctrl lbValue _index], []]) params [
			["_title", "", [""]],
			["_points", [], [[]]],
			["_route", [], [[]]],
			["_usedSearchType", "default", [""]]
		];

		private _pointsback = _points apply {
			if (_x isEqualTo []) then {
				objNull
			} else {
				(_x nearRoads 0.5) param [0, objNull]
			};
		};

		private _routeBack = _route apply { (_x nearRoads 0.5) param [0, objNull] };

		_pointsback params ["_pointA", "_pointB", "_pointC"];
		mav_gps_v_currentRouteSearchType = _usedSearchType;
		MAVV(Info) = [_pointA, _pointB, _pointC, _routeBack];

		["isValid", [ctrlParent _ctrl]] call MAVFNC;
	};

	case "mapDblClick": {

		if (MAVV(Spam) > diag_tickTime) exitWith {};
		MAVV(Spam) = diag_tickTime + 0.5;

		_params params ["_ctrl", "_button", "_mouseX", "_mouseY"];

    	if !(_button isEqualTo 0) exitWith {};

		private _pos = _ctrl ctrlMapScreenToWorld [_mouseX, _mouseY];
		_pos pushBack 0;

		private _roads = _pos nearRoads 350;
		if (_roads isEqualTo []) exitWith {hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgNoRoadsFound"));};

		_roads = _roads apply { [_x distance _pos, _x] };
		_roads sort true;

		private _road = ( _roads param [0] ) param [1, objNull];

		if (isNull _road) exitWith {hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgInvalidRoadSegment"));};
		if ((roadsConnectedTo _road) isEqualTo []) exitWith {hint (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgInvalidRoadSegment"));};

		if !((MAVV(Info) param [3]) isEqualTo []) then {
			MAVV(Info) set [3, []];
		};

		MAVV(Info) set [MAVV(Tab), _road];
		["isValid", [ctrlParent _ctrl]] call MAVFNC;
	};

	case "isValid": {
		_params params [
			["_display", displayNull, [displayNull]]
		];

		MAVV(Info) params ["_start", "_midpoint", "_destination"];
		private _valid = (!isNull _midpoint && {!(_midpoint isEqualTo _destination) && {!(_midpoint isEqualTo _start)}});
		(_display displayCtrl MAV_IDC_GUINAVIGATIONNEW_BTN) ctrlShow (!isNull _start && {!isNull _destination} && {isNull _midpoint || {_valid}} && {!(_start isEqualTo _destination)});
	};

	case "newRoute": {
		if (MAVV(Spam) > diag_tickTime) exitWith {};
		MAVV(Spam) = diag_tickTime + 0.5;

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _ctrl;
		_display createDisplay (["MAV_guiNavigationCalculateWO", "MAV_guiNavigationCalculate"] select (cbChecked (_display displayCtrl MAV_IDC_GUINAVIGATIONNEW_CHECKBOX)));
	};

	case "onUnload": {
		MAVV(Spam) = nil;
		MAVV(Tab) = nil;
		MAVV(Start) = nil;
		MAVV(Destination) = nil;
	};
};
