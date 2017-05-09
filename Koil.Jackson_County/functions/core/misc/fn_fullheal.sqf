im_dead = false;
player setvariable["playerInjuries",[0,0,0,0,0,0,0,0,0,0,0],true];
player setvariable["playerInjuriesToUpdate",[0,0,0,0,0,0,0,0,0,0,0],false]; 
[player,""] remoteExec ["client_fnc_animSync"];
["set",0] call Client_Fnc_DoHealth;
player setVariable ["tf_voiceVolume", 1, true];
lastsync = time;
["add","battery",200] call client_fnc_sustain;
[player, "statuses", (player getvariable "statuses")] remoteExec ["Server_fnc_setVariable",2];