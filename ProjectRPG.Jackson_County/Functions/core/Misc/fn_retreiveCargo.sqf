/*
    Author: Kajetan "Kruk" Mruk
    Date: 31.01.2017

    Params:
        1 - String - type of cargo (shop/house)
    Description: Script preventing from syncing while player house or shop cargo on the map.
    Return: nothing
 */
 private ["_time"];
 params ["_type"];
 if(isNil "_type") exitWith {};
 if(_type == "") exitWith {};
 if(!client_canSync) exitWith {};
 client_canSync = false;
 switch(_type) do {
	case "house": {
		hint "Die Box wird innerhalb von 2 Minuten verschwinden.";
		[player] remoteExec ["server_fnc_retreivehouse",2];
		_time = time + 120;
	};
	case "shop": {
		hint "Deine Box wird innerhalb von 30 Sekunden verschwinden - die Leute können deinen Laden bis dahin nicht benutzen.";
		[player] remoteExec ["server_fnc_retreiveStore",2];
		_time = time + 30;
	};
	case "dtu": {
		[player] remoteExec ["server_fnc_slpdRetreivePoliceStorage",2];
		_time = time + 30;
	};
 };
waitUntil { time > _time };
client_canSync = true;