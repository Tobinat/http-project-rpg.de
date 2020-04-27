/*
	Author: PRPG
	Date: 22.01.2017 (Non-retard Units)

	Params: none
	Description: Function that starts growing weeed.
	Return: nothing
*/
private["_myDT","_action"];
if((count weedPlantArray) > 6) exitwith { ["Du kannst nicht mehr als 7 Büsche pflanzen.",false] spawn domsg; };
if(surfacetype getpos player != "#k_rock") exitwith { ["Du musst auf brauner Erde stehen, um sie zu pflanzen.",false] spawn domsg; };
["NP_GrowingPlot",0] spawn client_fnc_removeitem;

_myDT = createVehicle ["vvv_cannabis1_plan", [0,0,0], [], 0, "NONE"];
_myDT attachto [player, [0, 1.3, -1] ];
_action = player addAction [ "Samen sähen", client_fnc_dropWeedPlot, _myDT ];
