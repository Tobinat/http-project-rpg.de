detach myDT;
cookingMeth = true;
player removeAction myDrugAction;
player removeAction myDrugAction2;
hint "Sie können mit dem Kochen beginnen!";
myActionStart = myDT addAction [ "Kochen beginnen", {  
	[] spawn client_fnc_methCooking;
	totalskills = 100;
	myDrugValue = 100;
	myDT removeaction myActionStart;
	myAction1 = myDT addAction [ "Aceton hinzufügen", { ["Acetone"] call client_fnc_upMethCooking; } ];
	myAction2 = myDT addAction [ "Pseudoephedrin hinzufügen", { ["Pseudo"] call client_fnc_upMethCooking; } ];
	myAction3 = myDT addAction [ "Temperatur senken", { ["Cool"] call client_fnc_upMethCooking; } ];
	myAction4 = myDT addAction [ "Temperatur steigern", { ["Heat"] call client_fnc_upMethCooking; } ];
	myAction5 = myDT addAction [ "Druck senken", { ["Release"] call client_fnc_upMethCooking; } ];
	[player,objNull,27,format ["%1 hat Meth gekocht",name player],""] remoteExec ["server_fnc_actionLog", 2];
} ];
