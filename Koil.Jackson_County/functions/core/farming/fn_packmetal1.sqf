/*
Refine Logs trees by koil
*/
	if(carryingOre == 0) exitwith { hint "You have no ore"; };
	if(vehSpawned distance player > 15 || isNil {vehSpawned} || isnull vehSpawned ) exitwith { hint "Your truck is too far away!"; }; 
	if(totalLogs == 6) exitwith { hint "Load is full!"; deletevehicle mybarrow; deletevehicle myIron; carryingOre = 0; };
	mylog = myIron;
	deletevehicle mybarrow;
	totalLogs = totalLogs + 1;
	carryingOre = 0;

	if(totalLogs == 1) exitwith {
		mylog attachTo [vehspawned, [-0.6, -3.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 2) exitwith {
		mylog attachTo [vehspawned, [0.6, -3.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 3) exitwith {	
		mylog attachTo [vehspawned, [-0.6, -2.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 4) exitwith {	
		mylog attachTo [vehspawned, [0.6, -2.8, 1.7] ]; mylog setdir 90;
	};
	if(totalLogs == 5) exitwith {
		mylog attachTo [vehspawned, [-0.6, -1.8, 1.7] ];mylog setdir 90;
	};
	if(totalLogs == 6) exitwith {
		mylog attachTo [vehspawned, [0.6, -1.8, 1.7] ]; mylog setdir 90;
	};