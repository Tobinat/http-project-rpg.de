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

if (female) then {
_clothingarray = ["vvv_elena_fisher","vvv_elena_fisher2","vvv_elena_fisher3","vvv_elena_fisher5","vvv_elena_fisher6","vvv_elena_fisher7","vvv_elena_fisher8","vvv_elena_fisher9","vvv_elena_fisher10","vvv_elena_fisher11","vvv_elena_fisher12","vvv_elena_fisher13","vvv_elena_fisher14","vvv_elena_fisher15","vvv_elena_fisher16"];
_clothing = _clothingarray call BIS_FNC_SELECTRANDOM;
player adduniform _clothing;
} else {
_clothingarray = ["np_shirt_1","np_shirt_2","np_shirt_3","np_shirt_4","np_shirt_5","np_shirt_6","np_shirt_7","np_shirt_8","vvv_ropa_comun_f_1","vvv_ropa_comun_f_2","vvv_ropa_comun_f_4","vvv_ropa_comun_f_5","vvv_ropa_comun_f_6","vvv_ropa_comun_f_7","vvv_ropa_comun_f_8","vvv_ropa_comun_f_9","vvv_ropa_comun_f_10"];
_clothing = _clothingarray call BIS_FNC_SELECTRANDOM;
player adduniform _clothing;
};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";
player additem "prpg_tablet";
player assignitem "prpg_tablet";

closedialog 0;

[] spawn {
	sleep 3;
	im_dead = false;
	imrestrained = false;
	player setVariable ["sl_wallet_silverlake", 0, false];
	player setvariable["playerInjuries",[0,0,0,0,0,0,0,0,0,0,0],true];
	player setvariable["playerInjuriesToUpdate",[0,0,0,0,0,0,0,0,0,0,0],false];
	player setVariable ["corona",0,true];
	player setVariable ["evidence",[],true];
	[player,""] remoteExec ["client_fnc_animSync"];
	["set",0] call Client_Fnc_DoHealth;
	player setDamage 0;
	[player] call ace_medical_treatment_fnc_fullHealLocal;
	player setVariable ["tf_voiceVolume", 1, true];
	lastsync = time;
	["add","battery",200] call client_fnc_sustain;
	[player, "statuses", (player getvariable "statuses")] remoteExec ["Server_fnc_setVariable",2];
	[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];


	[player,objNull,4,format ["%1 stirbt und beendet seine arbeit als %2", name player, myjob],myjob] remoteExec ["server_fnc_jobLog", 2];
	myjob = "none";
	taskrunning = false;
	dispatch = false;
	playertasks = [];
	deletemarkerlocal format["job%1",getPlayerUID player];

	player setVariable ["coplevel", 0, false];
	player setVariable ["ace_medical_medicClass", 0, true];

	[player] remoteExec ["server_fnc_quitJob",2];

	if(!isNil "vehspawned") then {
		if(!isNull vehspawned) then {
			_players = crew (vehspawned);
			if(count _players == 0) then {
				{
					detach _x;
					deletevehicle _x;
				} forEach attachedObjects vehspawned;
				deletevehicle vehspawned;
			};
		};
	};
	[] call client_fnc_hudwork;
	[] spawn client_fnc_tryhangup;

	[getpos player,"text to display","destroy"] spawn client_fnc_hudHelper;


	//_respawn = player getVariable "respawn";
	//_respawn = _respawn - 1;
	//player setVariable ["respawn", _respawn, false];
	//[_respawn,getplayeruid player] remoteExec ["server_fnc_syncRespawn",2];
	[] spawn client_fnc_syncData;
	[player,objNull,4,format ["%1 ist respawned.",name player],"",""] remoteExec ["server_fnc_deathLog", 2];
};
