hint "Processing";

if(isNil "peltProtection") then { peltProtection = 0; };

if ("NP_kPelt" IN (magazines player)) then {
	peltProtection = peltProtection + 1;
	_chance = random(100);
	player removeitem "np_kpelt";
	["Znalazłem to pudło, przeszukaj je!",false] spawn domsg;
	_luckisaskill = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);
	player disablecollisionwith _luckisaskill;
	_luckisaskill setpos (getposATL player);
	["PeltProcessed"] spawn mav_ttm_fnc_addExp;

	if(_chance < 80) then {
		_rods = ["epic_fishing_rod","platinum_fishing_rod","legendary_fishing_rod","gold_fishing_rod","CUP_NVG_PVS7","ItemGPS"];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		if(_myrod == "CUP_NVG_PVS7") then { _luckisaskill addItemCargoGlobal ["CUP_NVG_PVS7",3]; };
		if(_myrod == "ItemGPS") then { _luckisaskill addItemCargoGlobal ["ItemGPS",3]; };
		if(_myrod find "rod" > -1) then { _luckisaskill addWeaponCargoGlobal [_myrod,1]; } ;
	};
	if(_chance > 85 && _chance <= 87) then {
		_rods = [["CUP_arifle_RPK74M","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"],["CUP_arifle_Sa58V","CUP_30Rnd_Sa58_M"],["CUP_arifle_FNFAL_OSW","CUP_20Rnd_762x51_FNFAL_M"],["arifle_mas_ww2_sten", "30Rnd_mas_ww2_sten"],["arifle_mas_ww2_tommy", "30Rnd_mas_ww2_tommy"],["arifle_mas_ww2_mp40_o", "30Rnd_mas_ww2_mp40"],["brotherhood_1", "30Rnd_mas_ww2_mp40"]];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		_luckisaskill addWeaponCargoGlobal [(_myrod select 0),1];
		_luckisaskill addMagazineCargoGlobal [(_myrod select 1),10];
	};
	if(_chance > 87 && _chance <= 94) then {
		_rods = [["SMG_05_F", "30Rnd_9x21_Mag_SMG_02"],["hgun_PDW2000_F", "30Rnd_9x21_Mag"]];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		_luckisaskill addWeaponCargoGlobal [(_myrod select 0),1];
		_luckisaskill addMagazineCargoGlobal [(_myrod select 1),10];
	};
	if(_chance > 94 && _chance <= 99) then {
		_rods = [["SG553", "30Rnd_556x45_Stanag"],["CUP_arifle_L85A2","CUP_30Rnd_556x45_Stanag"]];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		_luckisaskill addWeaponCargoGlobal [(_myrod select 0),1];
		_luckisaskill addMagazineCargoGlobal [(_myrod select 1),10];
	};
	if(_chance > 99) then {
		_rods = [["CUP_srifle_VSSVintorez", "CUP_10Rnd_9x39_SP5_VSS_M"],["CUP_srifle_M24_wdl", "CUP_5Rnd_762x51_M24"]];
		_myrod = _rods call BIS_FNC_SELECTRANDOM;
		_luckisaskill addWeaponCargoGlobal [(_myrod select 0),1];
		_luckisaskill addMagazineCargoGlobal [(_myrod select 1),10];
	};


	[] spawn { sleep 1; peltprotection = 0; };
	if(peltProtection > 1) then { removeuniform player; removevest player; removebackpack player; peltprotection = 0; };
} else {
	["Nie masz rzeczy które mnie interesują.",false] spawn domsg;
};