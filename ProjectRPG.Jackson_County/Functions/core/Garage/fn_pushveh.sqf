private ["_vehicle", "_vel", "_dir", "_speed"];

_vehicle = CurrentCursorTarget;
if!(local _vehicle) exitWith {};
_vehicle allowdamage false;
_vel = velocity _vehicle;  
_dir = direction player;
_speed = 20;

_vehicle setVelocity [(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), (_vel select 2)  ];
uiSleep 1;
_vehicle allowdamage true;
