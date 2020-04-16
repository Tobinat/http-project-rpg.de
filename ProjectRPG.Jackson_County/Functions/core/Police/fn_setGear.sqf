_type = _this select 0;
[player,objNull,1,format ["%1 hat folgende Ausrüstung %2 gewählt", name player, _type],_type] remoteExec ["server_fnc_jobLog", 2];
if(myjob == "Cop") exitwith {
	[player,objNull,9,format ["%1 hat folgende Ausrüstung %2 gewählt", name player, _type],_type] remoteExec ["server_fnc_copLog", 2];
    client_gopro = true;
    434 cutRsc ["HUDGoPro","PLAIN"];
	if(_type == "basic") then {
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeHeadgear player;
		removeGoggles player;
		player addWeapon "Binocular";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "tf_anprc152";
		player addBackpack "invisible_carryall";
		player additemtobackpack "RH_m9";
		player addweapon "DDOPP_X26";
		for "_i" from 1 to 8 do {player addItemToBackpack "RH_15Rnd_9x19_M9"; };
		for "_i" from 1 to 8 do {player addItemToBackPack "DDOPP_1Rnd_X26"; };
		for "_i" from 1 to 5 do {player addItemToBackPack "ACE_CableTie"; };
		{ player additemtobackpack _x; } foreach ["NP_PoliceBarrierL","NP_PoliceBarrierS","CG_Spikes_Collapsed","CG_wheel"];

		for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
		_level = player getvariable ["cop", 0];

		if(female) then { player forceAddUniform "female_police"; player addHeadgear "EF_Fcap_P"; } else {
			//Probationary Deputy
			if(_level == 1) then {
				player forceAddUniform "PRPG_P_Deputy1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Beanie_Sheriff";
			};
			//Deputy
			if(_level == 2) then {
				player forceAddUniform "PRPG_Deputy1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Beanie_Sheriff";
			};
			//Senior Deputy
			if(_level == 3) then {
				player forceAddUniform "PRPG_Senior_Deputy1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Beanie_Sheriff";
			};
			//Detective
			if(_level == 4) then {
				player forceAddUniform "PRPG_Detective1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Sergeant
			if(_level == 5) then {
				player forceAddUniform "PRPG_Sergeant1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Senior Sergeant
			if(_level == 6) then {
				player forceAddUniform "PRPG_S_Sergeant1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Lieutenant
			if(_level == 7) then {
				player forceAddUniform "PRPG_Lieutenant1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Captain
			if(_level == 8) then {
				player forceAddUniform "PRPG_Captain1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Division Chief
			if(_level == 9) then {
				player forceAddUniform "PRPG_D_Chief1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Superintendent
			if(_level == 10) then {
				player forceAddUniform "PRPG_Superintendent1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Cap_Sheriff_2";
			};
			//Assistant Sheriff
			if(_level == 11) then {
				player forceAddUniform "PRPG_A_Sheriff1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Cap_Sheriff_2";
			};
			//Sheriff
			if(_level == 12) then {
				player forceAddUniform "PRPG_Sheriff1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Cap_Sheriff_2";
			};
			//Auxiliary Deputy
			if(_level == 13) then {
				player forceAddUniform "PRPG_A_Deputy1";
				player addVest "PRPG_Sheriff_Belt";
				player addHeadgear "PRPG_Cap_Sheriff_2";
			};
			player additemtobackpack "np_water";
			player additemtobackpack "np_beefsoup";
			player addItemToUniform "ACE_Flashlight_XL50";
			player addItemToUniform "ACE_EarPlugs";
		};
	};

	if(_type == "highthreat") then {
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeHeadgear player;
		removeGoggles player;
		player addWeapon "Binocular";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "tf_anprc152";
		player addBackpack "invisible_carryall";
		player additemtobackpack "RH_m9";
		player addweapon "DDOPP_X26";
		for "_i" from 1 to 8 do {player addItemToBackpack "RH_15Rnd_9x19_M9"; };
		for "_i" from 1 to 8 do {player addItemToBackPack "DDOPP_1Rnd_X26"; };
		for "_i" from 1 to 5 do {player addItemToBackPack "ACE_CableTie"; };
		{ player additemtobackpack _x; } foreach ["NP_PoliceBarrierL","NP_PoliceBarrierS","CG_Spikes_Collapsed","CG_wheel"];

		for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
		_level = player getvariable ["cop", 0];

		if(female) then { player forceAddUniform "female_police"; player addHeadgear "EF_Fcap_P"; } else {
			//Probationary Deputy
			if(_level == 1) then {
				player forceAddUniform "PRPG_P_Deputy1";
				player addVest "PRPG_Deputy_W_2_Y";
				player addHeadgear "PRPG_Beanie_Sheriff";
			};
			//Deputy
			if(_level == 2) then {
				player forceAddUniform "PRPG_Deputy1";
				player addVest "PRPG_Deputy_W_2_Y";
				player addHeadgear "PRPG_Beanie_Sheriff";
			};
			//Senior Deputy
			if(_level == 3) then {
				player forceAddUniform "PRPG_Senior_Deputy1";
				player addVest "PRPG_Deputy_W_2_Y";
				player addHeadgear "PRPG_Beanie_Sheriff";
			};
			//Detective
			if(_level == 4) then {
				player forceAddUniform "PRPG_Detective1";
				player addVest "PRPG_Deputy_W_2_Y";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Sergeant
			if(_level == 5) then {
				player forceAddUniform "PRPG_Sergeant1";
				player addVest "PRPG_Deputy_W_2_Y";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Senior Sergeant
			if(_level == 6) then {
				player forceAddUniform "PRPG_S_Sergeant1";
				player addVest "PRPG_Deputy_W_2_Y";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Lieutenant
			if(_level == 7) then {
				player forceAddUniform "PRPG_Lieutenant1";
				player addVest "PRPG_Deputy_W_2_Y";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Captain
			if(_level == 8) then {
				player forceAddUniform "PRPG_Captain1";
				player addVest "PRPG_Sheriff_W_2_Y";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Division Chief
			if(_level == 9) then {
				player forceAddUniform "PRPG_D_Chief1";
				player addVest "PRPG_Sheriff_W_2_Y";
				player addHeadgear "PRPG_Cap_Sheriff_1";
			};
			//Superintendent
			if(_level == 10) then {
				player forceAddUniform "PRPG_Superintendent1";
				player addVest "PRPG_Sheriff_W_2_Y";
				player addHeadgear "PRPG_Cap_Sheriff_2";
			};
			//Assistant Sheriff
			if(_level == 11) then {
				player forceAddUniform "PRPG_A_Sheriff1";
				player addVest "PRPG_Sheriff_W_2_Y";
				player addHeadgear "PRPG_Cap_Sheriff_2";
			};
			//Sheriff
			if(_level == 12) then {
				player forceAddUniform "PRPG_Sheriff1";
				player addVest "PRPG_Sheriff_W_2_Y";
				player addHeadgear "PRPG_Cap_Sheriff_2";
			};
			//Auxiliary Deputy
			if(_level == 13) then {
				player forceAddUniform "PRPG_A_Deputy1";
				player addVest "PRPG_Sheriff_W_2_Y";
				player addHeadgear "PRPG_Cap_Sheriff_2";
			};
			player additemtobackpack "np_water";
			player additemtobackpack "np_beefsoup";
			player addItemToUniform "ACE_Flashlight_XL50";
			player addItemToUniform "ACE_EarPlugs";
		};
	};

	if(_type == "riot") then {
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeHeadgear player;
		removeGoggles player;

		player forceAddUniform "slpd_uni_sert";
		player addVest "slpd_sert_vest";
		for "_i" from 1 to 4 do {player addItemToVest "RH_30Rnd_556x45_M855A1";};
		player addItemToVest "RH_33Rnd_9x19_g18";
		player addBackpack "AM_PoliceBelt";
		player addItemToBackpack "taser";
		for "_i" from 1 to 5 do {player addItemToBackpack "vvv_np_magazine_taser";};
		player addItemToBackpack "np_energydrink";
		for "_i" from 1 to 2 do {player addItemToBackpack "RH_33Rnd_9x19_g18";};
		for "_i" from 1 to 2 do {player addItemToBackpack "CUP_15Rnd_9x19_M9";};
		for "_i" from 1 to 2 do {player addItemToBackpack "CG_Spikes_Collapsed";};
		player addItemToBackpack "CG_wheel";
		for "_i" from 1 to 3 do {player addItemToBackpack "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 2 do {player addItemToBackpack "SUPER_flash";};
		for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
		player addHeadgear "TRYK_H_PASGT_OD";
		player addGoggles "Mask_M40_OD";

		player addWeapon "RH_m4_wdl";
		player addPrimaryWeaponItem "RH_qdss_nt4_tg";
		player addPrimaryWeaponItem "RH_ta01nsn_tan";
		player addWeapon "RH_g18";
		player addHandgunItem "RH_gemtech9";
		player addWeapon "Rangefinder";

		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "tf_anprc152_1";
		player linkItem "ItemGPS";
		player linkItem "TRYK_G_bala_ess_NV";
	};
};


//if(typeof currentcursortarget == "Land_buildingshospital1") exitwith {
if(myjob == "EMS") exitwith {
	if(_type == "basic") then {
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;

	player addWeapon "Binocular";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "Itemwatch";
	player linkitem "tf_anprc152";
	player linkItem "ItemGPS";
	player linkItem "TRYK_Headset_NV";

	_emslevel = player getVariable "ems";

	player addgoggles "Masque_Chirurgical";
	player addVest "PRPG_EMS_Belt";

	player addBackpack "invisible_carryall";
	{ player additemtobackpack _x; } foreach ["NP_PoliceBarrierL","NP_PoliceBarrierS","CG_wheel"];
	player addItemToUniform "ACE_Flashlight_XL50";
	player addItemToUniform "ACE_EarPlugs";
	player addItemToUniform "ACE_surgicalKit";
	for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 6 do {player addItemToBackpack "ACE_tourniquet";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 25 do {player addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 5 do {player addItemToUniform "ACE_bodyBag";};
	for "_i" from 1 to 30 do {player addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 25 do {player addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_atropine";};
	player additemtobackpack "np_water";
	player additemtobackpack "np_beefsoup";

		if(female) then { player forceAddUniform "female_ems";} else {
			//Probationary Firefighter
			if(_emslevel == 1) then {
				player forceAddUniform "PRPG_FD_Uniform_Firefighter1";
				player addHeadgear "PRPG_Cap_ems_2";
			};
			//Firefighter
			if(_emslevel == 2) then {
				player forceAddUniform "PRPG_FD_Uniform_Firefighter1";
				player addHeadgear "PRPG_Cap_ems_2";
			};
			//Lieutenant
			if(_emslevel == 3) then {
				player forceAddUniform "PRPG_FD_Uniform_Lieutenant1";
				player addHeadgear "PRPG_Cap_ems_2";
			};
			//Captain
			if(_emslevel == 4) then {
				player forceAddUniform "PRPG_FD_Uniform_Captain1";
				player addHeadgear "PRPG_Cap_ems_2";
			};
			//Battalion Chief
			if(_emslevel == 5) then {
				player forceAddUniform "PRPG_FD_Uniform_BattalionChief1";
				player addHeadgear "PRPG_Cap_ems_1";
				player addItemToVest "FSGm_ItemMedicBag";
			};
			//Division Chief
			if(_emslevel == 6) then {
				player forceAddUniform "PRPG_FD_Uniform_DivisionChief1";
				player addHeadgear "PRPG_Cap_ems_1";
				player addItemToVest "FSGm_ItemMedicBag";
				player addItemToUniform "ACE_personalAidKit";
			};
			//Assistant Chief
			if(_emslevel == 7) then {
				player forceAddUniform "PRPG_FD_Uniform_AssistantChief1";
				player addHeadgear "PRPG_Cap_ems_1";
				player addItemToVest "FSGm_ItemMedicBag";
				player addItemToUniform "ACE_personalAidKit";
			};
			//Chief
			if(_emslevel == 8) then {
				player forceAddUniform "PRPG_FD_Uniform_Chief1";
				player addHeadgear "PRPG_Cap_ems_1";
				player addItemToVest "FSGm_ItemMedicBag";
				player addItemToUniform "ACE_personalAidKit";
			};
			//Admin
			if(_emslevel == 9) then {
				player forceAddUniform "PRPG_FD_Uniform_Firefighter1";
				player addHeadgear "PRPG_Cap_ems_1";
				player addItemToVest "FSGm_ItemMedicBag";
				player addItemToUniform "ACE_personalAidKit";
			};
		};
	player addItemToUniform "ACE_Flashlight_XL50";
	player addItemToUniform "ACE_EarPlugs";
	player addItemToUniform "ACE_surgicalKit";
	};

	if(_type == "doktor") then {
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;

	player addWeapon "Binocular";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "Itemwatch";
	player linkitem "tf_anprc152";
	player linkItem "ItemGPS";
	player linkItem "TRYK_Headset_NV";

	_level = player getVariable "ems";

	if(female) then { player forceAddUniform "EF_F_DR"; } else { player forceAddUniform "vvv_traje_doctor"; };
	player addgoggles "Masque_Chirurgical";

	player addBackpack "invisible_carryall";
	player addItemToUniform "ACE_Flashlight_XL50";
	player addItemToUniform "ACE_EarPlugs";
	player addItemToUniform "ACE_surgicalKit";
	player addItemToUniform "ACE_personalAidKit";
	player addItemToBackpack "FSGm_ItemMedicBag";
	player addItemToBackpack "adv_aceCPR_AED";
	for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 6 do {player addItemToBackpack "ACE_tourniquet";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 25 do {player addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 5 do {player addItemToUniform "ACE_bodyBag";};
	for "_i" from 1 to 30 do {player addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 25 do {player addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_atropine";};
	player additemtobackpack "np_water";
	player additemtobackpack "np_beefsoup";
	};

	if(_type == "fire") then {
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;

	player addWeapon "Binocular";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "Itemwatch";
	player linkitem "tf_anprc152";
	player linkItem "ItemGPS";
	player linkItem "TRYK_Headset_NV";

	player forceAddUniform "vvv_traje_bombero";
	player addBackpack "invisible_carryall";
	player addgoggles "Mask_M40";
	{ player additemtobackpack _x; } foreach ["NP_PoliceBarrierL","NP_PoliceBarrierS","CG_wheel"];

	for "_i" from 1 to 2 do {player addItemToBackPack "Manguera_magazine";};
	player addweapon "fireextinguisher";
	player additemtobackpack "np_water";
	player additemtobackpack "np_beefsoup";
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 25 do {player addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
	};

	if(_type == "cdc") then {
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;

	player addWeapon "Binocular";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "Itemwatch";
	player linkitem "tf_anprc152";
	player linkItem "ItemGPS";
	player linkItem "TRYK_Headset_NV";

	player forceAddUniform "vvv_hazmat";
	player addBackpack "invisible_carryall";
	player additemtobackpack "np_water";
	player additemtobackpack "np_beefsoup";
	for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 6 do {player addItemToBackpack "ACE_tourniquet";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 25 do {player addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 5 do {player addItemToUniform "ACE_bodyBag";};
	for "_i" from 1 to 30 do {player addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 25 do {player addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_atropine";};
	};

	if(_type == "tac") then {
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;

	player addWeapon "Binocular";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "Itemwatch";
	player linkitem "tf_anprc152";
	player linkItem "ItemGPS";
	player linkItem "TRYK_Headset_NV";

	_emslevel = player getVariable "ems";

	player addgoggles "Masque_Chirurgical";
	player forceAddUniform "PRPG_EMS_Overall_11";
	player addVest "PRPG_EMS_BallistX";
	player addBackpack "invisible_carryall";

	{ player additemtobackpack _x; } foreach ["NP_PoliceBarrierL","NP_PoliceBarrierS","CG_wheel"];
	player addItemToUniform "ACE_Flashlight_XL50";
	player addItemToUniform "ACE_EarPlugs";
	player addItemToUniform "ACE_surgicalKit";
	for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 6 do {player addItemToBackpack "ACE_tourniquet";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 25 do {player addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 5 do {player addItemToUniform "ACE_bodyBag";};
	for "_i" from 1 to 30 do {player addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 25 do {player addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_atropine";};
	player additemtobackpack "np_water";
	player additemtobackpack "np_beefsoup";
	player addItemToUniform "ACE_Flashlight_XL50";
	player addItemToUniform "ACE_EarPlugs";
	player addItemToUniform "ACE_surgicalKit";
	};
};


if(myjob == "Mafia") exitwith {
	_level = player getVariable "Mafia";
	player forceadduniform "vvv_traje_mafioso_F_1";
	player addHeadgear "H_Hat_brown";
};
