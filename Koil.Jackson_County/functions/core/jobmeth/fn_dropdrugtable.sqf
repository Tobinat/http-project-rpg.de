if(player distance myhouse > 20) exitwith { hint "You must do this near your house"; };

detach myDT;
cookingMeth = true;
player removeAction myDrugAction;
hint "Your table is down, be ready to cook!";
myActionStart = myDT addAction [ "Start Cooking", {  
	[] spawn client_fnc_methCooking;
	myDrugValue = 100;
	myDT removeaction myActionStart;
	myAction1 = myDT addAction [ "Mix Acetone", { ["Acetone"] call client_fnc_upMethCooking; } ];
	myAction2 = myDT addAction [ "Mix Pseudoephedrine", { ["Pseudo"] call client_fnc_upMethCooking; } ];
	myAction3 = myDT addAction [ "Cool Product", { ["Cool"] call client_fnc_upMethCooking; } ];
	myAction4 = myDT addAction [ "Heat Product", { ["Heat"] call client_fnc_upMethCooking; } ];
	myAction5 = myDT addAction [ "Release Pressure", { ["Release"] call client_fnc_upMethCooking; } ];
} ];
myActionPack = myDT addAction [ "Pack Up Contents", {  
	deletevehicle myDT;
	cookingMeth = false;
} ];