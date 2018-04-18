if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Cop";
taskrunning = true;
[] call client_fnc_hudwork;
_cop = player getvariable "cop";
player setVariable ["coplevel", _cop, false];

_items = getunitloadout player;
player setvariable ["lastsave",_items, false];


[] call client_fnc_ChangePolice;
//[] call client_fnc_jobEnd;
