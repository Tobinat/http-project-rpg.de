if(!taskrunning) exitwith {};

if(!isNil "vehspawned") then {
	if(!isNull vehspawned) then {
		_players = crew (vehspawned);
		if(count _players == 0) then {

			{
					detach _x;
					deletevehicle _x;
			} forEach attachedObjects vehspawned;

			deletevehicle vehspawned;
		};
	};
};

[50] call Client_fnc_sl_removeBank_secure;
["Ihnen wurden $50 für die Anmietung eines Firmenwagens berechnet.", true] spawn doquickmsg;

_jobType = myjob;

if (_jobType == "Mafia") exitwith {
	vehspawned = createVehicle ["VVV_Bentley_Arnage", [0,0,(random(500) + 3)], [], 0, "NONE"];
	[vehspawned] spawn client_fnc_spawnvehicle;
	current_cars pushback vehspawned; uisleep 1;
};

if (_jobType == "Wood Logging") exitwith {
	vehspawned = createVehicle ["jonzie_log_truck", [0,0,(random(500) + 3)], [], 0, "NONE"];
	[vehspawned] spawn client_fnc_spawnvehicle;
	[vehspawned, ["white","Glossy"]] remoteexec ["client_fnc_initVehicle",2];
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["R_Uniform_worker_l",1];
	hint "Da liegt zeug in dem Auto, benutze es!";
};

if (_jobType == "mail") exitwith {
	vehspawned = createVehicle ["nopixel_fedex", [0,0,(random(500) + 3)], [], 0, "NONE"];
	[vehspawned] spawn client_fnc_spawnvehicle;
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["TRYK_U_B_PCUGs_gry_R",1];
	hint "Da liegt zeug in dem Auto, benutze es!";
};

if (_jobType == "trashman") exitwith {
	vehspawned = createVehicle ["nopixel_garbageTruck", [0,0,(random(500) + 3)], [], 0, "NONE"];
	[vehspawned] spawn client_fnc_spawnvehicle;
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["G_Uniform_worker_l",1];
	hint "Da liegt zeug in dem Auto, benutze es!";
};


if (_jobType == "pizza") exitwith {
	vehspawned = createVehicle ["GMC_Vandura_83_Pizza_COSTUM_V1", [0,0,(random(500) + 3)], [], 0, "NONE"];
	[vehspawned] spawn client_fnc_spawnvehicle;
	current_cars pushback vehspawned; uisleep 1;
};

if (_jobType == "repairman") exitwith {
	vehspawned = createVehicle ["nopixel_mrfixit", [0,0,(random(500) + 3)], [], 0, "NONE"];
	[vehspawned, ["white","Glossy"]] spawn client_fnc_initVehicle;
	[vehspawned] spawn client_fnc_spawnvehicle;
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["A3L_Worker_Outfit",1];
	hint "Da liegt zeug in dem Auto, benutze es!";
};

if (_jobType == "security") exitwith {
	vehspawned = createVehicle ["ivory_rs4_security", [0,0,(random(500) + 3)], [], 0, "NONE"];
	[vehspawned] spawn client_fnc_spawnvehicle;
	[vehspawned] remoteexec ["ivory_fnc_initvehicle",2];
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["vvv_character_agente_473",1];
	hint "Da liegen sachen im Auto, benutze sie.";
};

if (_jobType == "towtruck") exitwith {
	vehspawned = createVehicle ["Jonzie_Tow_Truck", [0,0,(random(500) + 3)], [], 0, "NONE"];
	[vehspawned] spawn client_fnc_spawnvehicle;
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["U_C_Mechanic_01_F",1];
	hint "Da liegt zeug in dem Auto, benutze es!";
	[vehspawned, ["burntorange","Glossy"]] call client_fnc_initVehicle;
};

if (_jobType == "NewsMan") exitwith {
	vehspawned = createVehicle ["nopixel_news_van_original", [0,0,(random(500) + 3)], [], 0, "NONE"];
	[vehspawned] spawn client_fnc_spawnvehicle;
	clearmagazinecargoGlobal (vehspawned);
	current_cars pushback vehspawned; uisleep 1;

	vehspawned addWeaponCargo ["Press_Cam_F",2];
	_microphone = ["Press_Mic_AAN_F", "Press_Mic_BBC_F", "Press_Mic_CNN_F", "Press_Mic_ARD_F", "Press_Mic_ZDF_F"] call BIS_fnc_selectRandom;
	vehspawned addWeaponCargo [_microphone,2];
	hint "Da liegt zeug in dem Auto, benutze es!";
};

if (_jobType == "taxi") exitwith {
	_taxichance = random (10);
	if(_taxichance > 9) then
	{
		vehspawned = createVehicle ["ivory_rs4_taxi", [0,0,(random(500) + 3)], [], 0, "NONE"];
	}else
	{
		vehspawned = createVehicle ["ivory_190e_taxi", [0,0,(random(500) + 3)], [], 0, "NONE"];
	};
	[vehspawned] spawn client_fnc_spawnvehicle;
	[vehspawned] remoteexec ["ivory_fnc_initvehicle",2];
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["np_shirt_8",1];
	hint "Da liegt zeug in dem Auto, benutze es!";
};
