/*

//judiciary system

wanted system

caseID(unique) | suspectguid | officerguid | charges | status


//
stage 1 - processing ----- Any player can be a lawyer if they are wearing a suit or not involved in the situation.

//if they are being charged, create dialog to enter into the database.
stage 2 - bail ----- write a ticket like function.

//Ask the server for judges, if none, create 5 jobs at centrelink and notify all users jobs have been added.
stage 3 - court ----- Police either contact a judge or use the jury system to request 5 people to be a jury.


stage 4 - verdict ----- Guilty / Not Guilty / Fugitive.

misdemeanour - Pay Ticket or Probation

felony = Pay ticket or 10% of ticket price as bail & Court Case - If failure to court, FBI fugitive and 1 hour in jail.

severe felony = county, until court case.


*/





enableSaving [false, false];

if (isServer) then {
	["rpframework", "SQL_CUSTOM_V2", "rpframework"] spawn ExternalS_fnc_ExtDBinit;

	[] SPAWN server_fnc_setupVariablesServer;
	[] call Server_fnc_handleDisconnect;
	//[] spawn server_fnc_addJob;
	[] spawn server_fnc_mayorsetup;
	[] spawn server_fnc_racetimes;
	[] spawn server_fnc_rallyracetimes;	
	[] spawn server_fnc_mafiabank;


	[server_fnc_addJob, 120] execFSM "\NoPixel_server\call.fsm";
	[Server_fnc_cleanup, 4200] execFSM "\NoPixel_server\call.fsm";

	GarageVariableWhore = "Flag_US_F" createVehicle [0,1,0];

	_vehicle = "ivory_wrx" createvehicle [0,0,0];
	[_vehicle, ["black","matte"], "black", 1, 1] call client_fnc_IvoryInitVehicle;
	[_vehicle, "FuckYou", "ivory"] call client_fnc_numberPlate;

	uisleep 0.05;
	deletevehicle _vehicle;

	setDate [2015, 3, 3, 06, 0];  
	0 setovercast 0; 
	0 setrain 0; 
	0 setRainbow 0;
	0 setlightnings 0; 
	0 setfog 0;
	0 setWaves 0;
	0 setWindForce 0;
	0 setWindStr 0;
	0 setGusts 0;
	0 setwinddir 0;
	skiptime 1;


	[] spawn { 

		_tier1 = ["Land_ivory_trailer_04","Land_ivory_trailer_01","Land_ivory_trailer_02","Land_ivory_trailer_03","Land_ivory_trailer_06","Land_ivory_trailer_05"];


		_tier2 = ["Land_Ranch_DED_Ranch_02_F","Land_Ranch_DED_Ranch_01_F","Land_HouseC_R","Land_HouseC1_L","Land_HouseA1_L","Land_HouseB1_L"];

		//123
		_tier3 = ["Land_HouseDoubleAL","Land_HouseDoubleAL2"];

		_shops = ["Land_buildingCommercial1","Land_buildingCommercial2"];
		

		banks = []; 

		{ banks pushback _x; } foreach nearestObjects [[0,0,0], ["Land_CommonwealthBank"], 35500];

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

} else {

	{ _x setFuelCargo 0; } forEach (nearestObjects [[6728.31,5269.87,0.56609], ["Land_fs_feed_F"], 20000]);

	waitUntil {sleep 0.05; !(isNil {player}) && player == player && alive player};

	_requiredVersion = (configfile >> "CfgPatches" >> "Ryanzombies" >> "requiredVersion") call BIS_fnc_getCfgData;

	if(isNil "_requiredversion") then { "Sign_Circle_F" createvehicle getpos player; } else {  };

	"dynamicBlur" ppEffectEnable true; /* enables ppeffect */
	"dynamicBlur" ppEffectAdjust [12]; /* intensity of blur */
	"dynamicBlur" ppEffectCommit 0; /* time till vision is fully blurred */

	[] call Client_fnc_miscVariables;
	player allowdamage false;
	[player] remoteexec ["Server_fnc_initStats",2];
	waituntil {(player getvariable "loaded") == 1};
	player allowdamage true;
	[] call client_fnc_initInteractions;
	waituntil {(player getvariable "loaded") == 2};

	[] call client_fnc_karmaPhoneInit;

	player setVariable["loaded", nil, false];

	waitUntil {!isNull (findDisplay 46)};

	_vehicle = "ivory_wrx" createvehiclelocal getpos player;
	[_vehicle, ["black","matte"], "black", 1, 1] call client_fnc_IvoryInitVehicle;
	[_vehicle, "FuckYou", "ivory"] call client_fnc_numberPlate;

	uisleep 0.05;
	deletevehicle _vehicle;

	[Client_fnc_HudEffects, 3] execFSM "call.fsm";
	[Client_fnc_Survival, 300] execFSM "call.fsm";

	420 cutRsc ["playerHUD","PLAIN"];


	if(uniform player == "" && female) then {
		player forceadduniform "vvv_character_protibanador";
	};
	player setdamage myHealth;

	if(myhealth > 0.99) then {
			hint "Killing player due to death logout.";
			["Remove",1] call client_fnc_doHealth;
	};
	
	client_seatwarn = false;
	client_seatbelt = false;
	[] spawn client_fnc_seatbelts;
	[] spawn client_fnc_gunholster;

	hint "Windows or Shift 5 should bring up your interaction menu.";

	player addEventHandler["InventoryOpened", {_this call client_fnc_inventoryOpened;}];

	(findDisplay 46) displayAddEventHandler ["KeyUp", "_this call client_fnc_HandleKeysUp"];

	(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call client_fnc_HandleKeys"];

};