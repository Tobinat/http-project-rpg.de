/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_header", "", [""]],
	["_useSmallFont", false, [false]],
	["_icon", "", [""]]
];

if (isNil "mav_taxi_v_largeNotifications_queue") then {
	mav_taxi_v_largeNotifications_queue = [];
};

if (isNil "mav_taxi_v_largeNotifications_thread") then {
	mav_taxi_v_largeNotifications_thread = scriptNull;
};

mav_taxi_v_largeNotifications_queue pushBack [_header, _useSmallFont, _icon];

if (isNull mav_taxi_v_largeNotifications_thread) then {
	mav_taxi_v_largeNotifications_thread = [] spawn {
		while {count mav_taxi_v_largeNotifications_queue >= 1} do {
			mav_taxi_v_largeNotifications_currentNotification = mav_taxi_v_largeNotifications_queue select 0;
			mav_taxi_v_largeNotifications_queue deleteAt 0;

			["RscTitleTaxiLargeNotification", 0, true] call mav_gui_fnc_createLayer;

			sleep 9;
		};
	};
};