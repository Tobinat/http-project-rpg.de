mycarworkbench = createVehicle ["PRPG_WorkBench_Car_01_F", [0,0,0], [], 0, "NONE"];
mycarworkbench attachto [player, [0, 1.3, 0.84] ];
mycarworkbenchAction = player addAction [ "Werkbank hinstellen", { [] call client_fnc_dropcarworkbench; } ];
mycarworkbenchAction2 = player addAction [ "Werkbank wegpacken", { player removeAction mycarworkbenchAction2; player removeAction mycarworkbenchAction; detach mycarworkbench; deletevehicle mycarworkbench; player additem "NP_DrugTable"; } ];
