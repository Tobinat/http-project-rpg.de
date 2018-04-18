/*
Refine Logs trees by koil
*/
	Cranes = nearestObjects [player, ["land_reservoirtank_airport_f"], 150];
	if(count Cranes > 0) then { 
		deletevehicle vehspawned;
		deletevehicle myoil;
		vehspawned = createVehicle ["Jonzie_Tanker_Truck", getpos (cranes select 0), [], 0, "NONE"];
		player moveInDriver vehspawned;
	};