private ["_car","_info"]
_car = _this select 0;

private _info = [_car] call server_fnc_slpdcheckivoryvehicle;

_return = _info;
_return