detach myDT;
cookingMeth = true;
player removeAction myDrugAction;
player removeAction myDrugAction2;
hint "Możesz zacząć gotować!";
myActionStart = myDT addAction [ "Zacznij gotować", {  
	[] spawn client_fnc_methCooking;
	totalskills = 100;
	myDrugValue = 100;
	myDT removeaction myActionStart;
	myAction1 = myDT addAction [ "Zmieszaj aceton", { ["Acetone"] call client_fnc_upMethCooking; } ];
	myAction2 = myDT addAction [ "Dodaj pseudoefedrynę", { ["Pseudo"] call client_fnc_upMethCooking; } ];
	myAction3 = myDT addAction [ "Zmniejsz temperaturę", { ["Cool"] call client_fnc_upMethCooking; } ];
	myAction4 = myDT addAction [ "Zwiększ temperaturę", { ["Heat"] call client_fnc_upMethCooking; } ];
	myAction5 = myDT addAction [ "Obniż ciśnienie", { ["Release"] call client_fnc_upMethCooking; } ];
	[player,objNull,27,format ["%1 postawił stół do mety",name player],""] remoteExec ["server_fnc_actionLog", 2];
} ];