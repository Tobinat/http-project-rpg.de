if(isnil "taskrunning") then { taskrunning = false; };

myjob = "EMS";
taskrunning = true;
[] call client_fnc_hudwork;

_cop = player getvariable "EMS";
player setVariable ["coplevel", _cop, false];

_items = getunitloadout player;
player setvariable ["lastsave",_items, false];
[] call client_fnc_ChangePolice;
//[] call client_fnc_jobEnd;
