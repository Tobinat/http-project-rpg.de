myweaponworkbench = createVehicle ["PRPG_WorkBench_Weapon_01_F", [0,0,0], [], 0, "NONE"];
myweaponworkbench attachto [player, [0, 1.3, 1.84] ];
myweaponworkbenchAction = player addAction [ "Werkbank hinstellen", { [] call client_fnc_dropweaponworkbench; } ];
myweaponworkbenchAction2 = player addAction [ "Werkbank wegpacken", { player removeAction myweaponworkbenchAction2; player removeAction myweaponworkbenchAction; detach myweaponworkbench; deletevehicle myweaponworkbench; player additem "PRPG_WorkBench_Weapon_item"; } ];
