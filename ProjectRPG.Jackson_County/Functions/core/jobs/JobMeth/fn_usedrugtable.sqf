myDT = createVehicle ["itemsdruglab1", [0,0,0], [], 0, "NONE"];
myDT attachto [player, [0, 1.3, 0.84] ];
myDrugAction = player addAction [ "Tisch hinstellen", { [] call client_fnc_dropDrugTable; } ];
myDrugAction2 = player addAction [ "Tisch wegpacken", { player removeAction myDrugAction2; player removeAction myDrugAction; detach myDT; deletevehicle myDT; player additem "NP_DrugTable"; } ];