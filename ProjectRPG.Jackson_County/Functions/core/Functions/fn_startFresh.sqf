/*
Start Fresh when you completely die
*/
ClientArrested = false;

removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

deadPlayer = false;
godmode = false;

//player setpos [7641.1,2555.71,0.00143623];

//hospital
player setpos [9585.01,4113.2,0.00141525];

player setdir 350;

_clothingarray = ["np_shirt_1","np_shirt_2","np_shirt_3","np_shirt_4","np_shirt_5","np_shirt_6","np_shirt_7","np_shirt_8","vvv_ropa_comun_f_1","vvv_ropa_comun_f_2","vvv_ropa_comun_f_4","vvv_ropa_comun_f_5","vvv_ropa_comun_f_6","vvv_ropa_comun_f_7","vvv_ropa_comun_f_8","vvv_ropa_comun_f_9","vvv_ropa_comun_f_10"];
_clothing = _clothingarray call BIS_FNC_SELECTRANDOM;

player adduniform _clothing;
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";
player additem "cg_tabletd";
player assignitem "cg_tabletd";


closedialog 0;

[] spawn {
	sleep 3;
	im_dead = false;
	imrestrained = false;
	player setVariable ["sl_wallet_silverlake", 0, false];
	player setvariable["playerInjuries",[0,0,0,0,0,0,0,0,0,0,0],true];
	player setvariable["playerInjuriesToUpdate",[0,0,0,0,0,0,0,0,0,0,0],false];
	player setVariable ["evidence",[],true];
	[player,""] remoteExec ["client_fnc_animSync"];
	["set",0] call Client_Fnc_DoHealth;
	player setDamage 0;
	[player,player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
	player setVariable ["tf_voiceVolume", 1, true];
	lastsync = time;
	["add","battery",200] call client_fnc_sustain;
	[player, "statuses", (player getvariable "statuses")] remoteExec ["Server_fnc_setVariable",2];
	[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];

	_respawn = player getVariable "respawn";
	_respawn = _respawn - 1;
	player setVariable ["respawn", _respawn, false];
	[_respawn,getplayeruid player] remoteExec ["server_fnc_syncRespawn",2];
	[] spawn client_fnc_syncData;
	[player,objNull,4,format ["%1 ist respawned.",name player],"",""] remoteExec ["server_fnc_deathLog", 2];
};
