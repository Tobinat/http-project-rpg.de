if(player distance myhouse > 20) exitwith { hint "Du musst das in deinem Haus tun!"; };

myDT = createVehicle ["itemsdruglab1", [0,0,0], [], 0, "NONE"];
myDT attachto [player, [0, 1.3, 0.84] ];
myDrugAction = player addAction [ "Tisch aufstellen", { [] call client_fnc_dropDrugTable; } ];