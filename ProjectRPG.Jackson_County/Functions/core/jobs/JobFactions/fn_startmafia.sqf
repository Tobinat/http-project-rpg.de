if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Mafia";
taskrunning = true;
[] call client_fnc_hudwork;
//[] call client_fnc_jobEnd;

