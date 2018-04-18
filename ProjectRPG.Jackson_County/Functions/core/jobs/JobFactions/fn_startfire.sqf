if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Fire";
taskrunning = true;
[] call client_fnc_hudwork;

player setVariable ["coplevel", 1, false];

_items = getunitloadout player;
player setvariable ["lastsave",_items, false];
[] call client_fnc_ChangePolice;
//[] call client_fnc_jobEnd;
