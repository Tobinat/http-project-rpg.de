["rpframework", "SQL_CUSTOM", "rpframework.ini"] spawn ExternalS_fnc_ExtDBinit;

sleep 3;

[] call server_fnc_setupVariablesServer;
[] call Server_fnc_handleDisconnect;

waitUntil {!(isNil{extDB_SQL_CUSTOM_ID})};

[] spawn server_fnc_mayorsetup;
[] spawn server_fnc_racetimes;
[] spawn server_fnc_rallyracetimes;

[] spawn server_fnc_mafiabank; //Ustawia zmienną z kwotą w bankomacie mafii
[] spawn server_fnc_resetConnected; //Przy włączeniu serwera zmienia w bazie danych connected=1 na connected=0
[] spawn server_fnc_removeVehiclesDamage; //Usuwa pojazdy gdzie damage=1
[] spawn server_fnc_resetRespawn; //resetuje licznik zgonów do 3

[server_fnc_addJob, 120] execFSM "\nopixel_server\call.fsm";
[Server_fnc_cleanup, 1800] execFSM "\nopixel_server\call.fsm";

[] spawn {
	_tier1 = ["Land_ivory_trailer_04","Land_ivory_trailer_01","Land_ivory_trailer_02","Land_ivory_trailer_03","Land_ivory_trailer_06","Land_ivory_trailer_05"];
	_tier2 = ["Land_Ranch_DED_Ranch_02_F","Land_Ranch_DED_Ranch_01_F","Land_HouseC_R","Land_HouseC1_L","Land_HouseA1_L","Land_HouseB1_L"];
	_tier3 = ["Land_HouseDoubleAL","Land_HouseDoubleAL2"];
	_shops = ["Land_buildingCommercial1","Land_buildingCommercial2"];
	banks = [];
	{
		banks pushback _x;
	} foreach nearestObjects[[0, 0, 0], ["Land_CommonwealthBank"], 35500];
	tier1housing = [];
	{ tier1housing pushback _x; } foreach nearestObjects [[0,0,0], _tier1, 35500];

	tier2housing = [];
	{ tier2housing pushback _x; } foreach nearestObjects [[0,0,0], _tier2, 35500];

	tier3housing = [];
	{ tier3housing pushback _x; } foreach nearestObjects [[0,0,0], _tier3, 35500];

	shops = [];
	{ shops pushback _x; } foreach nearestObjects [[0,0,0], _shops, 35500];

	uisleep 28650;
	[] remoteExec ["client_fnc_survival",-2];
	uisleep 30;
	["seagull"] remoteExec ["client_fnc_createvehicle",-2];
};

policeStorageActive = 0;