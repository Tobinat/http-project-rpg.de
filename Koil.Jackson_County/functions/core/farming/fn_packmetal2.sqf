/*
Refine Logs trees by koil
*/
	if(vehSpawned distance player > 15 || isNil {vehSpawned} || isnull vehSpawned ) exitwith { hint "Your truck is too far away!"; }; 
	if(totalLogs == 6) exitwith { hint "Load is full!"; };
	mylog = createVehicle ["Land_Pipes_large_F", position player, [], 0, "NONE"];

	totalLogs = totalLogs + 1;

	if(totalLogs == 1) exitwith {
		mylog attachTo [vehspawned, [-0.6, -3.8, 1.1] ]; mylog setdir 90;
	};
	if(totalLogs == 2) exitwith {
		mylog attachTo [vehspawned, [0.6, -3.8, 1.1] ]; mylog setdir 90;
	};
	if(totalLogs == 3) exitwith {	
		mylog attachTo [vehspawned, [-0.6, -3.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 4) exitwith {	
		mylog attachTo [vehspawned, [0.6, -3.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 5) exitwith {
		mylog attachTo [vehspawned, [-0.6, -3.8, 2.3] ]; mylog setdir 90;
	};
	if(totalLogs == 6) exitwith {
		mylog attachTo [vehspawned, [0.6, -3.8, 2.3] ]; mylog setdir 90;
	};