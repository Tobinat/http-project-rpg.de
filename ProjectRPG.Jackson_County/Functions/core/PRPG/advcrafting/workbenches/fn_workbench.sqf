myworkbench = createVehicle ["PRPG_WorkBench_Normal_01_F", [0,0,0], [], 0, "NONE"];
myworkbench attachto [player, [0, 1.8, 0.84] ];
myworkbenchAction = player addAction [ "Werkbank hinstellen", { [] call client_fnc_dropworkbench; } ];
myworkbenchAction2 = player addAction [ "Werkbank wegpacken", { player removeAction myworkbenchAction2; player removeAction myworkbenchAction; detach myworkbench; deletevehicle myworkbench; player additem "PRPG_WorkBench_Normal_item"; } ];
