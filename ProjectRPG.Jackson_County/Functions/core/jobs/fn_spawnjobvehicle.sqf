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

[10] call Client_fnc_sl_removeBank_secure;
["Zostałeś obciażony kwota $10 dolarów za wypożyczenie pojazdu służbowego.", true] spawn doquickmsg;

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
	vehspawned addItemCargo ["CUP_U_C_Mechanic_01",1];
	hint "You have some items in the truck, use them!";
};

if (_jobType == "mail") exitwith {
	vehspawned = createVehicle ["nopixel_fedex", [0,0,(random(500) + 3)], [], 0, "NONE"];	
	[vehspawned] spawn client_fnc_spawnvehicle;
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["CUP_U_O_SLA_Overalls_Tank",1];
	hint "You have some items in the truck, use them!";
};

if (_jobType == "trashman") exitwith {	
	vehspawned = createVehicle ["nopixel_garbageTruck", [0,0,(random(500) + 3)], [], 0, "NONE"];	
	[vehspawned] spawn client_fnc_spawnvehicle;
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["G_Uniform_worker_l",1];
	hint "You have some items in the truck, use them!";
};

if (_jobType == "repairman") exitwith {	
	vehspawned = createVehicle ["nopixel_mrfixit", [0,0,(random(500) + 3)], [], 0, "NONE"];	
	[vehspawned, ["white","Glossy"]] spawn client_fnc_initVehicle;
	[vehspawned] spawn client_fnc_spawnvehicle;	
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["CUP_U_C_Mechanic_02",1];
	hint "You have some items in the truck, use them!";
};

if (_jobType == "security") exitwith {
	vehspawned = createVehicle ["ivory_rs4_security", [0,0,(random(500) + 3)], [], 0, "NONE"];
	[vehspawned] spawn client_fnc_spawnvehicle;
	[vehspawned] remoteexec ["ivory_fnc_initvehicle",2];
	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["vvv_character_agente_473",1];
	hint "You have some items in the truck, use them - you can buy a taser from the gun store for this job.";
};

if (_jobType == "towtruck") exitwith {
	vehspawned = createVehicle ["A3L_Towtruck", [0,0,(random(500) + 3)], [], 0, "NONE"];	
	[vehspawned] spawn client_fnc_spawnvehicle;

	current_cars pushback vehspawned; uisleep 1;
	vehspawned addItemCargo ["CUP_U_C_Mechanic_03",1];
	hint "You have some items in the truck, use them!";
};

if (_jobType == "NewsMan") exitwith {	
	vehspawned = createVehicle ["nopixel_news_van_original", [0,0,(random(500) + 3)], [], 0, "NONE"];	
	[vehspawned] spawn client_fnc_spawnvehicle;
	clearmagazinecargoGlobal (vehspawned);
	current_cars pushback vehspawned; uisleep 1;

	vehspawned addWeaponCargo ["Press_Cam_F",2];
	_microphone = ["Press_Mic_AAN_F", "Press_Mic_BBC_F", "Press_Mic_CNN_F", "Press_Mic_ARD_F", "Press_Mic_ZDF_F"] call BIS_fnc_selectRandom;
	vehspawned addWeaponCargo [_microphone,2];
	hint "You have some items in the truck, use them!";
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
	hint "Masz jakieś rzeczy w bagażniku, użyj ich!";
};



