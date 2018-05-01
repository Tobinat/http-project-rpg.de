/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_configEntryName", "", [""]],
	["_overwrite", false, [false]]
];

// Not set yet?
if ((isNil "mav_gps_v_settings_voiceChannel") || (typeName mav_gps_v_settings_voiceChannel != "STRING")) then { mav_gps_v_settings_voiceChannel = "disabled" };

// Bad name
if (_configEntryName == "") exitWith {};

// Get name
private _soundName = getText (missionConfigFile >> "maverick_navigation_cfg" >> "soundInstructions" >> mav_gps_v_settings_voiceChannel >> _configEntryName);

// Not found or no sound
if (_soundName == "") exitWith {};

// Bomb existing sound out of existence OR skip sound
private _existingSound = ASLToAGL [0,0,0] nearestObject "#soundonvehicle";

if (!isNull _existingSound && !_overwrite) exitWith {};
if (!isNull _existingSound) then {
	deleteVehicle _existingSound;
};

// Maybe play a sound, maybe randomly crash, I don't know
playSound _soundName;