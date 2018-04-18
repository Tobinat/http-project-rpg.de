/*  Select a random position from an area defined by a marker.
     In: [marker,water,blacklist,emptySpace]
    Out: position
*/
private ["_area","_water","_blist","_pos","_empty"];
_area = _this select 0;
_water = if (count _this > 1) then {_this select 1} else {0};
_blist = if (count _this > 2) then {_this select 2} else {[]};
_empty = if (count _this > 3) then {_this select 3} else {[]};
_pos = [];

if (typename _blist == "STRING") then {_blist = [_blist]};

private ["_shape"];
_shape = _area call SHK_pos_fnc_getMarkerShape;


private ["_i","_exit"];
_exit = false;
for [{_i = 0}, {_i < 1000 && !_exit}, {_i = _i + 1}] do {


if (_shape in ["SQUARE","RECTANGLE"]) then {
_pos = _area call SHK_pos_fnc_getPosFromRectangle;
} else {
_pos = _area call SHK_pos_fnc_getPosFromEllipse;
};


private ["_dst","_veh","_p"];

_dst = 200;
_veh = "";
switch (typename _empty) do {
case (typename objNull): { _veh = typeof _empty }; 
case ("STRING"): { _veh = _empty };
case (typename []): {
if (count _empty > 0) then {
_dst = _empty select 0;
_veh = _empty select 1;
if (typename _veh == typename objNull) then { _veh = typeof _veh };
};
};
};

_p = _pos findEmptyPosition [0,_dst,_veh];


if (count _p > 0) then {
_pos = _p;
};


if (typeName _water == "SCALAR") then {
switch _water do {

case 0: { 

if !(surfaceIsWater _pos) then {
_exit = true;
};
};

case 1: { 
_exit = true;
};

case 2: { 

if (surfaceIsWater _pos) then {
_exit = true;
};
};
};
} else { 

if !_water then {

if !(surfaceIsWater _pos) then {
_exit = true;
};

} else {
_exit = true;
};
};


if (count _blist > 0 && _exit) then {

{

if ([_pos,_x] call SHK_pos_fnc_isBlacklisted) exitwith {
_exit = false;
};
} foreach _blist;
};
};


_pos