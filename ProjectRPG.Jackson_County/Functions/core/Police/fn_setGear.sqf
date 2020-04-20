_type = _this select 0;
//[player,objNull,1,format ["%1 hat folgende Ausrüstung %2 gewählt", name player, _type],_type] remoteExec ["server_fnc_jobLog", 2];
if(myjob == "Cop") exitwith {
	//[player,objNull,9,format ["%1 hat folgende Ausrüstung %2 gewählt", name player, _type],_type] remoteExec ["server_fnc_copLog", 2];
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
		[] call client_fnc_ChangePolice;
		player addBackpack "invisible_carryall";
		player linkItem "TRYK_Headset_NV";
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
		[] call client_fnc_ChangePolice;
		player addBackpack "invisible_carryall";
		player linkItem "TRYK_Headset_NV";
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

		player forceAddUniform "TRYK_U_B_BLK_TShirt";
		player addVest "PRPG_Sheriff_W_2_Y";
		player addBackpack "invisible_carryall";
		player additemtobackpack "DDOPP_X26";
		player addweapon "RH_M9";
		for "_i" from 1 to 8 do {player addItemToBackpack "RH_15Rnd_9x19_M9"; };
		for "_i" from 1 to 8 do {player addItemToBackPack "DDOPP_1Rnd_X26"; };
		player addWeapon "hlc_rifle_M4a1carryhandle";
		for "_i" from 1 to 4 do {player addItemToBackpack "hlc_3rnd_556x45_EPR";};
		player addHeadgear "PRPG_Helmet_Sheriff";
		player addgoggles "Mask_M40";
		{ player additemtobackpack _x; } foreach ["NP_PoliceBarrierL","NP_PoliceBarrierS","CG_Spikes_Collapsed","CG_wheel"];
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "tf_anprc152";
		[] call client_fnc_ChangePolice;
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
	[] call client_fnc_ChangePolice;
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
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_Splint";};
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
	[] call client_fnc_ChangePolice;
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
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_Splint";};
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
	[] call client_fnc_ChangePolice;
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
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_Splint";};
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
	[] call client_fnc_ChangePolice;
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
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_Splint";};
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
	[] call client_fnc_ChangePolice;
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
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_Splint";};
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
