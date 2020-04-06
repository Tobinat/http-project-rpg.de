if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Mafia";
taskrunning = true;
[] call client_fnc_hudwork;
playsound "mafia";
//[] call client_fnc_jobEnd;

