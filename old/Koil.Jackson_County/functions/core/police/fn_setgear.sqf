params["_type"];

if(myjob == "Cop") exitwith {

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
		player linkitem "cg_tabletd";

		_level = player getVariable "cop";



		player addweapon "cg_baton";

		player addBackpack "AM_PoliceBelt";

		player additemtobackpack "RH_uspm";

		player addweapon "taser";


		for "_i" from 1 to 8 do {player addItemToBackpack "RH_16Rnd_40cal_usp"; };
		for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
		for "_i" from 1 to 2 do {player addItemToBackPack "nonlethal_swing"; };

		{ player additemtobackpack _x; } foreach ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS","CG_Spikes_Collapsed","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i"];

		if(female) then { 

			
			player addHeadgear "EF_Fcap_P"; 


			if(player getvariable "coplevel" > 7 && player getvariable "coplevel" < 10) then { player forceAddUniform "female_police"; };

			if(player getvariable "coplevel" < 8 && player getvariable "coplevel" > 5) then { player forceAddUniform "female_police3"; };

			if(player getvariable "coplevel" < 5 && player getvariable "coplevel" > 2) then { player forceAddUniform "female_police2"; };

			if(player getvariable "coplevel" < 3) then { player forceAddUniform "female_police1"; };

			if(player getvariable "coplevel" == 5) then { player addGoggles "Balaclava_Blk_humour"; player forceAddUniform "vvv_character_swat_3"; removeHeadgear player; };

			if(player getvariable "coplevel" == 10) then { player forceAddUniform "female_police"; };
	


		} else { 

			player addHeadgear "Campaign_Hat_Dark"; 

			if(player getvariable "coplevel" > 7 && player getvariable "coplevel" < 10) then { player forceAddUniform "silver_lake_statepolice"; };

			if(player getvariable "coplevel" < 8 && player getvariable "coplevel" > 5) then { player forceAddUniform "silver_lake_fbi"; };

			if(player getvariable "coplevel" < 5 && player getvariable "coplevel" > 2) then { player forceAddUniform "silver_lake_police"; };

			if(player getvariable "coplevel" < 3) then { player forceAddUniform "silver_lake_sheriff"; };

			if(player getvariable "coplevel" == 5) then { player addGoggles "Balaclava_Blk_humour"; player forceAddUniform "vvv_character_swat_3"; removeHeadgear player; };

			if(player getvariable "coplevel" == 10) then { player forceAddUniform "vvv_traje_policia_3"; removeHeadgear player; };
							
		};


	} else {

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
		player linkitem "cg_tabletd";
		



		player forceAddUniform "nopixel_character_swat";
		for "_i" from 1 to 3 do {player addItemToUniform "vvv_np_magazine_taser";};
		for "_i" from 1 to 6 do {player addItemToUniform "30Rnd_65x39_caseless_mag";};
		player addVest "TAC_PBDFG2CPL_BK";
		for "_i" from 1 to 5 do {player addItemToVest "vvv_np_magazine_taser";};
		for "_i" from 1 to 5 do {player addItemToVest "30Rnd_65x39_caseless_mag";};
		player addBackpack "AM_PoliceBelt";
		player addGoggles "Balaclava_Blk_Warthog";

		player addItemtobackpack "CUP_hgun_BallisticShield_Armed";
		for "_i" from 1 to 9 do {player addItemToBackpack "CUP_15Rnd_9x19_M9";};	

		{ player additemtobackpack _x; } foreach ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS","CG_Spikes_Collapsed","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i"];
		player addWeapon "arifle_MX_Black_F";
		player addPrimaryWeaponItem "muzzle_snds_H";
		player addPrimaryWeaponItem "optic_Hamr";
		player addWeapon "taser";


		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";

	};
};



if(typeof currentcursortarget == "Land_buildingshospital1") exitwith {

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
	player linkitem "cg_tabletd";
	player linkItem "ItemGPS";


	_level = player getVariable "ems";

	if(female) then { player forceAddUniform "female_ems"; } else { player forceAddUniform "CUP_U_C_Rescuer_01"; };
	
	player addBackpack "TAC_LBT_LEGAB_BK";
	{ player additemtobackpack _x; } foreach ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i"];
 




};

if(typeof currentcursortarget == "Land_buildingsfiredept1") exitwith {
	
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
player linkitem "cg_tabletd";
player linkItem "ItemGPS";


	_level = player getVariable "fire";
	player forceAddUniform "vvv_traje_bombero_2";
	player addBackpack "TAC_LBT_LEGAB_BK";
	player addgoggles "TAC_SF10";
	{ player additemtobackpack _x; } foreach ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i"];

	for "_i" from 1 to 10 do {player addItemToBackPack "Manguera_magazine";};
	player addweapon "fireextinguisher";


};

if(myjob == "Mafia") exitwith {
	_level = player getVariable "Mafia";
	player forceadduniform "vvv_traje_mafioso_F_1";
};


[] SPAWN {
	SLEEP 10;
 	[] spawn client_fnc_tryhangup;
};



