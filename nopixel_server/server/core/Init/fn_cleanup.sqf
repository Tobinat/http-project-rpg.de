_chance = random 100;
/*
if (_chance < 20 && currentBanks < 2) then {
    ["Information","Eine der Banken hat gerade eine Lieferung von Geld erhalten.",[255,69,0,1],""] remoteExec ["Client_fnc_showNotification", -2];
    //"Jeden z banków właśnie otrzymał dostawę pieniędzy." remoteexec["hint", -2];
    _mybank = banks call BIS_fnc_selectRandom;
    _thebankcontainer = "plp_ct_HighSecMediumBlack" createvehicle [9794,978,0.0014];
    _pos = getpos _mybank;
    _thebankcontainer setdir(getdir _mybank) - 89;
    _containerpos = _mybank getrelpos[-3, 0];
    _thebankcontainer setpos _containerpos;
    _newpos = _thebankcontainer getrelpos[-1.2, 0];
    _thebankcontainer setpos[(_newpos select 0), (_newpos select 1), (_newpos select 2) + 4];
	diag_log format ["Bank pos - %1", _pos];
	currentBanks = currentBanks + 1;
};
*/
_fireLocations = [
	//PD Silverlake 1
	[8281.71,3003.69,0.00144005],
	//PD Silverlake 2
	[8271.53,3002.93,0.00143814],
	//PD SIlverlake 3
	[8272.88,3014.51,0.00143814],
	//PD Silverlake 4
	[8274.83,3006.5,0.00143814],
	//SL Bar
	[7010.43,2304.04,0.00143814],
	//SL Arbeitsamt
	[7154.99,2485.3,0.00143814],
	//SL Hauptautohaus 
	[7076.73,2463.45,0.00143814],
	//PD Dienststelle Gefängnis
	[5568.61,6216.53,0.00143433],
	//Colchester Waffenladen
	[8776.48,7550.65,0.00143814],
	//SilverLake Rennstrecke 1
	[7958.77,5102.28,0.00143886],
	//SilverLake Rennstrecke 2
	[7973.85,5086.84,0.00143886],
	//SilverLake Rennstrecke 3
	[7944.94,5089.99,0.00143886],
	//SilverLake Tankstelle 1
	[8144.33,2722.43,0.00143814],
	//Silverlake Tankstelle 2
	[8106.07,2698.82,0.00143814],
	//Silverlake Bauamt 1
	[7938.19,2734.36,0.00144577],
	//Silverlake Bauamt 2
	[7918.84,2744.51,0.00144577],
	//Friedhof 1
	[2939.32,2241.13,0.00144196],
	//Friedhof 2
	[2814.75,2186.12,0.000701904],
	//Skystead Farms 1
	[3816.77,1776.99,0.00144196],
	//Skystead Farms 2
	[3810.02,1768.24,0.00144196],
	//Schrottplatz Colchester
	[7611.78,6195.48,0.00122261],
	//Öl Rafinerie
	[9092.91,6447.26,0.00143814],
	//Material Ankauf
	[6312.53,2248.15,0.00141525],
	//Silverlake Docs
	[6205.47,760.462,0.00144005],
	//Fischmarkt Morrison
	[4735.01,2411.53,0.00143862],
	//Tankstelle Morrison Süd
	[4715.04,2451.21,0.00143886],
	//Tankstelle Morrison Nord
	[6709.77,4624.32,0.00143886],
	//Kasino
	[6778.07,4637.94,0.00143957],
	//Tankstelle Colchster
	[8591.18,6944.83,0.00143814],
	//Garage Colchester 1
	[8672.9,7016.31,0.00143814],
	//Garage Colchester 2
	[8936.45,7526.72,0.00143814],
	//McDoof Colchester
	[8676.27,6899.06,0.00143814],
	//Vergnügungspark
	[9599.25,8951.52,0.00143862],
	//Garage Silverlake
	[6938.27,2094.97,0.00143909],
	//Skystead Farms Schrottplatu
	[3774.65,1854.63,0.00143433],
	//Slums östlich Colchester
	[9499.23,7541.46,0.00144196],
	//Flughafen Haupteingang
	[3289.76,1120.02,0.00144196],
	//Drogenverarbeitung
	[2563.21,1469.47,0.00144196],
	//Erzveratbeitung
	[2563.21,1469.47,0.00144196],
	//Holz verarbeitung
	[2563.21,1469.47,0.00144196],
	//Fischverarbeitung
	[2563.21,1469.47,0.00144196],
	//Präsidenten Wohnhaus
	[2563.21,1469.47,0.00144196],
	//Polizei Assistant Chief
	[9519,3524.5,0.00143814],
	//Polizei Chief
	[9628.34,3579.47,0.00143814],
	//Krankenhaus Helipad
	[9628.34,3579.47,0.00143814],
	//Silverlake Waffenladen
	[7515.22,2494.52,0.00143814],
	//Silverlake Pizzaria
	[7251.86,2412.9,0.00143623],
	//Dunkin Donuts SIlverlake
	[7181.52,2389.9,0.00143814],
	//Dunkin Donuts Colchester
	[8799.12,7208.83,0.00143814],
	//Autohaus Colchester
	[8736.91,6861.19,0.00143814],
	//Ivywood Tankstelle 1
	[8856.14,5718.64,0.00143814],
	//Ivywood Tankstelle 2
	[8816.44,5735.87,0.00143814],
	//Silverlake Garage 2
	[6295.63,1315.69,0.00143814],
	//Silverlake Nachtklub
	[6267.24,1364.92,0.00143623],
	//Bürogebäude irgendwo in Silverlake
	[5995.61,1262.89,0.00143814],
	//Irgendwelche Tanks in der Pampa
	[3927.41,1434.12,0.00115204]
];
_fire = _fireLocations call bis_fnc_selectRandom;
[_fire] spawn server_fnc_fireStart;
[] spawn server_fnc_economyEvents;

_dateHour = date select 3;
if (6 < _dateHour && _dateHour< 18) then {
    setTimeMultiplier 12;
} else {
    setTimeMultiplier 24;
};

/*
if (isNil "carArray") then {
    carArray = [];
};

if (isNil "carPosition") then {
    carPosition = [];
};

{
    _nearc = nearestObjects[getPos _x, ["Man"], 55];
    if (((count _nearc) == 0 && (count crew _x) == 0 && isNull driver vehicle _x && isNull attachedTo _x) || getdammage _x == 1) then {
        if (_x in carArray) then {
            _pia = cararray FIND _x;
            _location = carposition SELECT _pia;
            cararray deleteAT _pia;
            carposition deleteAT _pia;
            if (_x distance _location < 5) then {
                deletevehicle _x;
            };
        } else {
            cararray pushback _x;
            carposition pushback getpos _x;
        };
    };
} foreach vehicles;


_list = (allMissionObjects "WeaponHolder") +
    (allMissionObjects "GroundWeaponHolder") +
    (allMissionObjects "WeaponHolderSimulated") +
    (allMissionObjects "SmokeShell") +
    (allMissionObjects "CraterLong") +
    (allMissionObjects "CraterShort") +
    (allMissionObjects "StaticWeapon") +
    (allMissionObjects "test_EmptyObjectForFireBig") +
    (allMissionObjects "Default");

{
    _nearestc = _x nearEntities["man", 50];
    if (((count _nearestc) == 0)) then {
        deleteVehicle _x;
    };
}
forEach _list;
*/
diag_log "server_fnc_cleanup";