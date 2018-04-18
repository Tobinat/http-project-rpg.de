private["_storeList","_addedprice"];
disableSerialization;
_condition = _this select 0;
_storeList = [];
_doughnuts = player getVariable ["doughnutsLevel", 0];
if(_condition == "gunstore") then {

	_gunStorePistols = [
		["cg_hatchet",nil,120,1],
		["cg_pickaxe",nil,120,1],
		["cg_bat",nil,120,1],
		["vvv_fishing_rod",nil,120,1],
		["hgun_mas_ww2_acp_F",nil,3100,1],
		["hgun_Pistol_heavy_01_F",nil,3000,1],
		["hgun_ACPC2_F",nil,3150,1],
		["hgun_mas_ww2_bhp_F",nil,3050,1],
		["sab_1911_handgun",nil,3210,1],
		["CUP_hgun_Compact",nil,3300,1],
		["hgun_mas_ww2_lug_F",nil,3175,1],
		["CUP_hgun_Makarov",nil,3500,1],
		["CUP_hgun_PB6P9",nil,5200,1],
		["RH_g17",nil,4600,1],
		["CUP_hgun_M9",nil,6350,1],	
		["CUP_hgun_TaurusTracker455",nil,6500,1],
		["hgun_mas_ww2_tt33_F",nil,4300,1],
		["RH_uspm",nil,7800,1],
		["RH_kimber",nil,9600,1],
		["RH_fn57",nil,7400,1],
		["RH_fnp45",nil,6800,1],
		["taser",nil,2200,1]
	];	
	_gunStorePistols = _gunStorePistols;
	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};

if(_condition == "rarefish") then {

		_gunStorePistols = [

			//weapons
			["gold_fishing_rod",nil,6,1],
			["platinum_fishing_rod",nil,10,1],
			["epic_fishing_rod",nil,15,1],
			["legendary_fishing_rod",nil,18,1],

			//nvg
			["CUP_NVG_PVS7",nil,40,3],

			//clothes
			["U_B_Wetsuit",nil,1,3,1],
			["cg_horsehead",nil,12,3,5],
			["cg_horsehead_2",nil,12,3,5],
			["cg_horsehead_blk",nil,12,3,5],
			["cg_horsehead_pnk",nil,12,3,5],

			//hats
			["BL_eimer_hat",nil,12,3,5],
			["BL_mask2_hat",nil,12,3,5],
			["BL_us_hat",nil,12,3,5],
			["BL_party_hat",nil,12,3,5],

			["vvv_VAMPIRO_hat",nil,12,3,5],
			["vvv_alien24_hat",nil,12,3,5],
			["vvv_Anonymous_hat",nil,12,3,5],
			["vvv_azgt_hat",nil,12,3,5],
			["vvv_azteca_hat",nil,12,3,5],
			["vvv_bane_hat",nil,12,3,5],
			["vvv_bolsa_hat",nil,12,3,5],
			["vvv_cerdo_hat",nil,12,3,5],
			["vvv_hockey_hat",nil,12,3,5],
			["vvv_mono_hat",nil,12,3,5],
			["vvv_monor_hat",nil,12,3,5],
			["vvv_SkullMask_hat",nil,12,3,5],
			["vvv_slasher_hat",nil,12,3,5],

			["H_ShrekMask",nil,12,3,5],
			["H_MickeyMask",nil,12,3,5],
			["H_UltronMask",nil,12,3,5],
			["H_PatriotMask",nil,12,3,5],
			["H_AntmanMask",nil,12,3,5],
			["H_BobaMask",nil,12,3,5],
			["H_AugustusMask",nil,12,3,5],
			["H_RAAMMask",nil,12,3,5],
			["H_HulkMask",nil,12,3,5],
			["H_VenomMask",nil,12,3,5],
			["H_SpongebobMask",nil,12,3,5],
			["H_SquidwardMask",nil,12,3,5],
			["H_JasonMask",nil,12,3,5],
			["H_DeadpoolMask",nil,12,3,5],
			["H_GingerbreadMask",nil,12,3,5],
			["H_KermitMask",nil,12,3,5],
			["H_SpidermanMask",nil,12,3,5],
			["H_StarFoxMask",nil,12,3,5],
			["H_BatmanMask",nil,12,3,5],
			["H_ScarecrowMask",nil,12,3,5],
			["H_GuyFawkesMask",nil,12,3,5],
			["H_WashingtonMask",nil,12,3,5],
			["H_LincolnMask",nil,12,3,5],
			["H_GrantMask",nil,12,3,5],
			["H_NixonMask",nil,12,3,5],
			["H_ClintonMask",nil,12,3,5],
			["H_BushMask",nil,12,3,5],
			["H_ObamaMask",nil,12,3,5],
			["H_FranklinMask",nil,12,3,5],

			["Masque_Alien1",nil,12,3,5],
			["Masque_Anonymous",nil,12,3,5],
			["Masque_Chains",nil,12,3,5],
			["Payday_GeneralO",nil,12,3,5],
			["Casque_Moto",nil,12,3,5],
			["Masque_Clinton",nil,12,3,5],
			["Masque_speedRunner",nil,12,3,5],
			["Masque_Unic",nil,12,3,5],
			["Masque_Aubrey",nil,12,3,5],
			["Masque_Bonnie",nil,12,3,5],
			["Masque_Bush",nil,12,3,5],
			["Masque_Mempo",nil,12,3,5],
			["Masque_Lincoln",nil,12,3,5],
			["Masque_Wolfv2",nil,12,3,5],
			["Masque_archNemesis",nil,12,3,5],
			["Masque_Arnold",nil,12,3,5],
			["Masque_Chuck",nil,12,3,5],
			["Masque_Clover",nil,12,3,5],
			["Masque_Fish",nil,12,3,5],
			["Masque_Hockey",nil,12,3,5],
			["Masque_Metalhead",nil,12,3,5],
			["Masque_Religieuse",nil,12,3,5],
			["Masque_Smiley",nil,12,3,5],
			["Masque_Santa",nil,12,3,5],
			["Masque_Momie",nil,12,3,5],
			["Masque_Optimiste",nil,12,3,5],
			["Masque_forceAlpha",nil,12,3,5],
			["Masque_GdG",nil,12,3,5],
			["Masque_Gombo",nil,12,3,5],
			["Masque_Lion",nil,12,3,5],
			["Masque_Orc",nil,12,3,5],
			["Masque_Mark",nil,12,3,5],
			["Masque_Macrilleuse",nil,12,3,5],
			["Masque_Hoxton",nil,12,3,5],
			["Masque_Incendiaire",nil,12,3,5],
			["Masque_Dallas",nil,12,3,5],

			["Gorb_Santa_White",nil,12,3,5],
			["Gorb_Santa_Tan",nil,12,3,5],
			["Gorb_Santa_Black",nil,12,3,5],
			["Gorb_Reindeer",nil,12,3,5],
			["Gorb_Snowman",nil,12,3,5],
			["Gorb_Antler",nil,12,3,5],
			["Gorb_Elf",nil,12,3,5],
			["Gorb_SantaHat",nil,12,3,5],
			["Gorb_SantaHat_Green",nil,12,3,5],
			["Gorb_Penguin",nil,12,3,5],
			["Gorb_Gingerbread1",nil,12,3,5],
			["Gorb_KnittedHat1",nil,12,3,5],
			["Gorb_KnittedHat2",nil,12,3,5],
			["Gorb_KnittedHat3",nil,12,3,5],
			["Gorb_KnittedHat4",nil,12,3,5],
			["Gorb_ElfMask1",nil,12,3,5],
			["Gorb_ElfMask2",nil,12,3,5],
			["Gorb_ElfMask3",nil,12,3,5],
			["Gorb_PuddingHat",nil,12,3,5],
			["Gorb_FestiveHat1",nil,12,3,5],
			["Gorb_FestiveHat2",nil,12,3,5],
			["Gorb_FestiveHat3",nil,12,3,5],
			["Gorb_FestiveHat4",nil,12,3,5],
			["Gorb_FestiveHat5",nil,12,3,5],
			["Gorb_FestiveHat6",nil,12,3,5],
			["Gorb_FestiveHat7",nil,12,3,5],
			["Gorb_FestiveHat8",nil,12,3,5],
			["Gorb_PlaidHat1",nil,12,3,5],
			["Gorb_PlaidHat2",nil,12,3,5],
			["Gorb_PlaidHat3",nil,12,3,5],
			["Gorb_PlaidHat4",nil,12,3,5],
			["Gorb_TurkeyMask1",nil,12,3,5],
			["Gorb_TurkeyMask2",nil,12,3,5],
			["Gorb_TurkeyMask3",nil,12,3,5],
			["Gorb_UglyMrsClaus1",nil,12,3,5],
			["Gorb_UglyMrsClaus2",nil,12,3,5],
			["Gorb_UglyMrsClaus3",nil,12,3,5],
			["Gorb_AngryGingerbread1",nil,12,3,5],
			["Gorb_AngryGingerbread2",nil,12,3,5],
			["Gorb_AngryGingerbread3",nil,12,3,5],
			["Gorb_PuddingMask1",nil,12,3,5],
			["Gorb_PuddingMask2",nil,12,3,5],
			["Gorb_RoughSantaClaus1",nil,12,3,5],
			["Gorb_RoughSantaClaus2",nil,12,3,5],
			["Gorb_RoughSantaClaus3",nil,12,3,5],
			["Gorb_AngryGingerbreadSwirl1",nil,12,3,5],
			["Gorb_AngryGingerbreadSwirl2",nil,12,3,5],
			["Gorb_CoolElfMask1",nil,12,3,5],
			["Gorb_CoolElfMask2",nil,12,3,5],
			["Gorb_CoolElfMask3",nil,12,3,5],
			["Gorb_TreeMask1",nil,12,3,5],
			["Gorb_TreeMask2",nil,12,3,5],
			["Gorb_TreeMask3",nil,12,3,5],
			["Gorb_TreeMask4",nil,12,3,5],
			["Gorb_TreeMask5",nil,12,3,5],
			["Gorb_TreeMask6",nil,12,3,5],
			["Gorb_MrsClaus1",nil,12,3,5],
			["Gorb_MrsClaus2",nil,12,3,5],
			["Gorb_MrsClaus3",nil,12,3,5],
			["Gorb_HolidayBaseballHat1",nil,12,3,5],
			["Gorb_HolidayBaseballHat2",nil,12,3,5],
			["Gorb_HolidayBaseballHat3",nil,12,3,5],
			["Gorb_HolidayBaseballHat4",nil,12,3,5],
			["Gorb_HolidayBaseballHat5",nil,12,3,5],
			["Gorb_HolidayBaseballHat6",nil,12,3,5],
			["Gorb_HolidayBaseballHat7",nil,12,3,5],
			["Gorb_HolidayBaseballHat8",nil,12,3,5]

		];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};


