detach myDT2;
growingweed = true;
player removeAction myDrugAction2;
hint "Your seedling is planted!";
myActionStart2 = myDT2 addAction [ "Start Growing", {  
	[] spawn client_fnc_weedgrowing;
	myDrugValue2 = 4;
	totalskills = 4;
	myDT2 removeaction myActionStart2;
	myAction12 = myDT2 addAction [ "Water Plant", { ["Water"] call client_fnc_upweedgrowing; } ];
	myAction22 = myDT2 addAction [ "Prune Plant", { ["Prune"] call client_fnc_upweedgrowing; } ];
	myAction32 = myDT2 addAction [ "Cool Plant", { ["Cool"] call client_fnc_upweedgrowing; } ];
	myAction42 = myDT2 addAction [ "Heat Plant", { ["Heat"] call client_fnc_upweedgrowing; } ];
	myAction52 = myDT2 addAction [ "Turnover Soil", { ["Turnover"] call client_fnc_upweedgrowing; } ];
} ];
