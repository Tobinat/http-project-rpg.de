/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_setting", "", [""]],
	["_val", -1, [0, "", []]]
];

if (_setting isEqualTo "") exitWith {false};
profileNamespace setVariable [format ["MAV_gps_settings_%1", _setting], _val];
true