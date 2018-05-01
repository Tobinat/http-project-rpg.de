/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#include "gui\gui_includes.h"

// Show notification
["The call you were trying to accept has already been accepted by someone else or deleted. Your list has been refreshed automatically.", true] spawn mav_taxi_fnc_showLargeNotification;

// Refresh list by force
private _display = findDisplay MAV_IDD_RSCDISPLAYTAXICALLS;

if (!isNull _display) then {
	["refreshButtonClicked", [_display displayCtrl MAV_IDC_RSCDISPLAYTAXICALLS_REFRESHBTN]] spawn RscDisplayTaxiCalls;
};