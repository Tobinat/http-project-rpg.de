_nearplayers = player nearEntities ["Man",5];

{
	im_dead = false;
	_x setvariable["playerInjuries",[0,0,0,0,0,0,0,0,0,0,0],true];
	_x setvariable["playerInjuriesToUpdate",[0,0,0,0,0,0,0,0,0,0,0],false]; 
	_x setVariable["corona",0,true];
	_x setVariable["krank",false,false];
	[_x,""] remoteExec ["client_fnc_animSync"];
	//["set",0] call Client_Fnc_DoHealth;
	[_x] call ace_medical_treatment_fnc_fullHealLocal;
	_x setVariable ["tf_voiceVolume", 1, true];
	lastsync = time;
	["add","battery",200] call client_fnc_sustain;
	[_x, "statuses", (_x getvariable "statuses")] remoteExec ["Server_fnc_setVariable",2];
} foreach _nearplayers;
