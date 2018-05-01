/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define MAVFNC MAV_guiNavigationSettings
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
		MAVV(color) = ["color", [0.99, 0.49, 0, 1]] call MAV_gps_fnc_fetchSettings;

		MAVV(path) = ["path", 0] call MAV_gps_fnc_fetchSettings;
		MAVV(distance) = ["distance", 0] call MAV_gps_fnc_fetchSettings;
		mav_gps_v_settings_voiceChannel = ["voiceChannel"] call MAV_gps_fnc_fetchSettings;

		_display displayAddEventHandler ["ChildDestroyed", {["childDestroyed", _this] call MAVFNC}];

		private _close = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_CLOSE;
		_close ctrlAddEventHandler ["ButtonClick", {ctrlParent (_this select 0) closeDisplay 0;}];

		private _customize = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_CUSTOMIZE;
		_customize ctrlAddEventHandler ["ButtonClick", {["customize", _this] call MAVFNC}];

		if !(isNil 'mav_gps_v_markers') then {
			_customize ctrlEnable false;
			_customize ctrlSetTooltip (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgAbortCurrentRoute"));
		};

		private _reset = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_RESET;
		_reset ctrlAddEventHandler ["ButtonClick", {["reset", _this] call MAVFNC}];

		private _color = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_COLOR;
		_color ctrlSetTextColor MAVV(Color);

		private _redSlider = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_RED;
		_redSlider sliderSetRange [1, 100];
		_redSlider sliderSetSpeed [1, 1, 1];
		_redSlider sliderSetPosition ((MAVV(Color) param [0]) * 100);
		_redSlider ctrlAddEventHandler ["SliderPosChanged", {["redSlider", _this] call MAVFNC}];

		private _greenSlider = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_GREEN;
		_greenSlider sliderSetRange [1, 100];
		_greenSlider sliderSetSpeed [1, 1, 1];
		_greenSlider sliderSetPosition ((MAVV(Color) param [1]) * 100);
		_greenSlider ctrlAddEventHandler ["SliderPosChanged", {["greenSlider", _this] call MAVFNC}];

		private _blueSlider = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_BLUE;
		_blueSlider sliderSetRange [1, 100];
		_blueSlider sliderSetSpeed [1, 1, 1];
		_blueSlider sliderSetPosition ((MAVV(Color) param [2]) * 100);
		_blueSlider ctrlAddEventHandler ["SliderPosChanged", {["blueSlider", _this] call MAVFNC}];

		private _distance = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_DISTANCE;
		_distance ctrlAddEventHandler ["LBSelChanged", {["distanceChanged", _this] call MAVFNC}];

		private _distanceCount = {
			private _index = _distance lbAdd (toUpper _x);
			true
		} count ["km/h", "mph"];

		if ((MAVV(distance) + 1) > _distanceCount) then {
			MAVV(distance) = 0;
		};

		_distance lbSetCurSel MAVV(distance);

		private _path = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_PATH;
		_path ctrlAddEventHandler ["LBSelChanged", {["pathChanged", _this] call MAVFNC}];

		private _pathCount = {
			private _index = _path lbAdd (toUpper _x);
			true
		} count ["default", "highway"];

		if ((MAVV(path) + 1) > _pathCount) then {
			MAVV(path) = 0;
		};

		_path lbSetCurSel MAVV(path);

		private _save = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_BTN;
		_save ctrlAddEventHandler ["ButtonClick", {["saveSettings", _this] call MAVFNC}];

		// Voice channels
		private _voiceSetting = _display displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_VOICE;
		_voiceSetting ctrlAddEventHandler ["LBSelChanged", {["voiceChanged", _this] call MAVFNC}];

		// Disabled channel
		_voiceSetting lbAdd "Disabled";
		_voiceSetting lbSetData [(lbSize _voiceSetting) - 1, "disabled"];

		private _allVoiceConfigs = "true" configClasses (missionConfigFile >> "maverick_navigation_cfg" >> "soundInstructions");
		private _voiceSettingFound = false;

		{
			private _isValid = true;
			private _config = _x;

			// Check if the sounds are configured in the CfgSounds
			{
				private _soundClassname = getText (_config >> _x);

				if !(isClass (missionConfigFile >> "CfgSounds" >> _soundClassname)) exitWith {
					_isValid = false;
				};
			} forEach ["sound100mLeft", "soundNowLeft", "sound100mRight", "soundNowRight", "soundOnDestinationRoad", "soundDestinationReached", "soundFollowRoad"];

			if (_isValid) then {
				_voiceSetting lbAdd (getText (_x >> "displayName"));
				_voiceSetting lbSetData [(lbSize _voiceSetting) - 1, configName _x];

				if ((configName _x) isEqualTo mav_gps_v_settings_voiceChannel) then {
					_voiceSetting lbSetCurSel (_forEachIndex + 1);
					_voiceSettingFound = true;
				};
			};
		} forEach _allVoiceConfigs;

		if (!_voiceSettingFound) then {
			_voiceSetting lbSetCurSel 0;
		};
	};

	case "childDestroyed": {
		_params params ["_display", "_child", "_exit"];

		MAVV(Spam) = diag_tickTime + 0.3;
	};

	case "saveSettings": {
		if (MAVV(Spam) > diag_tickTime) exitWith {};
		MAVV(Spam) = diag_tickTime + 0.5;

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		private _display = ctrlParent _ctrl;

		{
			_x params ["_setting", "_value"];
			[_setting, _value] call MAV_gps_fnc_saveSettings;
		} count [
			["color", MAVV(color)],
			["path", MAVV(path)],
			["distance", MAVV(distance)]
		];

		profileNamespace setVariable ["Map_Unknown_R", MAVV(color) param [0] ];
		profileNamespace setVariable ["Map_Unknown_G", MAVV(color) param [1] ];
		profileNamespace setVariable ["Map_Unknown_B", MAVV(color) param [2] ];

		// Save voice setting
		private _voiceSettingControl = (ctrlParent _ctrl) displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_VOICE;
		["voiceChannel", _voiceSettingControl lbData (lbCurSel _voiceSettingControl)] call MAV_gps_fnc_saveSettings;

		saveProfileNamespace;
		hintSilent (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgSettingsSaved"));
	};

	case "redSlider": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_pos", -1, [0]]
		];
		MAVV(color) set [0, _pos / 100];
		((ctrlParent _ctrl) displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_COLOR) ctrlSetTextColor MAVV(color);
	};

	case "greenSlider": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_pos", -1, [0]]
		];

		MAVV(color) set [1, _pos / 100];
		((ctrlParent _ctrl) displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_COLOR) ctrlSetTextColor MAVV(color);
	};

	case "blueSlider": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_pos", -1, [0]]
		];

		MAVV(color) set [2, _pos / 100];
		((ctrlParent _ctrl) displayCtrl MAV_IDC_GUINAVIGATIONSETTINGS_COLOR) ctrlSetTextColor MAVV(color);
	};

	case "distanceChanged": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_index", -1, [0]]
		];

		if (_index isEqualTo -1) exitWith {};

		MAVV(distance) = _index;
	};

	case "pathChanged": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_index", -1, [0]]
		];

		if (_index isEqualTo -1) exitWith {};

		MAVV(path) = _index;
	};

	case "voiceChanged": {
		_params params [
			["_ctrl", controlNull, [controlNull]],
			["_index", -1, [0]]
		];

		if (_index isEqualTo -1) exitWith {};
	};

	case "customize": {
		if (MAVV(Spam) > diag_tickTime) exitWith {};
		MAVV(Spam) = diag_tickTime + 0.5;
		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		(ctrlParent _ctrl) createDisplay "MAV_guiNavigationResize";
	};

	case "reset": {
		if (MAVV(Spam) > diag_tickTime) exitWith {};
		MAVV(Spam) = diag_tickTime + 0.5;

		_params params [
			["_ctrl", controlNull, [controlNull]]
		];

		["gui", []] call MAV_gps_fnc_saveSettings;
		saveProfileNamespace;
		hintSilent (getText(missionConfigFile >> "maverick_navigation_cfg" >> "localization" >> "msgPositionReset"));
	};

	case "onUnload": {
		MAVV(Spam) = nil;
		MAVV(color) = nil;
		MAVV(path) = nil;
		MAVV(distance) = nil;
	};
};
