myclothingworkbench = createVehicle ["prpg_workbench_clothing", [0,0,0], [], 0, "NONE"];
myclothingworkbench attachto [player, [0, 1.3, 1.84] ];
myclothingworkbenchAction = player addAction [ "Werkbank hinstellen", { [] call client_fnc_dropclothingworkbench; } ];
myclothingworkbenchAction2 = player addAction [ "Werkbank wegpacken", { player removeAction myclothingworkbenchAction2; player removeAction myclothingworkbenchAction; detach myclothingworkbench; deletevehicle myclothingworkbench; player additem "prpg_workbench_clothing_kit"; } ];