if(_condition == "clothing") then {

	_clothing = [
		//maseczki
        ["Masque_Hoxton",nil,20,3,5],
        ["Masque_Wolfv2",nil,20,3,5],
        ["H_ObamaMask",nil,02,3,5],
        ["Masque_Chains",nil,20,3,5],
        ["vvv_Anonymous_hat",nil,20,3,5],
		
		["U_B_Wetsuit",nil,2000,3,1],
		["CUP_O_TKI_Khet_Jeans_01",nil,50,3,1],
		["CUP_O_TKI_Khet_Jeans_02",nil,50,3,1],
		["CUP_O_TKI_Khet_Jeans_03",nil,50,3,1],
		["CUP_O_TKI_Khet_Jeans_04",nil,50,3,1],

		["CUP_U_C_Citizen_01",nil,50,3,1],
		["CUP_U_C_Citizen_02",nil,50,3,1],
		["CUP_U_C_Citizen_03",nil,50,3,1],
		["CUP_U_C_Citizen_04",nil,50,3,1],

		["CUP_O_TKI_Khet_Partug_01",nil,75,3,1],
		["CUP_O_TKI_Khet_Partug_02",nil,75,3,1],
		["CUP_O_TKI_Khet_Partug_03",nil,75,3,1],
		["CUP_O_TKI_Khet_Partug_04",nil,75,3,1],
		["CUP_O_TKI_Khet_Partug_05",nil,75,3,1],

		["CUP_U_C_Profiteer_01",nil,75,3,1],
		["CUP_U_C_Profiteer_02",nil,75,3,1],
		["CUP_U_C_Profiteer_03",nil,75,3,1],
		["CUP_U_C_Profiteer_04",nil,75,3,1],

		["CUP_U_I_GUE_Anorak_03",nil,100,3,1],
		["CUP_U_I_GUE_Anorak_02",nil,100,3,1],
        
        ["EF_HM_B1",nil,100,3,1],
        ["EF_HM_BL1",nil,100,3,1],
        ["EF_HM_OD1",nil,100,3,1],
        ["EF_HM_SG1",nil,100,3,1],
        ["EF_HM_PP1",nil,100,3,1],
        ["EF_HM_B2",nil,100,3,1],
        ["EF_HM_BL2",nil,100,3,1],
        ["EF_HM_OD2",nil,100,3,1],
        ["EF_HM_SG2",nil,100,3,1],
        ["EF_HM_PP2",nil,100,3,1],
        ["EF_MKJKT",nil,100,3,1],
        ["EF_MKJKT2",nil,100,3,1],
        ["EF_HM_LPBPS",nil,100,3,1],
        ["EF_HM_LPBP",nil,100,3,1],
        ["EF_HM_LPBR",nil,100,3,1],
        ["EF_HM_LPBW",nil,100,3,1],
        ["EF_HM_LPB",nil,100,3,1],
        ["EF_HM_LPBL",nil,100,3,1],
        ["EF_HM_LPBPS2",nil,100,3,1],
        ["EF_HM_LPBP2",nil,100,3,1],
        ["EF_HM_LPBR2",nil,100,3,1],
        ["EF_HM_LPBW2",nil,100,3,1],
        ["EF_HM_LPB2",nil,100,3,1],
        ["EF_HM_LPBL2",nil,100,3,1],

		["TRYK_U_B_PCUGs_BLK_R",nil,100,3,1],
		["TRYK_U_B_PCUGs_gry_R",nil,100,3,1],
		["TRYK_U_B_PCUGs_OD_R",nil,100,3,1],
		["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,100,3,1],
		["TRYK_shirts_DENIM_BK",nil,100,3,1],
		["TRYK_shirts_DENIM_BL",nil,100,3,1],
		["TRYK_shirts_DENIM_BWH",nil,100,3,1],
		["TRYK_shirts_DENIM_R",nil,100,3,1],
		["TRYK_shirts_DENIM_RED2",nil,100,3,1],
		["TRYK_shirts_DENIM_WHB",nil,100,3,1],
		["TRYK_shirts_DENIM_ylb",nil,100,3,1],
		["TRYK_U_denim_hood_blk",nil,100,3,1],
		["TRYK_U_taki_G_BLK",nil,100,3,1],
		["TRYK_U_taki_G_COY",nil,100,3,1],
		
		
		["PAT_nigga",nil,500,3,1],
		["PAT_nigga2_1",nil,500,3,1],
		["PAT_nigga3",nil,500,3,1],
		["PAT_nigga2_3",nil,500,3,1],
		["PAT_nigga6",nil,500,3,1],
		["PAT_nigga2_6",nil,500,3,1],
		["PAT_nigga2",nil,500,3,1],
		["PAT_nigga2_2",nil,500,3,1],
		["PAT_nigga4",nil,500,3,1],
		["PAT_nigga2_4",nil,500,3,1],
		["PAT_nigga5",nil,500,3,1],
		["PAT_nigga2_5",nil,500,3,1],

		["EF_suit_1",nil,100,3,1],
		["EF_suit_2",nil,100,3,1],
		["EF_suit_3",nil,100,3,1],
		["EF_suit_4",nil,100,3,1],
		["EF_suit_5",nil,100,3,1],
		["EF_suit_6",nil,100,3,1],
        
        ["EF_M_jkt2",nil,500,3,1],
        ["EF_M_jkt22",nil,500,3,1],
        ["EF_M_jkt1",nil,500,3,1],
        ["EF_M_jkt2_2",nil,500,3,1],
        ["EF_M_jkt2_22",nil,500,3,1],
        ["EF_M_jkt1_2",nil,500,3,1],
        ["EF_M_jkt2_3",nil,500,3,1],
        ["EF_M_jkt2_32",nil,500,3,1],
        ["EF_M_jkt1_3",nil,500,3,1],
        ["EF_M_jkt32_2",nil,500,3,1],
        ["EF_M_jkt32_2",nil,500,3,1],
        ["EF_M_jkt2_4",nil,500,3,1],
        ["EF_M_jkt32",nil,500,3,1],
        ["EF_M_jkt4",nil,500,3,1],
        
        ["EF_MX1",nil,1000,3,1],

		["CUP_U_C_Worker_01",nil,100,3,1],
		["CUP_U_C_Worker_02",nil,100,3,1],
		["CUP_U_C_Worker_03",nil,100,3,1],
		["CUP_U_C_Worker_04",nil,100,3,1],

		["B_Uniform_worker_l",nil,100,3,1],
		["R_Uniform_worker_l",nil,100,3,1],
		["G_Uniform_worker_l",nil,100,3,1],

		["vvv_character_rock1",nil,200,3,1],
		["vvv_character_rock2",nil,200,3,1],
		["vvv_character_rock3",nil,200,3,1],
		["vvv_character_rock4",nil,200,3,1],
		
		["vvv_ropa_comun_f_1",nil,200,3,1],
		["vvv_ropa_comun_f_2",nil,200,3,1],
		["vvv_ropa_comun_f_3",nil,200,3,1],
		["vvv_ropa_comun_f_4",nil,200,3,1],
		["vvv_ropa_comun_f_5",nil,200,3,1],
		["vvv_ropa_comun_f_6",nil,200,3,1],
		["vvv_ropa_comun_f_7",nil,200,3,1],
		["vvv_ropa_comun_f_8",nil,200,3,1],
		["vvv_ropa_comun_f_9",nil,200,3,1],
		["vvv_ropa_comun_f_10",nil,200,3,1],

		["KAEL_SUITS_BR_F14",nil,200,3,1],
		["KAEL_SUITS_BR_F12",nil,200,3,1],
		["KAEL_SUITS_BR_F3",nil,200,3,1],
		["KAEL_SUITS_BR_F",nil,200,3,1],
		["KAEL_SUITS_BR_F35",nil,200,3,1],
		["KAEL_SUITS_BR_F34",nil,200,3,1],

		["vvv_traje_motox_02",nil,200,3,1],
		["vvv_traje_motox_02_2",nil,200,3,1],
		["vvv_traje_motox_02_3",nil,200,3,1],
		["vvv_traje_motox_02_4",nil,200,3,1],
		["vvv_traje_motox_02_5",nil,200,3,1],
		["vvv_traje_motox_02_6",nil,200,3,1],
		["vvv_traje_motox_02_7",nil,200,3,1],
		["vvv_traje_motox_02_8",nil,200,3,1],

		["vvv_character_sport","Sports Gear 1",200,3,1],
		["vvv_character_sport_2","Sports Gear 2",200,3,1],
		["vvv_character_sport_3","Sports Gear 3",200,3,1],
		["vvv_character_sport_4","Sports Gear 4",200,3,1],
		["vvv_character_sport_5","Sports Gear 5",200,3,1],
		["vvv_character_sport_6","Sports Gear 6",200,3,1],
		["vvv_character_sport_7","Sports Gear 7",200,3,1],
		["vvv_character_sport_8","Sports Gear 8",200,3,1],
		["vvv_character_sport_9","Sports Gear 9",200,3,1],
		["vvv_character_sport_10","Sports Gear 10",200,3,1],
		["vvv_character_sport_11","Sports Gear 11",200,3,1],
		["vvv_character_sport_12","Sports Gear 12",200,3,1],
		["vvv_character_sport_13","Sports Gear 13",200,3,1],

		["CUP_U_C_Villager_01",nil,200,3,1],
		["CUP_U_C_Villager_02",nil,200,3,1],
		["CUP_U_C_Villager_03",nil,200,3,1],
		["CUP_U_C_Villager_04",nil,200,3,1],

		["eaglkes_wwi_ind_pilot_cloth",nil,200,3,1],
		["eaglkes_wwi_ger_pilot_cloth",nil,200,3,1],

		["CUP_U_C_Priest_01",nil,200,3,1],

		["TRYK_HRP_USMC",nil,200,3,1],
		["TRYK_HRP_khk",nil,200,3,1],
		["U_mas_ww2_B_CombatUniform_us",nil,200,3,1],

		["CUP_U_C_Mechanic_01",nil,300,3,1],
		["CUP_U_C_Mechanic_02",nil,300,3,1],
		["CUP_U_C_Mechanic_03",nil,300,3,1],

		["CUP_U_O_SLA_Overalls_Pilot",nil,300,3,1],
		["CUP_U_O_SLA_Overalls_Tank",nil,300,3,1],

		["CUP_U_O_SLA_Green",nil,300,3,1],
		["CUP_U_O_SLA_MixedCamo",nil,300,3,1],

		["CUP_U_C_Suit_01",nil,300,3,1],
		["CUP_U_C_Suit_02",nil,300,3,1],

		["np_shirt_1",nil,300,3,1],
		["np_shirt_2",nil,300,3,1],
		["np_shirt_3",nil,300,3,1],
		["np_shirt_4",nil,300,3,1],
		["np_shirt_5",nil,300,3,1],
		["np_shirt_6",nil,300,3,1],
		["np_shirt_7",nil,300,3,1],
		["np_shirt_8",nil,300,3,1],

		["np_traje_test",nil,400,3,1],
		["np_traje_test2",nil,400,3,1],
		["np_traje_test3",nil,400,3,1],
		["np_traje_test4",nil,400,3,1],
		["np_traje_test5",nil,400,3,1],
		["np_traje_test6",nil,400,3,1],
		["np_traje_test7",nil,400,3,1],
		["np_traje_test8",nil,400,3,1],
		["np_traje_test9",nil,400,3,1],
		["np_traje_test10",nil,400,3,1],


		["vvv_traje_jackoy",nil,400,3,1],
		["vvv_traje_jackoy2",nil,400,3,1],
		["vvv_traje_jackoy3",nil,400,3,1],
		["vvv_traje_jackoy4",nil,400,3,1],
		["vvv_traje_jackoy5",nil,400,3,1],
		["vvv_traje_jackoy6",nil,400,3,1],
		["vvv_traje_jackoy7",nil,400,3,1],
		["vvv_traje_jackoy8",nil,400,3,1],

		["vvv_character_agente_47",nil,500,3,1],
		["vvv_character_agente_472",nil,500,3,1],
		["vvv_character_agente_474",nil,500,3,1],
		["vvv_character_agente_475",nil,500,3,1],


		["vvv_traje_ejecutivo_1",nil,800,3,1],
		["vvv_character_messi",nil,800,3,1],
		["vvv_traje_romano",nil,800,3,1],

		["CUP_U_O_SLA_Officer_Suit",nil,900,3,1],

		["TRYK_U_hood_nc",nil,550,3,1],
		["TRYK_U_hood_mc",nil,550,3,1],
		["TRYK_hoodie_Wood",nil,550,3,1],
		["TRYK_hoodie_FR",nil,550,3,1],
		["TRYK_U_pad_hood_tan",nil,550,3,1],
		["TRYK_U_pad_hood_Cl",nil,550,3,1],
		["TRYK_U_pad_hood_odBK",nil,550,3,1],
		["TRYK_U_nohoodPcu_gry",nil,550,3,1],
		["TRYK_U_pad_hood_BKT2",nil,550,3,1],
		["TRYK_U_pad_hood_Blk",nil,550,3,1],
		["TRYK_U_pad_hood_Blod",nil,550,3,1],
		["TRYK_shirts_TAN_PAD_YEL",nil,550,3,1],
		["TRYK_shirts_OD_PAD_YEL",nil,550,3,1],
		["TRYK_shirts_BLK_PAD_YEL",nil,550,3,1],
		["TRYK_shirts_PAD_YEL",nil,550,3,1],
		["TRYK_shirts_TAN_PAD_RED2",nil,550,3,1],
		["TRYK_shirts_OD_PAD_RED2",nil,550,3,1],
		["TRYK_shirts_BLK_PAD_RED2",nil,550,3,1],
		["TRYK_shirts_TAN_PAD",nil,550,3,1],
		["TRYK_shirts_OD_PAD",nil,550,3,1],
		["TRYK_shirts_BLK_PAD",nil,550,3,1],
		["TRYK_shirts_TAN_PAD_BLU3",nil,550,3,1],
		["TRYK_shirts_OD_PAD_BLU3",nil,550,3,1],
		["TRYK_shirts_BLK_PAD_BLU3",nil,550,3,1],
		["TRYK_shirts_TAN_PAD_BLW",nil,550,3,1],
		["TRYK_shirts_OD_PAD_BLW",nil,550,3,1],
		["TRYK_shirts_BLK_PAD_BLW",nil,550,3,1],
		["TRYK_shirts_TAN_PAD_BL",nil,550,3,1],
		["TRYK_shirts_TAN_PAD_BK",nil,550,3,1],
		["TRYK_shirts_BLK_PAD_BK",nil,550,3,1],
		["TRYK_shirts_DENIM_WHB_Sleeve",nil,550,3,1],
		["TRYK_shirts_DENIM_WH_Sleeve",nil,550,3,1],
		["TRYK_shirts_DENIM_RED2_Sleeve",nil,550,3,1],
		["TRYK_shirts_DENIM_R_Sleeve",nil,550,3,1],
		["TRYK_shirts_DENIM_BWH_Sleeve",nil,550,3,1],
		["TRYK_shirts_DENIM_BL_Sleeve",nil,550,3,1],
		["TRYK_shirts_DENIM_BK_Sleeve",nil,550,3,1],
		["TRYK_shirts_DENIM_ylb_Sleeve",nil,550,3,1],
		["TRYK_shirts_DENIM_od_Sleeve",nil,550,3,1],
		["TRYK_shirts_DENIM_ylb",nil,550,3,1],
		["TRYK_shirts_DENIM_WHB",nil,550,3,1],
		["TRYK_shirts_DENIM_WH",nil,550,3,1],
		["TRYK_shirts_DENIM_RED2",nil,550,3,1],
		["TRYK_shirts_DENIM_R",nil,550,3,1],
		["TRYK_shirts_DENIM_od",nil,550,3,1],
		["TRYK_shirts_DENIM_BWH",nil,550,3,1],
		["TRYK_shirts_DENIM_BL",nil,550,3,1],

		//femenism is the best



		["EF_FEM_2U",nil,100,3,1],
		["EF_FEM_2BK",nil,100,3,1],
		["EF_FEM_3_2",nil,100,3,1],
		["EF_FEM_3_3LPBPS",nil,100,3,1],
		["EF_FEM_3_3LPBP",nil,100,3,1],
		["EF_FEM_3_3LPBR",nil,100,3,1],
		["EF_FEM_3_3LPBW",nil,100,3,1],
		["EF_FEM_3_3LPB",nil,100,3,1],
		["EF_FEM_3_3LPBL",nil,100,3,1],
		["EF_FEM_3_3LPBPS2",nil,100,3,1],
		["EF_FEM_3_3LPBP2",nil,100,3,1],
		["EF_FEM_3_3LPBR2",nil,100,3,1],
		["EF_FEM_3_3LPBW2",nil,100,3,1],
		["EF_FEM_3",nil,100,3,1],
		["EF_FEM_4",nil,100,3,1],
		["EF_FEM_4_2LPBPS",nil,100,3,1],
		["EF_FEM_4_2LPBP",nil,100,3,1],
		["EF_FEM_4_2LPBR",nil,100,3,1],
		["EF_FEM_4_2LPBW",nil,100,3,1],
		["EF_FEM_4_2LPB",nil,100,3,1],
		["EF_FEM_4_2LPBPS2",nil,100,3,1],
		["EF_FEM_4_2LPBP2",nil,100,3,1],
		["EF_FEM_5",nil,100,3,1],
		["EF_FEM_6",nil,100,3,1],
		["EF_FEM_3_42",nil,100,3,1],
        
        ["EF_FEM_3_3B",nil,100,3,1],
        ["EF_FEM_3_3BL",nil,100,3,1],
        ["EF_FEM_3_3OD",nil,100,3,1],
        ["EF_FEM_3_3SG",nil,100,3,1],
        ["EF_FEM_3_3PP",nil,100,3,1],
        ["EF_FEM_3_3B2",nil,100,3,1],
        ["EF_FEM_3_3BL2",nil,100,3,1],
        ["EF_FEM_3_3OD2",nil,100,3,1],
        ["EF_FEM_3_3SG2",nil,100,3,1],
        ["EF_FEM_3_3PP2",nil,100,3,1],
        ["EF_FEM_3A",nil,100,3,1],
        ["EF_FEM_3A_2",nil,100,3,1],
        ["EF_FEM_3A2_2",nil,100,3,1],
        ["EF_FEM_3_3LPB2",nil,100,3,1],
        ["EF_FEM_3_3LPBL2",nil,100,3,1],
        ["EF_FEM_3_75",nil,100,3,1],
        ["EF_FEM_3_75R",nil,100,3,1],
        ["EF_FEM_3_76",nil,100,3,1],
        ["EF_FEM_3_76R",nil,100,3,1],
        ["EF_FEM_3_4",nil,100,3,1],
        ["EF_FEM_3_73",nil,100,3,1],
        ["EF_FEM_3_73R",nil,100,3,1],
        ["EF_FEM_3_74",nil,100,3,1],
        ["EF_FEM_3_74R",nil,100,3,1],
        ["EF_FEM_3_7",nil,100,3,1],
        ["EF_FEM_3_7R",nil,100,3,1],
        ["EF_FEM_3_72",nil,100,3,1],
        ["EF_FEM_3_72R",nil,100,3,1],
        ["EF_FEM_3_5B",nil,100,3,1],
        ["EF_FEM_3_5BP",nil,100,3,1],
        ["EF_FEM_3_5VP",nil,100,3,1],
        ["EF_FEM_3_5RC",nil,100,3,1],
        ["EF_FEM_3_5W",nil,100,3,1],
        ["EF_FEM_3_52",nil,100,3,1],
        ["EF_FEM_3_52VP",nil,100,3,1],
        ["EF_FEM_3_52RC",nil,100,3,1],
        ["EF_FEM_3_52W",nil,100,3,1],
        ["EF_FEM_4_2B",nil,100,3,1],
        ["EF_FEM_4_2BL",nil,100,3,1],
        ["EF_FEM_4_2OD",nil,100,3,1],
        ["EF_FEM_4_2SG",nil,100,3,1],
        ["EF_FEM_4_2PP",nil,100,3,1],
        ["EF_FEM_4_2B2",nil,100,3,1],
        ["EF_FEM_4_2BL2",nil,100,3,1],
        ["EF_FEM_4_2OD2",nil,100,3,1],
        ["EF_FEM_4_2SG2",nil,100,3,1],
        ["EF_FEM_4_2PP2",nil,100,3,1],
        ["EF_FEM_4A",nil,100,3,1],
        ["EF_FEM_4A_2",nil,100,3,1],
        ["EF_FEM_4A2",nil,100,3,1],
        ["EF_FEM_4A2_2",nil,100,3,1],
        ["EF_FEM_4_2LPBL",nil,100,3,1],
        ["EF_FEM_4_2LPBR2",nil,100,3,1],
        ["EF_FEM_4_2LPBW2",nil,100,3,1],
        ["EF_FEM_4_2LPB2",nil,100,3,1],
        ["EF_FEM_4_2LPBL2",nil,100,3,1],
        ["EF_FEM_4_75",nil,100,3,1],
        ["EF_FEM_4_75R",nil,100,3,1],
        ["EF_FEM_4_76",nil,100,3,1],
        ["EF_FEM_4_76R",nil,100,3,1],
        ["EF_FEM_4_73",nil,100,3,1],
        ["EF_FEM_4_73R",nil,100,3,1],
        ["EF_FEM_4_74",nil,100,3,1],
        ["EF_FEM_4_74R",nil,100,3,1],
        ["EF_FEM_4_7",nil,100,3,1],
        ["EF_FEM_4_7R",nil,100,3,1],
        ["EF_FEM_4_72",nil,100,3,1],
        ["EF_FEM_4_72R",nil,100,3,1],
        ["EF_FEM_4_4B",nil,100,3,1],
        ["EF_FEM_4_4BP",nil,100,3,1],
        ["EF_FEM_4_4VP",nil,100,3,1],
        ["EF_FEM_4_4RC",nil,100,3,1],
        ["EF_FEM_4_42",nil,100,3,1],
        ["EF_FEM_4_42BP",nil,100,3,1],
        ["EF_FEM_4_42VP",nil,100,3,1],
        ["EF_FEM_4_42RC",nil,100,3,1],
        ["EF_FEM_4_42W",nil,100,3,1],
        ["EF_FEM_62",nil,100,3,1],
        
		["I_FEM_AAF_long",nil,150,3,1],
		["O_FEM_CSAT_Long",nil,150,3,1],
		["B_FEM_NATO_long",nil,150,3,1],

		["vvv_elena_fisher",nil,200,3,1],
		["vvv_elena_fisher2",nil,200,3,1],
		["vvv_elena_fisher3",nil,200,3,1],
		["vvv_elena_fisher4",nil,200,3,1],
		["vvv_elena_fisher5",nil,200,3,1],
		["vvv_elena_fisher6",nil,200,3,1],
		["vvv_elena_fisher7",nil,200,3,1],
		["vvv_elena_fisher8",nil,200,3,1],
		["vvv_elena_fisher9",nil,200,3,1],
		["vvv_elena_fisher10",nil,200,3,1],
		["vvv_elena_fisher11",nil,200,3,1],
		["vvv_elena_fisher12",nil,200,3,1],
		["vvv_elena_fisher13",nil,200,3,1],
		["vvv_elena_fisher14",nil,200,3,1],
		["vvv_elena_fisher15",nil,200,3,1],
		["vvv_elena_fisher16",nil,200,3,1],
		
		["vvv_traje_motox_02_7",nil,500,3,1],
		["vvv_traje_motox_02",nil,500,3,1],
		["vvv_traje_motox_02_8",nil,500,3,1],
		["vvv_traje_motox_02_4",nil,500,3,1],
		["vvv_traje_motox_02_5",nil,500,3,1],
		["vvv_traje_motox_02_2",nil,500,3,1],
		["sons_1",nil,1000,3,1],
		["Sons_10",nil,1000,3,1],
		["sons_2to4",nil,1000,3,1],
		["Sons_5",nil,1000,3,1],
		["Sons_6",nil,1000,3,1],
		["Sons_7",nil,1000,3,1],
		["Sons_8",nil,1000,3,1],
		["Sons_9",nil,1000,3,1],
		["brotherhood_1",nil,1000,3,3],
		["brotherhood_10",nil,1000,3,3],
		["brotherhood_2to4",nil,1000,3,3],
		["brotherhood_5",nil,1000,3,3],
		["brotherhood_6",nil,1000,3,3],
		["brotherhood_7",nil,1000,3,3],
		["brotherhood_8",nil,1000,3,3],
		["brotherhood_9",nil,1000,3,3],
		["acj_chaleco_motero",nil,2000,3,3],

		["U_Cloth01_FS",nil,200,3,1],
		["vvv_character_wandelina",nil,200,3,1],
		["vvv_character_jennifer",nil,200,3,1]
	];

	{
		_storeList pushback _x;
	} foreach _clothing;

};


if(_condition == "backpack") then {

	_clothing = [
		["TAC_BP_KAR_B",nil,50,4,2],
		["TAC_BP_KAR_L",nil,50,4,2],
		["TAC_BP_KAR_R",nil,50,4,2],
		["CUP_B_SLA_Medicbag",nil,50,4,2],
		["TAC_BP_Butt_B",nil,60,4,2],
		["TAC_BP_Butt_Khaki",nil,60,4,2],
		["TAC_BP_Butt_OD",nil,60,4,2],
		["TRYK_B_Alicepack",nil,500,4,2],
		["PATHuK_belt",nil,500,4,2],
		["sl_backpack_bergen_pokemon_black",nil,500,4,2],
		["sl_backpack_bergen_pokemon_white",nil,500,4,2],
		["sl_backpack_bergen_pokemon_red",nil,500,4,2],
		["sl_backpack_bergen_murica",nil,500,4,2],
		["CUP_B_HikingPack_Civ",nil,750,4,2]
	];

	{
		_storeList pushback _x;
	} foreach _clothing;

};



if(_condition == "veststore") then {

	_gunStoreVests = [

	];

	{
		_storeList pushback _x;
	} foreach _gunStoreVests;

};


if(_condition == "mcdonalds") then {

	_mcdonalds = [
		["np_happymeal",nil,8,3],
		["np_bigmac",nil,8,3],
		["np_mchicken",nil,8,3],
		["np_cheeseburger",nil,8,3],
		["np_hamburger",nil,8,3]
	];

	{
		_storeList pushback _x;
	} foreach _mcdonalds;

};


if(_condition == "hotdogs") then {

	_hotdogStore = [
		["np_hotdog",nil,8,3],
		["np_mhotdog",nil,8,3],
		["np_kmhotdog",nil,8,3],
		["np_bbqhotdog",nil,8,3],
		["np_cheesehotdog",nil,8,3]
	];

	{
		_storeList pushback _x;
	} foreach _hotdogStore;

};

if(_condition == "general") then {

	_generalGroceries = [

		["cg_tabletd",nil,50,3],
		["cg_atf_bandage_i",nil,45,3],	
		["CG_ATF_First_Aid_Kit_i",nil,200,3],
		["kif_gopro",nil,300,3],		
		["CG_wheel",nil,150,3],
		["kif_nitro",nil,800,3],
		["ItemMap",nil,1,3],
		["ItemCompass",nil,10,3],
		["Itemwatch",nil,5,3],
		["np_groceries",nil,75,3],
		["np_ugroceries",nil,35,3],
		["np_sausage",nil,2,3],
		["np_chickensoup",nil,2,3],
		["np_peasoup",nil,2,3],
		["np_psoup",nil,2,3],
		["np_beefsoup",nil,2,3],
		["np_lettucesoup",nil,2,3],
		["np_tuna",nil,2,3]
	];

	{
		_storeList pushback _x;
	} foreach _generalGroceries;

};


if(_condition == "donuts") then {

	_donuts = [
		["np_chdonuts",nil,8,3],
		["np_jdonuts",nil,8,3],
		["np_cdonuts",nil,8,3],
		["np_donuts",nil,8,3]
	];

	{
		_storeList pushback _x;
	} foreach _donuts;

};

if(_condition == "pizza") then {

	_pizza = [
		["np_hpizza",nil,14,3],
		["np_mpizza",nil,14,3],
		["np_cpizza",nil,14,3],
		["np_spizza",nil,14,3],
		["np_vpizza",nil,14,3]
	];

	{
		_storeList pushback _x;
	} foreach _pizza;

};




if(_condition IN ["general","hotdogs","donuts","pizza","mcdonalds","drinks"]) then {

	_drinks = [
		["np_water",nil,4,3],
		["np_coke",nil,4,3],
		["np_drpepper",nil,4,3],
		["np_energydrink",nil,4,3]
	];

	{
		_storeList pushback _x;
	} foreach _drinks;

};


if(_condition IN ["bar"]) then {

	_drinks = [
		["np_water",nil,4,3],
		["np_coke",nil,4,3],
		["np_drpepper",nil,4,3],
		["np_beer",nil,4,3],
		["plp_bo_inv_BottleTequila",nil,5,3],
		["plp_bo_inv_BottleLiqOrange",nil,10,3],
		["plp_bo_inv_BottleLiqCream",nil,10,3],
		["plp_bo_inv_BottleBitters",nil,12,3],
		["plp_bo_inv_BottleGin",nil,8,3],
		["plp_bo_inv_BottleBlueCorazol",nil,7,3],
		["np_energydrink",nil,4,3]
	];

	{
		_storeList pushback _x;
	} foreach _drinks;

};


if(_condition == "head") then {

	_gunStorePistols = [


			["CUP_H_NAPA_Fedora",nil,120,3,5],
			["ALE_H_Cowboy_White",nil,120,3,5],
			["ALE_H_Cowboy_Black",nil,120,3,5],
			["ALE_H_Cowboy_Brown",nil,120,3,5],


			["ALE_H_NewEra_Monster",nil,120,3,5],
			["ALE_H_NewEra_Rouge",nil,120,3,5],
			["ALE_H_NewEra_Superman",nil,12,3,5],
			["ALE_H_NewEra_Cyan",nil,120,3,5],
			["ALE_H_NewEra_Black",nil,120,3,5],
			["ALE_H_NewEra_Lakers",nil,120,3,5],
			["ALE_H_NewEra_Redsox",nil,120,3,5],
						
			["H_Beret_blk",nil,120,3,5],
			["H_Booniehat_khk",nil,120,3,5],
			["H_Booniehat_oli",nil,120,3,5],
			["H_Booniehat_tan",nil,120,3,5],

			["TRYK_H_woolhat_WH",nil,120,3,5],
			["TRYK_H_woolhat_tan",nil,120,3,5],
			["TRYK_H_woolhat_CW",nil,120,3,5],
			["TRYK_H_woolhat_cu",nil,120,3,5],
			["TRYK_H_woolhat_br",nil,120,3,5],
			["TRYK_H_woolhat",nil,120,3,5],
			["TRYK_r_cap_tan_Glasses",nil,120,3,5],
			["TRYK_r_cap_od_Glasses",nil,120,3,5],
			["TRYK_r_cap_blk_Glasses",nil,120,3,5],
			["TRYK_R_CAP_OD_US",nil,120,3,5],
			["TRYK_R_CAP_TAN",nil,120,3,5],
			["TRYK_R_CAP_BLK",nil,120,3,5],
			["TRYK_H_pakol2",nil,120,3,5],
			["TRYK_H_headsetcap",nil,120,3,5],
			["TRYK_H_headsetcap_od",nil,120,3,5],
			["TRYK_H_headsetcap_blk",nil,120,3,5],
			["TRYK_H_headsetcap_blk_Glasses",nil,120,3,5],
			["TRYK_H_headsetcap_Glasses",nil,120,3,5],
			["TRYK_H_LHS_HEL_G",nil,120,3,5],
			["TRYK_H_Bandana_wig_g",nil,120,3,5],
			["TRYK_H_Bandana_wig",nil,120,3,5],
			["TRYK_H_Bandana_H",nil,120,3,5],
			["TRYK_Kio_Balaclava",nil,120,3,5],

			["H_Cap_tan",nil,120,3,5],
			["H_Cap_blk",nil,120,3,5],
			["H_Cap_blk_CMMG",nil,120,3,5],
			["H_Cap_brn_SPECOPS",nil,120,3,5],
			["H_Cap_tan_specops_US",nil,120,3,5],
			["H_Cap_khaki_specops_UK",nil,120,3,5],
			["H_Cap_grn",nil,120,3,5],
			["H_Cap_grn_BI",nil,120,3,5],
			["H_Cap_blk_Raven",nil,120,3,5],
			["H_Cap_blk_ION",nil,120,3,5],
			
			["Gorb_AngryGingerbread1",nil,120,3,5],
			["Gorb_AngryGingerbreadSwirl2",nil,120,3,5],
			["CUP_H_C_Beanie_01",nil,120,3,5],
			["CUP_H_C_Beanie_02",nil,120,3,5],
			["CUP_H_ChDKZ_Beanie",nil,120,3,5],
			["H_Beret_blk",nil,120,3,5],
			["CUP_H_C_Beret_01",nil,120,3,5],
			["CUP_H_C_Beret_02",nil,120,3,5],
			["H_BobaMask",nil,120,3,5],
			["BL_eimer_Hat",nil,120,3,5],
			
			["CUP_H_PMC_Cap_Burberry",nil,120,3,5],
			["CUP_H_PMC_Cap_Grey",nil,120,3,5],
			["CUP_H_PMC_Cap_Back_Grey",nil,120,3,5],
			["CUP_H_PMC_Cap_Back_Burberry",nil,120,3,5],
			["Gorb_PuddingHat",nil,120,3,5],
			["Gorb_FestiveHat6",nil,120,3,5],
			["Gorb_FestiveHat8",nil,120,3,5],
			["BL_mask_Hat",nil,120,3,5],
			["Gorb_HolidayBaseballHat1",nil,120,3,5],
			["Gorb_HolidayBaseballHat2",nil,120,3,5],
			
			["Gorb_HolidayBaseballHat3",nil,120,3,5],
			["Gorb_HolidayBaseballHat4",nil,120,3,5],
			["Gorb_HolidayBaseballHat5",nil,120,3,5],
			["Gorb_HolidayBaseballHat6",nil,120,3,5],
			["Gorb_PlaidHat1",nil,120,3,5],
			["Gorb_PlaidHat2",nil,120,3,5],
			["Gorb_PlaidHat3",nil,120,3,5],
			["Gorb_PlaidHat4",nil,120,3,5],
			["cg_horsehead",nil,120,3,5],
			["cg_horsehead_2",nil,120,3,5],
			
			["cg_horsehead_blk",nil,120,3,5],
			["cg_horsehead_pnk",nil,120,3,5],
			["H_Hat_brown",nil,120,3,5],
			["H_Hat_tan",nil,120,3,5],
			["H_Hat_camo",nil,120,3,5],
			["H_Hat_checker",nil,120,3,5],
			["H_KermitMask",nil,120,3,5],
			["sab_wwiplanes_ger_cap",nil,120,3,5],
			["sab_wwiplanes_fr_cap",nil,120,3,5],
			["CUP_H_SLA_TankerHelmet",nil,120,3,5],
			
			
			["nigga_platok",nil,500,3,5],
			["nigga_platok4",nil,500,3,5],
			["nigga_platok3",nil,500,3,5],
			["nigga_platok6",nil,500,3,5],
			["nigga_platok5",nil,500,3,5],
			["nigga_platok2",nil,500,3,5],
			["nigga_gog",nil,500,3,5],
			["nigga_platok7",nil,500,3,5],
			["nigga_platok10",nil,500,3,5],
			["nigga_platok9",nil,500,3,5],
			["nigga_platok12",nil,500,3,5],
			["nigga_platok11",nil,500,3,5],
			["nigga_platok8",nil,500,3,5],
			
			
			
			["pat_cap4_nigga",nil,250,3,5],
			["pat_cap4_nigga_back_low",nil,250,3,5],
			["pat_cap4_front",nil,250,3,5],
			["pat_cap10_front",nil,250,3,5],
			["pat_cap4_nigga_back",nil,250,3,5],
			["pat_cap4_back",nil,250,3,5],
			["pat_cap10_back",nil,250,3,5],
			["pat_cap6_nigga",nil,250,3,5],
			["pat_cap6_nigga_back_low",nil,250,3,5],
			["pat_cap6_front",nil,250,3,5],
			["pat_durag_white",nil,250,3,5],
			["pat_durag_black",nil,250,3,5],
			["pat_cap2_nigga",nil,250,3,5],
			["pat_cap2_nigga_back_low",nil,250,3,5],
			["pat_cap2_front",nil,250,3,5],
			["pat_cap5_nigg",nil,250,3,5],
			["pat_cap5_front",nil,250,3,5],
			["pat_cap5_back",nil,250,3,5],
			["pat_cap_nigga",nil,250,3,5],
			["pat_cap_nigga_back_low",nil,250,3,5],
			
			
			["acj_casco_ammerica",nil,120,3,5],
			["acj_casco_calavera",nil,120,3,5],
			["acj_casco_camo",nil,120,3,5],
			["acj_casco_espider",nil,120,3,5],
			["acj_casco_germani",nil,120,3,5],
			["acj_casco_gris",nil,120,3,5],
			["acj_casco_negro",nil,120,3,5],
			["acj_casco_rojo",nil,120,3,5],
			["Casque_Moto",nil,120,3,5],
			["H_RacingHelmet_1_white_F",nil,120,3,5],

			//head items
			["EF_Long_wig_B",nil,120,3,5],
			["EF_Long_wig_BL",nil,120,3,5],
			["EF_Long_wig_BW",nil,120,3,5],
			["EF_Long_wig_GL",nil,120,3,5],
			["EF_Punk_wig_B",nil,120,3,5],
			["EF_Punk_wig_BL",nil,120,3,5],
			["EF_Punk_wig_BW",nil,120,3,5],
			["EF_Punk_wig_GL",nil,120,3,5]

	];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};

if(_condition == "doughnuts_general") then {
	
	//Doughnuts
	_additional = [];
	if(_doughnuts > 0) then {
		_ret = [
			["nopixel_character_agente_47",nil,300,3,1],
			["vvv_traje_ejecutivo_1",nil,300,3,1],
			["vvv_traje_dallas",nil,300,3,1],
			["NP_traje_test",nil,300,3,1],
			["NP_traje_test10",nil,300,3,1],
			["sab_wwiplanes_pilot_holster",nil,300,3,1],
			["CUP_B_ACRPara_m95",nil,600,4,2],
			["CUP_B_GER_Pack_Flecktarn",nil,400,4,2],
			["B_Bergen_tna_F",nil,3500,4,2],
			["B_Carryall_ghex_F",nil,200,4,2],
			["H_BobaMask",nil,300,3,5],
			["acj_casco_ammerica",nil,300,3,5],
			["CUP_H_TKI_Lungee_Open_02",nil,300,3,5],
			["CUP_H_USA_Cap",nil,300,3,5],
			["CUP_H_TKI_Lungee_01",nil,300,3,5],
			["acj_casco_calavera",nil,300,3,5],
			["vvv_azgt_hat",nil,300,3,5],
			["vvv_azteca_hat",nil,300,3,5],
			["vvv_bolsa_hat",nil,300,3,5],
			["vvv_monor_hat",nil,300,3,5],
			["H_VenomMask",nil,300,3,5],
			["CUP_H_TKI_Lungee_Open_01",nil,300,3,5],
			["CUP_H_TKI_Lungee_Open_04",nil,300,3,5],
			["CUP_H_TKI_Lungee_01",nil,300,3,5],
			["CUP_H_TKI_Lungee_02",nil,300,3,5]
		];
		_additional = _additional + _ret;
	};
	if(_doughnuts > 1) then {
		_ret = [
		    ["NP_traje_test5",nil,300,3,1],
			["vvv_traje_jackoy7",nil,300,3,1],
			["vvv_character_jennifer",nil,300,3,1],
			["vvv_character_messi",nil,300,3,1],
			["vvv_character_alma",nil,300,3,1],
			["vvv_traje_motox_02_3",nil,300,3,1],
			["vvv_traje_motox_02_7",nil,300,3,1],
			["vvv_traje_motox_02_8",nil,300,3,1],
			["vvv_traje_motox_02_2",nil,300,3,1],
			["vvv_character_agente_473",nil,300,3,1],
			["CUP_U_B_FR_Officer",nil,300,3,1],
			["B_Uniform_survivor2_l",nil,300,3,1],
			["G_Uniform_survivor5_l",nil,300,3,1],
			["TRYK_U_B_ARO1_CBR_R_CombatUniform",nil,300,3,1],
			["U_mas_ww2_O_CombatUniform_ger",nil,300,3,1],
			["B_Carryall_ghex_F",nil,300,4,2],
			["vvv_mono_hat",nil,300,3,5],
			["vvv_SkullMask_hat",nil,300,3,5],
			["vvv_slasher_hat",nil,300,3,5],
			["H_ALFR_OVERKILL_I",nil,10000,3,5]
		];
		_additional = _additional + _ret;
	};
	if(_doughnuts > 2) then {
		_ret = [
		    ["vvv_traje_romano",nil,300,3,1],
			["vvv_character_funcionario_2",nil,300,3,1],
			["vvv_character_wandelina",nil,300,3,1],
			["vvv_character_wandelina_2",nil,300,3,1],
			["CUP_U_B_CZ_WDL_TShirt",nil,300,3,1],
			["CUP_B_USMC_Navy_Blue",nil,300,3,1],
			["U_I_C_Soldier_Bandit_2_F",nil,300,3,1],
			["CUP_V_OI_TKI_Jacket1_04",nil,300,3,1],
			["CUP_V_OI_TKI_Jacket1_06",nil,300,3,1],
			["CUP_V_OI_TKI_Jacket1_05",nil,300,3,1],
			["CUP_V_OI_TKI_Jacket1_03",nil,300,3,1],
			["CUP_V_O_TK_OfficerBelt",nil,300,3,1],
			["U_C_man_sport_2_F",nil,300,3,1],
			["vvv_hazmat",nil,1200,3,1],
			["KAEL_SUITS_BR_F16",nil,300,3,1],
			["TAC_BAL_BK",nil,300,4,2],
			["Masque_zeus",nil,300,3,5],
			["H_ALFR_Metal_Facemask_gry",nil,1000,3,5],
			["H_ALFR_Metal_Facemask_oli",nil,1000,3,5],
			["H_ALFR_Metal_Facemask_blk",nil,1000,3,5],
			["H_ALFR_OVERKILL_II",nil,10000,3,5],
			["Gorb_TreeMask1",nil,300,3,5],
			["Gorb_TreeMask2",nil,300,3,5],
			["Gorb_TreeMask3",nil,300,3,5],
			["TRYK_Kio_Balaclava",nil,300,3,5],
			["TRYK_ESS_CAP",nil,300,3,5]
		];
		_additional = _additional + _ret;
	};
	if(_doughnuts > 3) then {
		_ret = [
		    ["CUP_U_B_BAF_MTP_S6_UnRolled",nil,300,3,1],
			["CUP_U_B_BAF_MTP_Tshirt",nil,300,3,1],
			["CUP_U_O_CHDKZ_Bardak",nil,300,3,1],
			["CUP_U_O_CHDKZ_Commander",nil,300,3,1],
			["CUP_U_C_Policeman_01",nil,1000,3,1],
			["TAC_LBT_LEGAB2_BK",nil,500,4,2],
			["Masque_zeus",nil,300,3,5],
			["Paintball_Mask_02",nil,300,3,5],
			["Paintball_Mask_05",nil,300,3,5],
			["H_ALFR_Sheep_Mask",nil,300,3,5],
			["H_ALFR_Heist_Mask_3",nil,300,3,5],
			["H_PatriotMask",nil,500,3,5],
			["H_ALFR_OVERKILL_III",nil,10000,3,5],
			["Masque_Fish",nil,300,3,5],
			["Masque_Gombo",nil,300,3,5],
			["vvv_VAMPIRO_hat",nil,300,3,5],
			["Masque_Hockey",nil,300,3,5],
			["Masque_Optimiste",nil,300,3,5],
			["Masque_Smiley",nil,300,3,5]
		];
		_additional = _additional + _ret;
	};
	if(_doughnuts > 4) then {
		_ret = [
		    ["CUP_U_B_GER_Flecktarn_2",nil,300,3,1],
			["CUP_U_B_GER_Tropentarn_2",nil,300,3,1],
			["CUP_U_I_Ghillie_Top",nil,6000,3,1],
			["U_B_Protagonist_VR",nil,2000,3,1],
			["CUP_U_C_Labcoat_02",nil,300,3,1],
			["CUP_U_I_GUE_Flecktarn3",nil,300,3,1],
			["vvv_character_batman",nil,1000,3,1],
			["CUP_V_I_Guerilla_Jacket",nil,1000,3,1],
			["V_mas_ww2_vest_gerB",nil,1000,3,1],
			["B_Bergen_tna_F",nil,1500,4,2],
			["BL_mask2_Hat",nil,300,3,5],
			["CUP_H_C_Policecap_01",nil,500,3,5],
			["Gorb_RoughSantaClaus1",nil,300,3,5],
			["CUP_H_SLA_OfficerCap",nil,300,3,5],
			["H_ALFR_Metal_Gasmask_RU_fuckyou",nil,500,3,5],
			["H_mas_ww2_cap_ger",nil,500,3,5],
			["H_mas_ww2_beret_rus",nil,500,3,5],
			["H_mas_ww2_cap_rus",nil,500,3,5],
			["H_mas_ww2_beret_ger",nil,500,3,5],
			["H_ALFR_OVERKILL_IV",nil,10000,3,5]
		];
		_additional = _additional + _ret;
	};
	{
		_storeList pushback _x;
	} foreach _additional;
};
if(_condition == "doughnuts_gun") then {
	
	//Doughnuts
	_additional = [];
	if(_doughnuts > 0) then {
		_ret = [
			["hgun_Pistol_heavy_01_F",nil,5000,1],
			["muzzle_snds_acp",nil,2000,3],
			["optic_MRD",nil,1000,3],
			["RH_m9",nil,4000,1],
			["RH_m9qd",nil,1000,3],
			["RH_m9c",nil,4000,3],
			["CUP_hgun_Phantom",nil,4000,1],
			["RH_fn57_t",nil,5000,1]
		];
		_additional = _additional + _ret;
	};
	if(_doughnuts > 1) then {
		_ret = [
		    ["RH_python",nil,6000,1],
			["RH_fnp45",nil,5000,1],
			["RH_gemtech45",nil,2000,3],
			["RH_docter",nil,1000,3],
			["RH_fnp45t",nil,5000,1],
			["RH_g18",nil,6000,1]
		];
		_additional = _additional + _ret;
	};
	if(_doughnuts > 2) then {
		_ret = [
		    ["RH_g19",nil,5000,1],
			["RH_g19t",nil,5000,1],
			["RH_tec9",nil,7000,1],
			["RH_tecsd",nil,2000,3],
			["RH_kimber",nil,5000,1]
		];
		_additional = _additional + _ret;
	};
	if(_doughnuts > 3) then {
		_ret = [
		    ["CUP_hgun_MicroUzi",nil,7000,1],
			["CUP_muzzle_snds_MicroUzi",nil,2000,3],
			["CUP_hgun_TaurusTracker455_gold",nil,6000,1],
			["RH_bull",nil,6000,1],
			["hgun_mas_ww2_bhp_F",nil,7000,1],
			["hgun_mas_ww2_lug_F",nil,7000,1],
			["sab_mauser96_handgun",nil,7000,1],
			["arifle_mas_ww2_sten",nil,30000,1],
			["CUP_hgun_SA61",nil,7000,1]
		];
		_additional = _additional + _ret;
	};
	if(_doughnuts > 4) then {
		_ret = [
		    ["RH_deagle",nil,10000,1],
			["RH_Deagleg",nil,15000,1],
			["hgun_PDW2000_F",nil,20000,1],
			["arifle_mas_ww2_ppsh",nil,25000,1],
			["arifle_mas_ww2_mp40",nil,30000,1],
			["arifle_mas_ww2_mp44",nil,30000,1],
			["arifle_mas_ww2_tommy",nil,30000,1],
			["RH_mk2",nil,5000,1],
			["SMG_01_F",nil,30000,1],
			["CUP_smg_bizon",nil,25000,1],
			["CUP_srifle_CZ550",nil,50000,1]
		];
		_additional = _additional + _ret;
	};
	{
		_storeList pushback _x;
	} foreach _additional;
};


if(_condition == "glasses") then {

	_gunStorePistols = [

		["G_Shades_Black",nil,120,3,4],
		["G_Shades_Blue",nil,120,3,4],
		["G_Sport_Blackred",nil,120,3,4],
		["G_Sport_Checkered",nil,120,3,4],
		["G_Sport_Blackyellow",nil,120,3,4],
		["G_Sport_BlackWhite",nil,120,3,4],
		["G_Squares",nil,120,3,4],
		["G_Aviator",nil,120,3,4],
		["G_Lady_Mirror",nil,120,3,4],
		["G_Lady_Dark",nil,120,3,4],
		["G_Lady_Blue",nil,120,3,4],
		["G_Lowprofile",nil,120,3,4],
		["G_Combat",nil,120,3,4],

		["EF_ACC1",nil,120,3,4],
		["EF_ACC2",nil,120,3,4],
		["EF_ACC3",nil,120,3,4],
		["EF_AC1",nil,120,3,4],
		["EF_AC2",nil,120,3,4],
		["EF_AC3",nil,120,3,4],
		["SFG_Tac_smallBeardB",nil,120,3,4],
		["SFG_Tac_smallBeardD",nil,120,3,4],
		["SFG_Tac_smallBeardG",nil,120,3,4],
		["SFG_Tac_smallBeardO",nil,120,3,4],
		["SFG_Tac_BeardB",nil,120,3,4],
		["SFG_Tac_BeardD",nil,120,3,4],
		["SFG_Tac_BeardG",nil,120,3,4],
		["SFG_Tac_BeardO",nil,120,3,4],
		["SFG_Tac_chinlessbB",nil,120,3,4],
		["SFG_Tac_chinlessbD",nil,120,3,4],
		["SFG_Tac_chinlessbG",nil,120,3,4],
		["SFG_Tac_chinlessbO",nil,120,3,4],
		["SFG_Tac_moustacheB",nil,120,3,4],
		["SFG_Tac_moustacheD",nil,120,3,4],
		["SFG_Tac_moustacheG",nil,120,3,4],
		["SFG_Tac_moustacheO",nil,120,3,4],
		["SFG_Tac_ChopsB",nil,120,3,4],
		["SFG_Tac_ChopsD",nil,120,3,4],
		["SFG_Tac_ChopsG",nil,120,3,4],
		["SFG_Tac_ChopsO",nil,120,3,4],
		["TRYK_Beard_BK",nil,120,3,4],
		["TRYK_Beard",nil,120,3,4],
		["TRYK_Beard_BW",nil,120,3,4],
		["TRYK_Beard_Gr",nil,120,3,4],
		["TRYK_Beard_BK2",nil,120,3,4],
		["TRYK_Beard2",nil,120,3,4],
		["TRYK_Beard_BW2",nil,120,3,4],
		["TRYK_Beard_Gr2",nil,120,3,4],
		["TRYK_Beard_BK3",nil,120,3,4],
		["TRYK_Beard3",nil,120,3,4],
		["TRYK_Beard_BW3",nil,120,3,4],
		["TRYK_Beard_Gr3",nil,120,3,4],
		["TRYK_Beard_BK4",nil,120,3,4],
		["TRYK_Beard4",nil,120,3,4],
		["TRYK_Beard_BW4",nil,120,3,4],
		["TRYK_Beard_Gr4",nil,120,3,4]

	];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};








_display = findDisplay 9999;
_list = _display displayCtrl 9001;

lbClear _list;

{

	_class = _x select 0;
	_item = [_class] call client_fnc_fetchItemType;
	_price = _x select 2;
	_type = _x select 3;
	_classtype = _x select 4;
	if(_doughnuts == 3) then { _price = _price * (1 - 0.05); };
	if(_doughnuts == 4) then { _price = _price * (1 - 0.10); };
	if(_doughnuts == 5) then { _price = _price * (1 - 0.15); };
	if(isNil "_classtype") then { _classType = 0; };

	if(_condition == "rarefish") then {
		_list lbAdd format["%2: %1", _item select 1, _price];
	} else {
		_addedprice = (_price / 100) * taxRate;
		_addedprice = round (_addedprice);
		_price = _addedprice + _price;
		_list lbAdd format["$%2 (Tax %%3): %1", _item select 1, _price,taxRate];
	};

	_list lbSetdata [(lbSize _list)-1, str([_class,_item select 1, _price,_type,_classtype,_addedprice])];
	_list lbSetPicture [(lbSize _list)-1,_item select 2];

	if(_condition == "gunstore" || _condition == "doughnuts_gun") then {
		if(_type == 1) then {
			_magPrice = 50;
			_addedprice = (_price / 100) * taxRate;
			_addedprice = round (_addedprice);
			_price = _addedprice + _price;
			_magazines = getArray (configFile / "CfgWeapons" / _class / "magazines");
			_magazine = _magazines select 0;
			_item = [_magazine] call client_fnc_fetchItemType;
			_list lbAdd format["$%2 (Tax %%3): %1",_item select 1, _magPrice,taxRate];
			_list lbSetdata [(lbSize _list)-1, str([_magazine,_item select 1, _magPrice,2,0,_addedprice])];
			_list lbSetPicture [(lbSize _list)-1,_item select 2];
		};
	};
} foreach _storeList;



lbSetCurSel [9001, 0];