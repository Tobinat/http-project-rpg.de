if(player distance myhouse > 20) exitwith { hint "You must do this near your house"; };

myDT = createVehicle ["itemsdruglab1", [0,0,0], [], 0, "NONE"];
myDT attachto [player, [0, 1.3, 0.84] ];
myDrugAction = player addAction [ "Set Table", { [] call client_fnc_dropDrugTable; } ];