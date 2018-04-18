/*
Start Fresh when you completely die
*/


removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeVest player;
removeBackpack player;
removeHeadgear player;

deadPlayer = false;
godmode = false;
player setpos [9588.23,4136.39,0.00143814];
player setdir 210;

player adduniform "U_C_TeeSurfer_shorts_1";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";
player additem "cg_tabletd";
player assignitem "cg_tabletd";

closedialog 0;


[] spawn { 
	sleep 3; 
	im_dead = false;
	player setVariable ["wallet", 0, false];
	player setvariable["playerInjuries",[0,0,0,0,0,0,0,0,0,0,0],true];
	player setvariable["playerInjuriesToUpdate",[0,0,0,0,0,0,0,0,0,0,0],false]; 
	[player,""] remoteExec ["client_fnc_animSync"];
	["set",0] call Client_Fnc_DoHealth;
	player setVariable ["tf_voiceVolume", 1, true];
	lastsync = time;
	["add","battery",200] call client_fnc_sustain;
	[player, "statuses", (player getvariable "statuses")] remoteExec ["Server_fnc_setVariable",2];
	[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];
};
