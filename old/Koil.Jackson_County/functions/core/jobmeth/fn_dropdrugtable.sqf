if(player distance myhouse > 20) exitwith { hint "Du musst in der nähe deines Hauses sein um dies zu tun"; };

detach myDT;
cookingMeth = true;
player removeAction myDrugAction;
hint "Dein Tisch ist unten, du bist bereit zu Kochen!";
myActionStart = myDT addAction [ "Beginne zu Kochen", {
	[] spawn client_fnc_methCooking;
	myDrugValue = 100;
	myDT removeaction myActionStart;
	myAction1 = myDT addAction [ "Azeton dazugeben", { ["Acetone"] call client_fnc_upMethCooking; } ];
	myAction2 = myDT addAction [ "Pseudoephedrin dazugeben", { ["Pseudo"] call client_fnc_upMethCooking; } ];
	myAction3 = myDT addAction [ "Produkt kühlen", { ["Cool"] call client_fnc_upMethCooking; } ];
	myAction4 = myDT addAction [ "Produkt erhitzen", { ["Heat"] call client_fnc_upMethCooking; } ];
	myAction5 = myDT addAction [ "Druck entlassen", { ["Release"] call client_fnc_upMethCooking; } ];
} ];
myActionPack = myDT addAction [ "Drogen einpacken", {
	deletevehicle myDT;
	cookingMeth = false;
} ];