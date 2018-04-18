_type = _this select 0;
[player,objNull,1,format ["%1 wyciągnął wyposażenie %2", name player, _type],_type] remoteExec ["server_fnc_jobLog", 2];
if(myjob == "Cop") exitwith {
	[player,objNull,9,format ["%1 wyciągnął wyposażenie %2", name player, _type],_type] remoteExec ["server_fnc_copLog", 2];
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
		player addweapon "cg_baton";
		player addBackpack "AM_PoliceBelt";
		player additemtobackpack "RH_uspm";
		player addweapon "taser";
		for "_i" from 1 to 8 do {player addItemToBackpack "RH_16Rnd_40cal_usp"; };
		for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
		for "_i" from 1 to 2 do {player addItemToBackPack "nonlethal_swing"; };
		{ player additemtobackpack _x; } foreach ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS","CG_Spikes_Collapsed","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","kif_gopro","kif_panicbutton"];

		_level = player getvariable ["cop", 0];
		
		if(female) then { player forceAddUniform "female_police"; player addHeadgear "EF_Fcap_P"; } else { 
			if(_level == 1) then {
				player forceAddUniform "jamie_police1";
				player addVest "jamie_blue";
				player addHeadgear "kif_police_blue";
			};
			if(_level == 2) then {
				player forceAddUniform "jamie_police2";
				player addVest "jamie_blue";
				player addHeadgear "kif_police_blue";
			};
			if(_level == 3) then {
				player forceAddUniform "jamie_police2_2";
				player addVest "jamie_blue";
				player addHeadgear "kif_police_blue";
			};
			if(_level == 4) then {
				player forceAddUniform "jamie_police2_3";
				player addVest "jamie_blue";
				player addHeadgear "kif_police_blue";
			};
			if(_level == 5) then {
				player forceAddUniform "Sheriff_rang1";
				player addVest "kenny_vest_Sheriff";
				player addHeadgear "jamie_pcapgreen";
			};
			if(_level == 6) then {
				player forceAddUniform "police_kevuni7";
				player addVest "kenny_vest_police";
				player addHeadgear "jamie_pcapblack";
			};
			if(_level == 7) then {
				player forceAddUniform "police_kevuni4";
				player addVest "kenny_vest_police";
				player addHeadgear "KMC_Cap_sert";
			};
			if(_level == 8) then {
				player forceAddUniform "silver_lake_statepolice";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 9) then {
				player forceAddUniform "jamie_police3_1";
				player addVest "TAC_V_tacv1LC_P";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 10) then {
				player forceAddUniform "slpd_uni_dzokawhite";
				player addVest "TAC_V_tacv1LC_P";
				player addHeadgear "Campaign_Hat_Dark";
			};
			//jedzonko
			player additemtobackpack "np_water";
			player additemtobackpack "np_beefsoup";
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
		for "_i" from 1 to 10 do {player addItemToBackpack "CG_ATF_Bandage_i";};
		player addItemToBackpack "CG_ATF_First_Aid_Kit_i";
		for "_i" from 1 to 3 do {player addItemToBackpack "30Rnd_556x45_Stanag";};
		player addItemToBackpack "kif_gopro";
		player addItemToBackpack "kif_panicbutton";
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


	_level = player getVariable "ems";

	if(female) then { player forceAddUniform "female_ems"; } else { player forceAddUniform "CUP_U_C_Rescuer_01"; };
	
	player addBackpack "CUP_B_SLA_Medicbag";
	{ player additemtobackpack _x; } foreach ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i","kif_gopro","kif_panicbutton"];

};

//if(typeof currentcursortarget == "Land_buildingsfiredept1") exitwith {
	if(myjob == "Fire") exitwith {
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


	_level = player getVariable "fire";
	player forceAddUniform "CUP_U_C_Fireman_01";
	player addBackpack "TAC_LBT_LEGAB_BK";
	player addgoggles "TAC_SF10";
	player addHeadgear "CUP_H_C_Fireman_Helmet_01";
	{ player additemtobackpack _x; } foreach ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i","kif_gopro","kif_panicbutton"];

	for "_i" from 1 to 10 do {player addItemToBackPack "Manguera_magazine";};
	player addweapon "fireextinguisher";

};

if(myjob == "Mafia") exitwith {
	_level = player getVariable "Mafia";
	player forceadduniform "vvv_traje_mafioso_F_1";
	player addHeadgear "H_Hat_brown";
};
