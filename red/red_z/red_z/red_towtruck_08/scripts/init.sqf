_car = _this select 0;
if(isNil "_car" || !hasInterface)exitWith{};
_car sethit ["light_1_h",1]; 
_car sethit ["light_2_h",1]; 
_car sethit ["light_3_h",1]; 
_car sethit ["light_4_h",1];
[_car] execVM "red_z\red_towtruck_08\scripts\tow.sqf";