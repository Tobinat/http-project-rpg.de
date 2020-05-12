[] spawn server_fnc_init;

//Banktüren schließen & verriegeln
{
	_mybank = _x;
    _thebankcontainer = "plp_ct_HighSecMediumBlack" createvehicle [9794,978,0.0014];
    _pos = getpos _mybank;
    _thebankcontainer setdir(getdir _mybank) - 89;
    _containerpos = _mybank getrelpos[-3, 0];
    _thebankcontainer setpos _containerpos;
    _newpos = _thebankcontainer getrelpos[-1.2, 0];
    _thebankcontainer setpos[(_newpos select 0), (_newpos select 1), (_newpos select 2) + 4];
 } forEach (nearestObjects [[6728.31,5269.87,0.56609], ["Land_CommonwealthBank"], 20000]);
 
 {
	_hostpital = _x;
	_hospital setVariable setVariable ["ace_medical_isMedicalFacility",1,true];
 } forEach (nearestObjects [[9580.24,4125.19,0.00143814], ["Land_buildingshospital1"], 100]);

_vehicle = "ivory_wrx" createvehicle [0,0,0];
[_vehicle, ["black","matte"], "black", 1, 1] call client_fnc_IvoryInitVehicle;
[_vehicle, "FuckYou", "ivory"] call client_fnc_numberPlate;

uisleep 0.05;
deletevehicle _vehicle;


setTimeMultiplier 8;
/*
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
*/