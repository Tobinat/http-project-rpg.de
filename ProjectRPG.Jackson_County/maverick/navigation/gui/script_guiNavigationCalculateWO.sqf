/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define MAVFNC MAV_guiNavigationCalculateWO
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
		MAV_guiNavigationCalculate_HasStarted = false;

		private _close = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_CLOSE;
		_close ctrlAddEventHandler ["ButtonClick", {ctrlParent (_this select 0) closeDisplay 0;}];

		private _tabControl = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_TABCONTROL;
		_tabControl ctrlAddEventHandler ["ToolBoxSelChanged", {["tabChanged", _this] call MAVFNC;}];

		MAVV(Angle) = 0;
		MAVV(Text) = (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRouteCalculate"));
		MAVV(LastText) = "";

		MAVV(distance) = ["distance", 0] call MAV_gps_fnc_fetchSettings;

		private _paths = ["km/h", "mph"];
		private _count = count _paths;

		if ((MAVV(distance) + 1) > _count) then {
			MAVV(distance) = 0;
		};

		MAVV(distance) = [false, true] select (MAVV(distance) isEqualTo 1);

		MAV_guiNavigationNew_info params ["_start", "_mid", "_end", "_route"];
		MAV_guiNavigationCalculate_Route = _route;

		MAV_guiNavigationCalculate_Waypoint = [_start, _mid, _end] apply {
			if (isNull _x) then {
				[]
			} else {
				getPosATL _x
			};
		};

		if !(MAV_guiNavigationCalculate_Route isEqualTo []) then {
			private _txt = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_TXT;

			private _distance = [ _route ] call MAV_gps_fnc_distance;
			private _totalDistance = [ MAVV(distance), _distance ] call MAV_gps_fnc_kmToMiles;

			private _timeLeft = (_distance / (75 / 3.6));
			private _timeLeftRounded = parseNumber ((_timeLeft / 60) toFixed 0);

			private _timeLeftText = if (_timeLeft < 60) then {
				(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgOneMinute"))
			} else {
				format [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgMinutesLeft")), _timeLeftRounded]
			};

			private _searchTypeString = if (mav_gps_v_currentRouteSearchType == "highway") then { "Highway" } else { "Default" };

			_txt ctrlSetStructuredText parseText format [
				"<t align='left' size='1.1'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRouteInfo"))+"</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgFrom"))+"</t><t align='right'>%1</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTo"))+"</t><t align='right'>%2</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTotalDistance"))+"</t><t align='right'>%3</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTotalravelTime"))+"</t><t align='right'>%4</t><br/><t>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRoadPreference"))+"</t><t align='right'>%5</t>",
				[(MAV_guiNavigationCalculate_Waypoint param [0])] call MAV_gps_fnc_nearestLocation,
				[(MAV_guiNavigationCalculate_Waypoint param [2])] call MAV_gps_fnc_nearestLocation,
				_totalDistance,
				_timeLeftText,
				_searchTypeString
			];

			_txt ctrlShow true;

			private _startBtn = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_START;
			_startBtn ctrlAddEventHandler ["ButtonClick", {["startRoute", _this] call MAVFNC}];
			_startBtn ctrlShow true;

			_tabControl ctrlShow true;

			[MAV_guiNavigationCalculate_Route] call mav_gps_fnc_addPath;

		} else {

			MAVV(Rotate) = addMissionEventHandler ["EachFrame", {"onEachFrame" call MAVFNC}];

			private _group = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_GRP;
			_group ctrlShow true;

			MAVV(ScriptHandle) = ["script", [_display, _start, [_mid, _end], (["path", 0] call MAV_gps_fnc_fetchSettings)]] spawn MAVFNC;
		};

		_tabControl lbSetCurSel 0;
		["tabChanged", [_tabControl, 0]] call MAVFNC;
	};

	case "onEachFrame": {
		private _display = uiNamespace getVariable MAVGUI;
		if (isNil "_display" || {isNull _display}) exitWith {};

		private _loadingCtrl = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_IMAGE;

		if (MAVV(Angle) > 359) then {MAVV(Angle) = 0};
		_loadingCtrl ctrlSetAngle [MAVV(Angle), 0.5, 0.5];
		MAVV(Angle) = MAVV(Angle) + 1;

		if !(MAVV(Text) isEqualTo MAVV(LastText)) then {
			MAVV(LastText) = MAVV(Text);
			(_display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_LOADINGTXT) ctrlSetStructuredText parseText format ["<t shadow='0' size='1.2' align='center'>%1</t>", MAVV(Text)];
		};
	};

	case "script": {
		_params params [
			["_display", displayNull, [displayNull]],
			["_start", objNull, [objNull]],
			["_wayPoints", [], [[]]],
			["_option", -1, [0]]
		];

		private _terraingrid = getTerrainGrid;
		private _viewdiestance = viewDistance;
		private _objectdistance = getObjectViewDistance;

		setTerrainGrid 50;
		setViewDistance 500;
		setObjectViewDistance [450, 0];

		private _paths = ["default", "highway"];
		private _count = count _paths;

		if ((_option + 1) > _count) then {
			_option = 0;
		};

		private _path = _paths select _option;
		private _meme = _wayPoints select {!isNull _x};
		private _timeOut = diag_tickTime + (60 * 2);
		private _return = [_start, _meme, _path] call MAV_gps_fnc_shortestRoute;

		waitUntil { !isNil "_return" || { diag_tickTime > _timeOut } };

		setTerrainGrid _terraingrid;
		setViewDistance _viewdiestance;
		setObjectViewDistance _objectdistance;

		if (isNull _display) exitWith {};

		mav_gps_v_currentRouteSearchType = _path;

		removeMissionEventHandler ["Draw3D", MAVV(Rotate)];
		MAVV(Rotate) = nil;

		if (isNil "_return" || {_return isEqualTo []}) then {

			MAVV(Text) = [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgNoRouteFound")), (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTimedOut"))] select (isNil "_return");
			(_display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_IMAGE) ctrlSetText "";

		} else {

			MAVV(Text) = (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRouteFound"));
			MAV_guiNavigationCalculate_Route = _return;

			private _distance = [ _return ] call MAV_gps_fnc_distance;
			private _totalDistance = [ MAVV(distance), _distance ] call MAV_gps_fnc_kmToMiles;

			private _timeLeft = (_distance / (75 / 3.6));
			private _timeLeftRounded = parseNumber ((_timeLeft / 60) toFixed 0);

			private _timeLeftText = if (_timeLeft < 60) then {
				(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgOneMinute"))
			} else {
				format [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgMinutesLeft")), _timeLeftRounded]
			};

			private _searchTypeString = if (mav_gps_v_currentRouteSearchType == "highway") then { "Highway" } else { "Default" };

			private _text = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_TXT;
			_text ctrlSetStructuredText parseText format [
				"<t align='left' size='1.1'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRouteInfo"))+"</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgFrom"))+"</t><t align='right'>%1</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTo"))+"</t><t align='right'>%2</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTotalDistance"))+"</t><t align='right'>%3</t><br/><t align='left'>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTotalravelTime"))+"</t><t align='right'>%4</t><br/><t>"+(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgRoadPreference"))+"</t><t align='right'>%5</t>",
				[(MAV_guiNavigationCalculate_Waypoint param [0])] call MAV_gps_fnc_nearestLocation,
				[(MAV_guiNavigationCalculate_Waypoint param [2])] call MAV_gps_fnc_nearestLocation,
				_totalDistance,
				_timeLeftText,
				_searchTypeString
			];

			private _group = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_GRP;
			_group ctrlShow false;
			_text ctrlShow true;

			private _save = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_SAVE;
			_save ctrlAddEventHandler ["ButtonClick", {["saveRoute", _this] call MAVFNC}];
			_save ctrlShow true;

			private _startBtn = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_START;
			_startBtn ctrlAddEventHandler ["ButtonClick", {["startRoute", _this] call MAVFNC}];
			_startBtn ctrlShow true;

			private _tabControl = _display displayCtrl MAV_IDC_GUINAVIGATIONCALCULATEWO_TABCONTROL;
			_tabControl ctrlShow true;

			[_return] call mav_gps_fnc_addPath;
		};
	};

	case "saveRoute": {
		if (MAVV(Spam) > diag_tickTime) exitWith {};
		MAVV(Spam) = diag_tickTime + 0.5;

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		_ctrl ctrlShow false;
		createDialog "MAV_guiNavigationSave";
	};

	case "startRoute": {
		if (MAVV(Spam) > diag_tickTime) exitWith {};
		MAVV(Spam) = diag_tickTime + 0.5;

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		_ctrl ctrlShow false;
		MAV_guiNavigationCalculate_HasStarted = true;

		[] call mav_gps_fnc_clearPath;

		if ([MAV_guiNavigationCalculate_Route] call MAV_gps_fnc_addPath) then {
			MAV_gps_v_currentRoute = [MAV_guiNavigationCalculate_Waypoint, MAV_guiNavigationCalculate_Route];
        	true call MAV_gps_fnc_initGPS;
			{
				_x closeDisplay 2;
			} count (allDisplays select {!(ctrlIDD _x in [0, 8, 18, 70, 46, 12])});
		};
	};

	case "onUnload": {
		MAVV(Spam) = nil;
		MAVV(Angle) = nil;
		MAVV(Text) = nil;
		MAVV(LastText) = nil;
		MAVV(distance) = nil;

		MAV_guiNavigationCalculate_Route = nil;
		MAV_guiNavigationCalculate_Waypoint = nil;

		if !(isNil MAVQ(ScriptHandle)) then {
			if !(isNull MAVV(ScriptHandle)) then {
				terminate MAVV(ScriptHandle);
			};
			MAVV(ScriptHandle) = nil;
		};

		if !(isNil MAVQ(Rotate)) then {
			removeMissionEventHandler ["Draw3D", MAVV(Rotate)];
			MAVV(Rotate) = nil;
		};

		if (!MAV_guiNavigationCalculate_HasStarted) then {
			[] call mav_gps_fnc_clearPath;
		};
	};

	case "tabChanged": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_index", -1, [0]]
		];

		private _display = ctrlParent _ctrl;

		if (_index == 0) then {
			{ (_display displayCtrl _x) ctrlShow true; } forEach [MAV_IDC_GUINAVIGATIONCALCULATEWO_TXT];
			{ (_display displayCtrl _x) ctrlShow false; } forEach [MAV_IDC_GUINAVIGATIONCALCULATEWO_MAP];
		} else {
			{ (_display displayCtrl _x) ctrlShow false; } forEach [MAV_IDC_GUINAVIGATIONCALCULATEWO_TXT];
			{ (_display displayCtrl _x) ctrlShow true; } forEach [MAV_IDC_GUINAVIGATIONCALCULATEWO_MAP];
		};
	};
};
