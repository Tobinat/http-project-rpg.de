/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_name", "", [""]]
];

// Return
getText (missionConfigFile >> "maverick_taxis_cfg" >> "localization" >> _name);