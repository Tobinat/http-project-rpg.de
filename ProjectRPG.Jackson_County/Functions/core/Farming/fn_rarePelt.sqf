hint "Processing";

if(isNil "peltProtection") then { peltProtection = 0; };

if ("NP_kPelt" IN (magazines player)) then {
	peltProtection = peltProtection + 1;
	_chance = random(100);
	player removeitem "np_kpelt";
	["Du hast eine Box gefunden öffne sie.",false] spawn domsg;
	["PeltProcessed"] spawn mav_ttm_fnc_addExp;
	if(isNil "shopholder") then {
		shopholder = "plp_ct_woodboxlightsmall" createVehicleLocal [0,0,0];
	};
	player disablecollisionwith shopholder;
	shopholder setpos (getposATL player);

	if(_chance < 80) then {
		_rods = ["epic_fishing_rod","platinum_fishing_rod","legendary_fishing_rod","gold_fishing_rod","ItemGPS"];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		if(_myrod == "ItemGPS") then { shopholder addItemCargoGlobal ["ItemGPS",3]; };
		if(_myrod find "rod" > -1) then { shopholder addWeaponCargoGlobal [_myrod,1]; } ;
	};
	if(_chance > 85 && _chance <= 87) then {
		_rods = [["RH_M9","RH_15Rnd_9x19_M9"],["RH_fn57","RH_20Rnd_57x28_FN"],["RH_g17","RH_17Rnd_9x19_g17"],["RH_g19", "RH_17Rnd_9x19_g17"]];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		shopholder addWeaponCargoGlobal [(_myrod select 0),1];
		shopholder addMagazineCargoGlobal [(_myrod select 1),5];
	};
	if(_chance > 87 && _chance <= 94) then {
		_rods = [["hlc_smg_mp5sd5", "hlc_30Rnd_9x19_B_MP5"],["hlc_smg_mp510", "hlc_30Rnd_10mm_B_MP5"]];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		shopholder addWeaponCargoGlobal [(_myrod select 0),1];
		shopholder addMagazineCargoGlobal [(_myrod select 1),5];
	};
	if(_chance > 94 && _chance <= 99) then {
		_rods = [["RH_Deagleg", "RH_7Rnd_50_AE"],["RH_Deaglem","RH_7Rnd_50_AE"]];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		shopholder addWeaponCargoGlobal [(_myrod select 0),1];
		shopholder addMagazineCargoGlobal [(_myrod select 1),5];
	};
	if(_chance > 99) then {
		_rods = [["hlc_rifleACR_SBR_cliffhanger", "hlc_30rnd_556x45_EPR"],["hlc_rifle_M4a1carryhandle", "hlc_30rnd_556x45_EPR"]];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		shopholder addWeaponCargoGlobal [(_myrod select 0),1];
		shopholder addMagazineCargoGlobal [(_myrod select 1),5];
	};


	[] spawn { sleep 1; peltprotection = 0; };
	if(peltProtection > 1) then { removeuniform player; removevest player; removebackpack player; peltprotection = 0; };
} else {
	["Du hast keine Dinge, die mich interessieren.",false] spawn domsg;
};