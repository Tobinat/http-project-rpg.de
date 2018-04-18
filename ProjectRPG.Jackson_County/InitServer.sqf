[] spawn server_fnc_init;

//usunięcie bram w willach
_obj = [9585.29, 3385.69, 0.00143814] nearestObject 166437; 
_obj enableSimulationGlobal false;
_obj hideObjectGlobal true;

_obj = [9694.59, 3437.44, 0.00143814] nearestObject 166434; 
_obj enableSimulationGlobal false;
_obj hideObjectGlobal true;

_obj = [10017.60, 3585.74, 0.00143814] nearestObject 165573; 
_obj enableSimulationGlobal false;
_obj hideObjectGlobal true;

GarageVariableWhore = "Flag_US_F" createVehicle [0,1,0];

_vehicle = "ivory_wrx" createvehicle [0,0,0];
[_vehicle, ["black","matte"], "black", 1, 1] call client_fnc_IvoryInitVehicle;
[_vehicle, "FuckYou", "ivory"] call client_fnc_numberPlate;

uisleep 0.05;
deletevehicle _vehicle;


setTimeMultiplier 12;
setDate [2016, 6, 25, 6, 0];
0 setovercast 0;
0 setrain 0;
0 setRainbow 0;
0 setlightnings 0;
0 setfog 0;
0 setWaves 0;
0 setWindForce 0;
0 setWindStr 0;
0 setGusts 0;
0 setwinddir 0;
skiptime 1;
