/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_setting", "", [""]],
	["_default", -1, [0, [], ""]]
];

profileNamespace getVariable [format ["MAV_gps_settings_%1", _setting], _default]