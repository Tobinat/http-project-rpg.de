_car = _this select 0;
if(isNil "_car" || !hasInterface)exitWith{};
[_car] execVM "red_suburban_15_e\scripts\lights.sqf";
[_car] execVM "red_suburban_15_e\scripts\directional.sqf";
[_car] execVM "red_z\red_suburban_15_e\scripts\sirens.sqf";
[_car] execVM "red_suburban_15_e\scripts\lightbar.sqf";