_Car = _this select 0;

_car setVariable ["AM_lightbar",0,false];
_car setVariable ["AM_siren",0,false];

[_car] execVM "\AM_Carpack\chevrolet\09tahoe\script\am_lightbar.sqf";
[_car] execVM "\AM_V_data\script\siren.sqf";
