_chance = random 100;

if (_chance > 50) then {
    "A Silverlake Bank has received a money shipment"
    remoteexec["hint", -2];
    _mybank = banks call BIS_fnc_selectRandom;
    _thebankcontainer = "plp_ct_HighSecMediumBlack"
    createvehicle getpos player;
    _pos = getpos _mybank;
    _thebankcontainer setdir(getdir _mybank) - 89;
    _containerpos = _mybank getrelpos[-3, 0];
    _thebankcontainer setpos _containerpos;
    _newpos = _thebankcontainer getrelpos[-1.2, 0];
    _thebankcontainer setpos[(_newpos select 0), (_newpos select 1), (_newpos select 2) + 4];
};


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
    uisleep 0.1;
}
foreach vehicles;


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