params["_input"];

if(_input == 3) exitwith { paintballing = false; };
if(isNil "paintballscore") then { paintballscore = 0; };
if(_input == 2) exitwith { paintballscore = paintballscore + 1; player say "racebeep1"; };

private ["_spawnpoints","_midpos"];

_spawnpoints = [[3090.16,1556.14,0.00145721],[3120.14,1527.83,0.00149536],[3139.49,1549.74,0.00151062],[3172.92,1608.72,0.00141144],[3150.98,1629.06,0.00145721],[3035.43,1641.44,0.00139618]];
_goto = _spawnpoints call BIS_fnc_selectRandom;
player setpos _goto;
player setdir random(360);
_mypos = player getrelpos [random(20),0];
player setpos _mypos;

_endpos = [3370.36,1436.92,0.00147247];
_paintballsave = getunitloadout player;
paintballing = true;

	player enablefatigue false;
	player enablestamina false;

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;


if(_input == 1) then {

	_guns = ["Weapon_angel_F","Weapon_angel_rasta_F","Weapon_egosl_F","Weapon_angel_kitty_F","Weapon_invert_mini_dye_F","Weapon_tippmann_x7_F","Weapon_tippmann_x7_UMP_F"];
	_gun = _guns call BIS_fnc_selectRandom;
	player addWeapon _gun;

	_uniforms = ["Paintball_Uniform_blue_01_B","Paintball_Uniform_desert_01_O","Paintball_Uniform_desert_02_O","Paintball_Uniform_desert_03_I","Paintball_Uniform_Digital_Urban_01_O","Paintball_Uniform_Fun_Camo_01_B","Paintball_Uniform_Hex_Camo_01_I"];
	_uniform = _uniforms call BIS_fnc_selectRandom;
	player forceAddUniform _uniform;


	_headgears = ["Paintball_Mask_01","Paintball_Mask_02","Paintball_Mask_03","Paintball_Mask_04","Paintball_Mask_05","Paintball_Mask_06","H_ALFR_PaintballMsk"];
	_headgear = _headgears call BIS_fnc_selectRandom;
	player addheadgear _headgear;

	for "_i" from 1 to 10 do { player addItemToUniform "140Rnd_PaintBall_blau"; };
};





while{paintballing} do {

	if(paintballhit && !godmode) then {
		godmode = true;
		["set",0] call Client_Fnc_DoHealth;
		_goto = _spawnpoints call BIS_fnc_selectRandom;
		player setpos _goto;
		player setdir random(360);
		_mypos = player getrelpos [random(20),0];
		player setpos _mypos;
		for "_i" from 1 to 2 do { player addItemToUniform "140Rnd_PaintBall_blau"; };
		paintballhit = false;
		sleep 1;
		godmode = false;
	};

	sleep 0.05;

};

_nearPlayers = player nearEntities ["man", 275]; 

format["%1 osiągnął wynik: %2",name player, paintballscore] remoteexec ["systemchat",_nearplayers];

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;
player setunitloadout _paintballsave;
_amount = paintballscore * 5;
paintballscore = 0;
paintballing = false;
paintballhit = false;

[_amount] call Client_fnc_sl_addCash_secure;
[format["Wygrałeś %1 dolarów!",_amount],false] spawn domsg;

if(client_energy == 0) then {
	player enablefatigue true;
	player enablestamina true;
};