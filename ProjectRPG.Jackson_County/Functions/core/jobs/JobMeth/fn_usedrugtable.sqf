myDT = createVehicle ["itemsdruglab1", [0,0,0], [], 0, "NONE"];
myDT attachto [player, [0, 1.3, 0.84] ];
myDrugAction = player addAction [ "Ustaw stół", { [] call client_fnc_dropDrugTable; } ];
myDrugAction2 = player addAction [ "Złóż stół", { player removeAction myDrugAction2; player removeAction myDrugAction; detach myDT; deletevehicle myDT; player additem "NP_DrugTable"; } ];