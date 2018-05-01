/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

private _isInstalled = isClass (missionConfigFile >> "maverick_navigation_cfg");
private _isEnabled = (getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "general" >> "automaticNavigation")) == 1;

(_isInstalled && _isEnabled)