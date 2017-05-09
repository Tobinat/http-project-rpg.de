/*
_textures = getArray(configfile >> "cfgivorytextures" >> "textures"); hint format["%1",_textures];
[this] call ivory_fnc_initVehicle;
    This will randomize the color of the body, ceteris paribus.
    This will turn the car into Matte Olive Green with White rims and 100% tint on windows and 50% tint on lights.
[this] call ivory_fnc_setLicense;
vehspawned = createVehicle ["ivory_r34", getpos player, [], 0, "NONE"];
[vehicle player, "nopixel"] call ivory_fnc_setLicense;
[vehicle player, ["white","matte"], "white", 1, 1] call ivory_fnc_initVehicle;

 license, class, color, finish, rims, windows, lights, statuses, owner 


*/

_currentitemindex = lbCurSel 1500;
if (_currentitemindex == -1) exitWith {};
_car = lbData [1500, _currentitemindex];

_car = call compile format["%1", _car]; 

_vehicle = _car createVehicle getpos player;

waitUntil {!isNil "_vehicle" && {!isNull _vehicle}};

_vehicle allowdamage false;
_vehicle setdamage 0;

player moveInDriver _vehicle;

vehicle player allowdamage false;
player allowdamage false;
closedialog 0;

hint "If you exit the vehicle, you will lose god mode";