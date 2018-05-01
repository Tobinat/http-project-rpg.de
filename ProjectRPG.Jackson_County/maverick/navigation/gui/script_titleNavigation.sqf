/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define MAVFNC MAV_titleNavigation
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

		private _pos = ["gui", []] call MAV_gps_fnc_fetchSettings;

		if !(_pos isEqualTo []) then {
			{
				private _ctrl = _x;
				_ctrl ctrlSetPosition (_pos select _forEachIndex);
				_ctrl ctrlCommit 0;
			} forEach (allControls _display);
		};

		MAVV(RoadSigns) = [
			["signt_dangerbendsr.p3d", "scurve", "maverick\navigation\data\left-reverse-curve-black.paa"],
			["signt_dangerbendsl.p3d", "scurve", "maverick\navigation\data\left-reverse-curve-black.paa"],
			["signt_dangerbendl.p3d", "left_curve", "maverick\navigation\data\left-curve-sign-black.paa"],
			["signt_dangerbendr.p3d", "right_curve", "maverick\navigation\data\right-curve-sign-black.paa"]
		];

		MAVV(ImagePath) = (str missionConfigFile select [0, count str missionConfigFile - 15]) + "maverick\navigation\data\";
		MAVV(MapHandle) = (_display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_MAP) ctrlAddEventHandler ["Draw", {["onDraw", _this] call MAVFNC}];

		// Publish sound settings
		mav_gps_v_settings_voiceChannel = ["voiceChannel"] call MAV_gps_fnc_fetchSettings;

		// Clear sound blacklist
		mav_gps_v_sound_turnAnnouncedSounds = [];
		mav_gps_v_sound_turnNowAnnouncedSounds = [];
		mav_gps_v_sound_generalNotificationSounds = [];
		mav_gps_v_sound_followRoadAnnounced = [];

		MAVV(distance) = ["distance", 0] call MAV_gps_fnc_fetchSettings;

		private _paths = ["km/h", "mph"];
		private _count = count _paths;

		if ((MAVV(distance) + 1) > _count) then {
			MAVV(distance) = 0;
		};

		MAVV(distance) = [false, true] select (MAVV(distance) isEqualTo 1);

		(_display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE) ctrlSetText "";
		(_display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE_AHEAD) ctrlSetText "";
		(_display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE_DESCRIPTION) ctrlSetStructuredText parseText "";

		private _two = _display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_BOTTOMTEXT;
		_two ctrlSetText (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgCalcRoadDirs"));

		private _inverted = +mav_gps_v_markers;
		reverse _inverted;

		{
			private _baseNodeData = _x;
			private _nextNodeData = _inverted param [_forEachIndex + 1, []];
			private _previousNode = _inverted param [_forEachIndex - 1, []];

			_two ctrlSetText format [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgCalcRoadDirsProgress")), _forEachIndex + 1, count _inverted];

			private _nearObjects = nearestObjects [markerPos (_baseNodeData param [0, ""]), [], 50];

			{
				private _sign = _x;

				{
					if ((str _sign) find (_x param [0, "cannotfindthisplease"]) != -1) then {
						private _markerDir = markerDir (_baseNodeData param [0, ""]) + 180;
						_markerDir = if (_markerDir > 360) then { _markerDir - 360 } else { _markerDir };
						private _fromVector = [sin _markerDir, cos _markerDir, 0];
						private _toVector = [sin (getDir _sign), cos (getDir _sign), 0];

						private _degreeToSign = acos (_fromVector vectorCos _toVector);

						if (_degreeToSign < 90) then {
							(_nextNodeData param [3, []]) pushBack (_x param [1, "general_warning"]);
						};
					};
				} forEach MAVV(RoadSigns);

			} forEach _nearObjects;

			private _isJunction = if (count (roadsConnectedTo (_baseNodeData param [1, objNull])) > 2 && {!(_previousNode isEqualTo [])} && {!(_previousNode isEqualTo [])}) then {
				true
			} else {
				private _baseNodeConnectedNodes =  roadsConnectedTo (_baseNodeData param [1, objNull]);

				if (_nextNodeData isEqualTo [] || _previousNode isEqualTo []) exitWith {
					false
				};

				if (!((_nextNodeData param [1, objNull]) in _baseNodeConnectedNodes) || !((_previousNode param [1, objNull]) in _baseNodeConnectedNodes)) then {
					true
				} else {
					false
				};
			};

			if (!isNull (_baseNodeData param [1, objNull]) && {!isNull (_nextNodeData param [1, objNull])} && {_isJunction}) then {
				private _fromJunctionDirection = markerDir (_previousNode param [0, ""]) + 180;
				private _toJunctionDirection = markerDir (_nextNodeData param [0, ""]) + 180;

				if (_fromJunctionDirection > 360) then {
					_fromJunctionDirection = _fromJunctionDirection - 360;
				};

				if (_toJunctionDirection > 360) then {
					_toJunctionDirection = _toJunctionDirection - 360;
				};

				private _fromVector = [sin _fromJunctionDirection, cos _fromJunctionDirection, 0];
				private _toVector = [sin _toJunctionDirection, cos _toJunctionDirection, 0];
				private _degree = acos (_fromVector vectorCos _toVector);

				if (_degree > 45) then {
					private _secondTest_fromJunctionDirection = markerDir ((_inverted param [_forEachIndex - 2, []]) param [0, ""]) + 180;
					private _secondTest_toJunctionDirection = markerDir ((_inverted param [_forEachIndex + 2, []]) param [0, ""]) + 180;

					if (_secondTest_fromJunctionDirection > 360) then {
						_secondTest_fromJunctionDirection = _secondTest_fromJunctionDirection - 360;
					};

					if (_secondTest_toJunctionDirection > 360) then {
						_secondTest_toJunctionDirection = _secondTest_toJunctionDirection - 360;
					};

					private _secondTest_fromVector = [sin _secondTest_fromJunctionDirection, cos _secondTest_fromJunctionDirection, 0];
					private _secondTest_toVector = [sin _secondTest_toJunctionDirection, cos _secondTest_toJunctionDirection, 0];
					private _secondTest_degree = acos (_secondTest_fromVector vectorCos _secondTest_toVector);

					if (_secondTest_degree < 45) then {
						_degree = 0;
					};
				};

				if (_degree > 45) then {
					private _leftOffset = (markerPos (_previousNode param [0, ""])) vectorAdd ([[-1, 0, 0], -_fromJunctionDirection] call BIS_fnc_rotateVector2D);
					private _rightOffset = (markerPos (_previousNode param [0, ""])) vectorAdd ([[1, 0, 0], -_fromJunctionDirection] call BIS_fnc_rotateVector2D);
					private _afterJunctionPosition = (markerPos (_previousNode param [0, ""])) vectorAdd _toVector;

					if ((_leftOffset vectorDistance _afterJunctionPosition) < (_rightOffset vectorDistance _afterJunctionPosition)) then {
						_baseNodeData set [2, "left"];
					} else {
						_baseNodeData set [2, "right"];
					};
				} else {
					_baseNodeData set [2, "straight"];
				};
			};
		} forEach _inverted;

		private _tmp = +_inverted;
		reverse _tmp;

		mav_gps_v_markers = _tmp;

		mav_gps_uiThread = ["script", []] spawn MAVFNC;
	};

	case "onDraw": {
		_params params [
			["_map", controlNull, [controlNull]]
		];

		if (isNull _map) exitWith {};

		_map ctrlMapAnimAdd [0, 0.1, player];
		ctrlMapAnimCommit _map;

		_map drawIcon [
			format ["%1up-arrow5.paa", MAVV(ImagePath)],
			[1,1,1,1],
			getPosWorld player,
			20,
			20,
			getDir player,
			"",
			false,
			0.03,
			"PuristaBold",
			"left"
		];

		private _lastSegment = (mav_gps_v_markers param [0, []]) param [1, objNull];

		if ((_lastSegment distance2D (getPosWorld player) < 1000)) then {
			_map drawIcon [
				format ["%1location-pin.paa", MAVV(ImagePath)],
				[1,1,1,1],
				(getPosWorld _lastSegment) vectorAdd [0, 30, 0],
				25,
				25,
				0,
				"",
				false,
				0.03,
				"PuristaBold",
				"left"
			];
		};
	};

	case "script": {
		private _display = uiNamespace getVariable MAVGUI;
		if (isNil "_display" || {isNull _display}) exitWith {};

		private _exit = false;
		private _two = _display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_BOTTOMTEXT;
		private _three = _display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE;
		private _four = _display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE_DESCRIPTION;
		private _five = _display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE_AHEAD;
		private _six = _display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_ARROWIMAGE_BACKGROUNDCOLOR;
		private _seven = _display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_ETA;
		private _eight =  _display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_DISTANCE;
		private _nine = _display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_WARNINGIMAGES;
		private _ten = _display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_WARNINGIMAGES_BACKGROUND;

		scopeName "exit";

		if (!_exit) then {
			for "_i" from 0 to 1 step 0 do {
				uiSleep 0.1;

				{
					if ((getMarkerPos (_x param [0])) distance2D (getPosWorld player) < 10) exitWith {
						["path", [_x param [0]]] call MAVFNC;
					};
				} forEach mav_gps_v_markers;

				_inverted = +mav_gps_v_markers;
				reverse _inverted;

				//private _distance = player distance2D (getMarkerPos ((_inverted param [0, []]) param [0, ""]));
				private _distance = 0;
				private _hasSpecifiedStraight = false;
				private _distanceForETA = [ _inverted apply { _x select 1 } ] call MAV_gps_fnc_distance;

				private _timeLeft = (_distanceForETA / (75 / 3.6));
				private _timeLeftRounded = parseNumber ((_timeLeft / 60) toFixed 0);
				private _timeLeftText = if (_timeLeft < 60) then {
					(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgSmallerThanMinute"))
				} else {
					format [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgMinutesLeft")), _timeLeftRounded]
				};

				private _smallDisplayDistanceTextShort = [ MAVV(distance), _distanceForETA, true ] call MAV_gps_fnc_kmToMiles;

				_seven ctrlSetText format [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgMinutesLeft")), _timeLeftRounded];
				_eight ctrlSetText _smallDisplayDistanceTextShort;

				private _warningSignsText = "";
				private _warningSignsUsed = [];

				{
					private _break = false;
					private _currentNodeData = _x;
					private _currentNodeIndex = _forEachIndex;
					private _previousNodeData = _inverted param [_forEachIndex - 1, []];

					{
						_type = _x;
						{
							if ((_x param [1, "general_warning"]) == _type && {!((_x param [1, "general_warning"]) in _warningSignsUsed)} && {_distance < 100} && {count _warningSignsUsed < 1}) then {
								_warningSignsText = _warningSignsText + "<img image='" + (_x param [2, ""]) + "' />";
								_warningSignsUsed pushBack (_x param [1, "general_warning"]);
							};
						} forEach MAVV(RoadSigns);
					} forEach (_currentNodeData param [3, []]);

					private _displayDistanceText = [ MAVV(distance), _distance, false ] call MAV_gps_fnc_kmToMiles;
					private _displayDistanceTextShort = [ MAVV(distance), _distance, true ] call MAV_gps_fnc_kmToMiles;

					if ((_currentNodeData param [1, objNull]) isEqualTo ((_inverted param [(count _inverted) - 1]) param [1, objNull])) then {
						if (((_inverted param [(count _inverted) - 1]) param [1, objNull]) distance player < 15 || ((count _inverted) <= 1)) then {
							_exit = true;

							if (mav_gps_v_sound_generalNotificationSounds find "soundDestinationReached" == -1) then {
								// Mark this junction as sound-played
								mav_gps_v_sound_generalNotificationSounds pushBackUnique "soundDestinationReached";

								// Play sound
								["soundDestinationReached", true] call mav_gps_fnc_playInstructionSound;
							};

							breakTo "exit";
						} else {
							_three ctrlSetText "maverick\navigation\data\flag-map-marker.paa";
							_five ctrlSetText "";
							_six ctrlSetBackgroundColor [0.99,0.49,0,1];
							_four ctrlSetTextColor [0,0,0,1];
							_three ctrlSetTextColor [0,0,0,1];
							_four ctrlSetStructuredText parseText format ["<t align='center'>%1</t>", _displayDistanceTextShort];
							_two ctrlSetText format [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgReachDestination")), _displayDistanceText];

							if (mav_gps_v_sound_generalNotificationSounds find "soundOnDestinationRoad" == -1) then {
								// Mark this junction as sound-played
								mav_gps_v_sound_generalNotificationSounds pushBackUnique "soundOnDestinationRoad";

								// Play sound
								["soundOnDestinationRoad"] call mav_gps_fnc_playInstructionSound;
							};

							_break = true;
						};
					} else {
						if (_currentNodeData param [2, "none"] == "none" && !(_previousNodeData isEqualTo [])) then {
							_distance = _distance + ((_currentNodeData param [1, objNull]) distance (_previousNodeData param [1, objNull]));
						};

						if (_currentNodeData param [2, "none"] == "straight") then {
							_hasSpecifiedStraight = true;
						};

						if (_currentNodeData param [2, "none"] == "left") then {
							_two ctrlSetText format [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgFollowThenTurnLeft")), _displayDistanceText];

							if (!_hasSpecifiedStraight) then {
								_three ctrlSetText "maverick\navigation\data\arrow-left.paa";
								_five ctrlSetText "";

								if (_distance <= 100) then {
									_six ctrlSetBackgroundColor [0.99,0.49,0,1];
									_four ctrlSetTextColor [0,0,0,1];
									_three ctrlSetTextColor [0,0,0,1];
								} else {
									_six ctrlSetBackgroundColor [0.99,0.49,0,0];
									_four ctrlSetTextColor [1,1,1,1];
									_three ctrlSetTextColor [1,1,1,1];
								};
							} else {
								_six ctrlSetBackgroundColor [0.99,0.49,0,0];
								_four ctrlSetTextColor [1,1,1,1];
								_three ctrlSetTextColor [1,1,1,1];

								_three ctrlSetText "maverick\navigation\data\arrow-straight.paa";
								_five ctrlSetText "maverick\navigation\data\arrow-left.paa";
							};

							_break = true;

							if (_distance <= 0) then {
								_four ctrlSetStructuredText parseText format ["<t align='center'>%1</t>", (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTurnNow"))];

								if (mav_gps_v_sound_turnNowAnnouncedSounds find (_currentNodeData param [0, ""]) == -1) then {
									// Mark this junction as sound-played and the following 2 road segments
									mav_gps_v_sound_turnNowAnnouncedSounds pushBackUnique (_currentNodeData param [0, ""]);
									mav_gps_v_sound_turnNowAnnouncedSounds pushBackUnique ((_inverted param [_currentNodeIndex + 1, []]) param [0, ""]);
									mav_gps_v_sound_turnNowAnnouncedSounds pushBackUnique ((_inverted param [_currentNodeIndex + 2, []]) param [0, ""]);

									// Play sound
									["soundNowLeft"] call mav_gps_fnc_playInstructionSound;
								};
							} else {
								_four ctrlSetStructuredText parseText format ["<t align='center'>%1</t>", _displayDistanceTextShort];

								if (_distance <= 100) then {
									if (mav_gps_v_sound_turnAnnouncedSounds find (_currentNodeData param [0, ""]) == -1) then {
										// Mark this junction as sound-played
										mav_gps_v_sound_turnAnnouncedSounds pushBackUnique (_currentNodeData param [0, ""]);

										// Play sound
										["sound100mLeft"] call mav_gps_fnc_playInstructionSound;
									};
								};

								if (_distance >= 200) then {
									if (mav_gps_v_sound_followRoadAnnounced find (_currentNodeData param [0, ""]) == -1) then {
										// Mark this junction as sound-played
										mav_gps_v_sound_followRoadAnnounced pushBackUnique (_currentNodeData param [0, ""]);

										// Play sound
										0 spawn {
											sleep 1.5;
											["soundFollowRoad"] call mav_gps_fnc_playInstructionSound;
										};
									};
								};
							};
						};

						if (_currentNodeData param [2, "none"] == "right") then {
							_two ctrlSetText format [(getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgFollowThenTurnRight")), _displayDistanceText];

							if (!_hasSpecifiedStraight) then {
								_three ctrlSetText "maverick\navigation\data\arrow-right.paa";
								_five ctrlSetText "";

								if (_distance <= 100) then {
									_six ctrlSetBackgroundColor [0.99,0.49,0,1];
									_four ctrlSetTextColor [0,0,0,1];
									_three ctrlSetTextColor [0,0,0,1];
								} else {
									_six ctrlSetBackgroundColor [0.99,0.49,0,0];
									_four ctrlSetTextColor [1,1,1,1];
									_three ctrlSetTextColor [1,1,1,1];
								};
							} else {
								_six ctrlSetBackgroundColor [0.99,0.49,0,0];
								_four ctrlSetTextColor [1,1,1,1];
								_three ctrlSetTextColor [1,1,1,1];

								_three ctrlSetText "maverick\navigation\data\arrow-straight.paa";
								_five ctrlSetText "maverick\navigation\data\arrow-right.paa";
							};

							// Don't iterate further
							_break = true;

							if (_distance <= 0) then {
								_four ctrlSetStructuredText parseText format ["<t align='center'>%1</t>", (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgTurnNow"))];

								if (mav_gps_v_sound_turnNowAnnouncedSounds find (_currentNodeData param [0, ""]) == -1) then {
									// Mark this junction as sound-played
									mav_gps_v_sound_turnNowAnnouncedSounds pushBackUnique (_currentNodeData param [0, ""]);
									mav_gps_v_sound_turnNowAnnouncedSounds pushBackUnique ((_inverted param [_currentNodeIndex + 1, []]) param [0, ""]);
									mav_gps_v_sound_turnNowAnnouncedSounds pushBackUnique ((_inverted param [_currentNodeIndex + 2, []]) param [0, ""]);

									// Play sound
									["soundNowRight"] call mav_gps_fnc_playInstructionSound;
								};
							} else {
								_four ctrlSetStructuredText parseText format ["<t align='center'>%1</t>", _displayDistanceTextShort];

								if (_distance <= 100) then {
									if (mav_gps_v_sound_turnAnnouncedSounds find (_currentNodeData param [0, ""]) == -1) then {
										// Mark this junction as sound-played
										mav_gps_v_sound_turnAnnouncedSounds pushBackUnique (_currentNodeData param [0, ""]);

										// Play sound
										["sound100mRight"] call mav_gps_fnc_playInstructionSound;
									};
								};

								if (_distance >= 200) then {
									if (mav_gps_v_sound_followRoadAnnounced find (_currentNodeData param [0, ""]) == -1) then {
										// Mark this junction as sound-played
										mav_gps_v_sound_followRoadAnnounced pushBackUnique (_currentNodeData param [0, ""]);

										// Play sound
										0 spawn {
											sleep 1.5;
											["soundFollowRoad"] call mav_gps_fnc_playInstructionSound;
										};
									};
								};
							};
						};
					};

					if (_break) exitWith {};
				} forEach _inverted;

				if (_warningSignsText != "") then {
					_nine ctrlSetStructuredText parseText format ["<t align='left'>%1</t>", _warningSignsText];
					_ten ctrlSetBackgroundColor [0.99, 0.49, 0, 0.9];
				} else {
					_nine ctrlSetStructuredText parseText "";
					_ten ctrlSetBackgroundColor [0, 0, 0, 0];
				};
			};
		};

		_three ctrlSetText "maverick\navigation\data\flag-map-marker.paa";
		_five ctrlSetText "";
		_six ctrlSetBackgroundColor [0.99,0.49,0,1];
		_four ctrlSetTextColor [0,0,0,1];
		_three ctrlSetTextColor [0,0,0,1];
		_four ctrlSetStructuredText parseText (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgArrivedFormatted"));
		_two ctrlSetText (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgReachedDestination"));
		(_display displayCtrl MAV_IDC_TITLENAVIGATION_TEST_MAP) ctrlRemoveEventHandler ["Draw", MAVV(MapHandle)];

		uiSleep 5;
		false call MAV_gps_fnc_initGPS;
	};

	case "path": {
		_params params [
			["_markerName", "", [""]]
		];

		private _currentPath = +(missionNamespace getVariable ["mav_gps_v_markers", []]);

		reverse _currentPath;
		private _segment = _currentPath select {(_x param [0]) isEqualTo _markerName};

		if (count _segment > 0) then {
			_segment = _segment param [0];
		};

		private _index = _currentPath find _segment;

		if (!(_index isEqualTo -1)) then {

			{
				//diag_log format ["Navigator: Deleting path marker %1, distance to player %2 metres", (_x param [0]), ((getMarkerPos (_x param [0])) distance2D player)];
				deleteMarkerLocal (_x param [0]);
				//(_x param [0]) setMarkerAlphaLocal 0;
				if (_forEachIndex >= _index) exitWith {};
				//deleteMarker (_x param [0]);
			} forEach _currentPath;

			_currentPath deleteRange [0, _index + 1];
			reverse _currentPath;
			mav_gps_v_markers = _currentPath;
		};
	};

	case "onUnload": {
		if !(isNil "mav_gps_uiThread") then {
			terminate mav_gps_uiThread;
			mav_gps_uiThread = nil;
		};

		MAVV(RoadSigns) = nil;
		MAVV(ImagePath) = nil;
		MAVV(MapHandle) = nil;
		MAVV(distance) = nil;
		mav_gps_v_running = false;

		// Clear sound blacklist
		mav_gps_v_sound_turnAnnouncedSounds = [];
		mav_gps_v_sound_turnNowAnnouncedSounds = [];
		mav_gps_v_sound_generalNotificationSounds = [];
	};
};