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

_cashcheck = [2,(2000 * mav_ttm_var_mechanicRent)] call Client_fnc_sl_checkMoney_secure;
if!(_cashCheck) exitwith { hint "Nie masz pieniędzy!"; };
_currentitemindex = lbCurSel 1500;
if (_currentitemindex == -1) exitWith {};
_car = lbData [1500, _currentitemindex];
lbDelete [1500, _currentitemindex];

closedialog 0;

createdialog "EnterLicense";

_car = call compile format["%1", _car];

_numberPlate = _car select 0;
_className = _car select 1;
_carColor = _car select 2;
_carFinish = _car select 3;
_wheelColor = _car select 4;
_windowTint = _car select 5;
_headlightTint = _car select 6;
_status = _car select 7;
_carowner = _car select 8;

plateChange = _car;

