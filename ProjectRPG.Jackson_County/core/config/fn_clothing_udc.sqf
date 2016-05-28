#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Shop UDC"];


_ret = [];
switch (_filter) do
{	

	//Uniforms
	case 0: 
	{
		_ret =
		[
			["U_B_Wetsuit","Taucheranzug",50],
			["EOD_Uniform",nil,15],
			["prpg_recruit1",nil,15],
			["prpg_traffic1",nil,15],
			["prpg_officer1",nil,15],
			["prpg_Detective1",nil,15],
			["TCG_PDDTC","Detective Zivil",50],	
			["prpg_Sergeant1",nil,15],
			["prpg_lieutenant1",nil,15],
			["prpg_captain1",nil,15],
			["prpg_commander1",nil,15],
			["prpg_achief1",nil,15],
			["prpg_chief1",nil,15],
			["doc_uniform_co",nil,15],
			["doc_uniform_sco",nil,15],
			["doc_uniform_sgt",nil,15],
			["doc_uniform_cmd",nil,15],
			["prpg_Justice1",nil,15],
			["prpg_marshal1",nil,15],
			["LS_Marshal_Jacket",nil,15],
			["LS_Marshal_Jacket3",nil,15],
			["CG_SO1",nil,15], 
			["CG_SO2",nil,15],
			["CG_SO3",nil,15],
			["herpSERT1",nil,15],
			["herpSERT2",nil,15],
			["herpSERT3",nil,15],
			["CG_SERT1",nil,15],
			["CG_SERT2",nil,15],
			["CG_SERT3",nil,15],
			["CG_SERT4",nil,15],
			["CG_SERT5",nil,15],
			["CG_SERT6",nil,15],
			["CG_SERT7",nil,15],	
			["crt_uniform",nil,15],
			["TRYK_U_B_BLK","Schwarzer Overall",15],
			["RF_ASU_2",nil,15],
			["RF_WING_3",nil,15],
			["sheriff_uniform_new","Presse Sheriff",50], 
			["U_007_US_Police_officer","Presse Polizei",50],
			["KAEL_SUITS_BR_Judge",nil,15],
			["TRYK_U_B_BLKBLK_R_CombatUniform",nil,25],
			["TRYK_U_B_BLKBLK_CombatUniform",nil,25],
			["TRYK_U_B_3CD_Delta_BDUTshirt",nil,25],
			["TRYK_U_B_3CD_Delta_BDU",nil,25],
			["TRYK_U_B_3CD_BLK_BDUTshirt2",nil,25],
			["TRYK_U_B_3CD_BLK_BDUTshirt",nil,25],
			["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,25],
			["TRYK_U_B_BLKTAN_CombatUniform",nil,25],
			["TRYK_U_B_ACUTshirt",nil,25],
			["TRYK_U_B_ACU",nil,25],
			["TRYK_B_TRYK_UCP_T",nil,25],
			["TRYK_U_B_OD_OD_R_CombatUniform",nil,25]
		];
	};

	
	//Hats
	case 1:
	{
		_ret =
		[
			["firehat",nil,5],
			["EOD9_HELMET",nil,5],
			["TRYK_R_CAP_BLK",nil,5],
			["corrections_cap",nil,5],
			["H_007_policecap","Police Hat",5],
			["max_police_Hat","Police Hat",5],
			["max_sheriff_Hat","Sheriff Hat",5],
			["Campaign_Hat_Light",nil,5],
			["Campaign_Hat_Tan",nil,5],
			["Campaign_Hat_Washedout",nil,5],
			["Campaign_Hat_Dark",nil,5],
			["A3L_sargehat",nil,5],
			["TCG_pdav_helmet","Pilot Helmet",5],
			["ACE_helmet",nil,5],
			["wing_helmet",nil,5],
			["TRYK_H_DELTAHELM_NV","Negotiator Helmet",5],
			["A3L_policehelmet","Police Hat",5],
			["TRYK_H_PASGT_BLK","SERT Standard Helmet",5],
			["CG_sert_H7",nil,5],
			["CG_sert_H6",nil,5],
			["CG_sert_H5",nil,5],
			["CG_sert_H4",nil,5],
			["CG_sert_H3",nil,5],
			["CG_sert_H2",nil,5],
			["CG_sert_H1",nil,5],
			["H_HelmetSpecB","SERT Helmet S",5],
			["TRYK_H_PASGT_OD","SERT Helmet OD",5],
			["LSMS_cap_blk",nil,5],
			["LSMS_cap_blue",nil,5],
			["TRYK_H_Helmet_ACU",nil,5],
			["TRYK_H_Helmet_MARPAT_Desert",nil,5],
			["TRYK_H_Helmet_CC",nil,5],
			["TRYK_H_Booniehat_AOR2",nil,5],
			["TRYK_H_Booniehat_MARPAT_WOOD",nil,5],
			["TRYK_H_Booniehat_AOR1",nil,5],
			["TRYK_H_Booniehat_JSDF",nil,5],
			["H_Bandanna_camo",nil,5],
			["jokermask","Joker Mask",5],
			["TRYK_Kio_Balaclava","Ghost Balaclava",5],
			["A3L_Halloween_JigSaw","JigSaw Mask",5],
			["kio_skl_msk","Black Skull Mask",5],
			["kio_skl_msk_grn","Green Skull Mask",5],
			["kio_skl_msk_red","Red Skull Mask",5],
			["kio_skl_msk_fire",nil,5],
			["kio_skl_msk_weed",nil,5],
			["kio_skl_msk_frost",nil,5],
			["kio_skl_msk_pun",nil,5],
			["kio_skl_msk_adc",nil,5],
			["kio_skl_msk_blood",nil,5],
			["kio_skl_msk_redranger",nil,5],
			["kio_skl_msk_UK",nil,5],
			["kio_skl_msk_US",nil,5],
			["kio_skl_msk_black",nil,5],
			["kio_skl_msk_can",nil,5],
			["kio_skl_msk_german",nil,5],
			["kio_skl_msk_GOW",nil,5],
			["kio_skl_msk_grey",nil,5],
			["kio_skl_msk_irish",nil,5],
			["kio_skl_msk_nirish",nil,5],
			["kio_skl_msk_o",nil,5],
			["kio_skl_msk_p",nil,5],
			["kio_skl_msk_scot",nil,5],
			["kio_skl_msk_fran",nil,5]
		];
	};
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Diving",nil,50],
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Aviator",nil,7],
			["G_Squares",nil,1],
			["G_Lowprofile",nil,3],
			["G_Combat",nil,5],
			["G_Balaclava_blk",nil,5],
			["G_Balaclava_combat",nil,5],
			["G_Balaclava_lowprofile",nil,5],
			["TRYK_kio_balaclava_ESS",nil,5],  ///Sturmhaube unerkennbar///
			["G_Bandanna_oli",nil,5],
			["G_Bandanna_blk",nil,5],
			["A3L_Balaclava",nil,6],
			["TRYK_SPGEAR_Glasses","Negotiator Glasses",6],
			["Mask_M40","Gas Mask",5],
			["Mask_M40_OD",nil,200],
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,1],
			["G_Lowprofile",nil,3],
			["G_Combat",nil,5],
			["G_Balaclava_blk",nil,137],
			["G_Balaclava_combat",nil,137],
			["G_Balaclava_lowprofile",nil,137],
			["A3L_Balaclava",nil,137]			
		];
	};

	//Vest
	case 3:
	{
		_ret =
		[
			["V_RebreatherB","Rebreather",20],
			["EOD_SUIT_vest",nil,20],
			["DOC_Vest_Tac_Fix",nil,20],
			["DOC_Vest_Threat_Fix",nil,20],
			["DOC_Vest_Threat_Tan_Fix",nil,20],
			["TRYK_V_ArmorVest_HRT_OD",nil,20],
			["crt_vest_Fix",nil,20],
			["SCommand_Vest_Fix",nil,20],
			["cg_policevest1_fix","Police Vest 2",20],
			["cg_policevest2_fix","Police Vest",20],	
			["HighThreatVestPolice1_Fix",nil,15],	
			["HighThreatVestPolice2_Fix",nil,15],
			["TRYK_V_Sheriff_BA_TBL",nil,15],
			["TCG_troopervest1_Fix","Trooper Black Vest",20],	
			["TCG_troopervest2_Fix","Trooper Blue Vest",20],	
			["HighThreatVestTrooper1_Fix",nil,15],	
			["HighThreatVestTrooper2_Fix",nil,15],		
			["highthreatvestblack_Fix","Sheriff Black High Threat",20],
			["highthreatvesttan_Fix","Sheriff Tan High Threat",20],
			["k_black_so_fix","Black SO Vest",15],
			["k_white_so_fix","White SO Vest",15],
			["k_white2_so_fix","Off White SO Vest",15],
			["k_green_so_fix","Green SO Vest",15],
			["k_green2_so_fix","Off Green SO Vest",15],
			["k_brown_so_fix","Brown SO Vest",15],
			["k_darkblue_so_fix","Dark Blue SO Vest",15],
			["k_leather_so_fix","Leather SO Vest",15],
			["k_lime_so_fix","Lime SO Vest",15],
			["k_orange_so_fix","Orange SO Vest",15],
			["k_red_so_fix","Red SO Vest",15],
			["k_yellow_so_fix","Yellow SO Vest",15],
			["kaelvest_sert7_Fix",nil,15],
			["kaelvest_sert6_Fix",nil,15],
			["kaelvest_sert5_Fix",nil,15],		
			["kaelvest_sert4_Fix",nil,15],
			["kaelvest_sert3_Fix",nil,15],		
			["kaelvest_sert2_Fix",nil,15],
			["kaelvest_sert1_Fix",nil,15],
			["usms_vests_usms1_Fix",nil,15],
			["usms_vests_usms2_Fix",nil,15],
			["usms_vests_usms4_Fix",nil,15],
			["A3L_fbivest1","FBI Vest",15],
			["TRYK_V_tacv1_FBI_BK","FBI Low Threat",15],
			["TRYK_V_tacv1LC_FBI_BK","FBI High Threat",15],
			["TRYK_V_Bulletproof_BLK","Ride Along Vest",15],
			["TRYK_V_tacv1LC_FBI2_BK",nil,15],
			["TRYK_V_PlateCarrier_ACU",nil,200],
			["TRYK_V_ArmorVest_tan2",nil,200],
			["TRYK_V_PlateCarrier_ACU_L",nil,200],
			["prpg_specialf_usms2",nil,200],
			["prpg_specialf_usms4",nil,200],
			["prpg_specialf_usms1",nil,200],
			["k_rebel_1",nil,300],
			["k_rebel_2",nil,300],
			["k_rebel_3",nil,300],
			["k_rebel_4",nil,300],
			["k_rebel_5",nil,300],
			["k_hrebel_1",nil,500],
			["k_hrebel_2",nil,500],
			["k_hrebel_3",nil,500],
			["k_hrebel_4",nil,500],
			["k_hrebel_5",nil,500],
			["k_hrebel_6",nil,500],
			["k_hrebel_7",nil,500],
			["k_hrebel_8",nil,500],
			["k_hrebel_9",nil,500],
			["k_hrebel_10",nil,500],	
			["k_nhrebel_3",nil,500],
			["k_nhrebel_5",nil,500],
			["k_nhrebel_6",nil,500],
			["k_nhrebel_7",nil,500],
			["k_nhrebel_8",nil,500],
			["k_nhrebel_9",nil,500],
			["k_nhrebel_10",nil,500],
			["hk_rebel_1",nil,900],
			["hk_rebel_2",nil,900],
			["hk_rebel_5",nil,900],
			["hk_rebel_7",nil,900],
			["hk_rebel_9",nil,900],
			["hk_rebel_11",nil,900], 
			["hk_rebel_12",nil,900],
			["hk_rebel_13",nil,900], 
			["hk_rebel_14",nil,900],
			["hk_rebel_15",nil,900],
			["hk_rebel_16",nil,900],
			["hk_rebel_17",nil,900],
			["hk_rebel_18",nil,900],
			["hk_rebel_19",nil,900],
			["hk_rebel_20",nil,900]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt","Police Utility Belt",80],
            ["cg_invisbp","Invisi-Backpack 2.0",5],
			["B_AssaultPack_cbr",nil,250],
			["B_FieldPack_ocamo",nil,300],
			["B_TacticalPack_oli","Olive Bergen",350],
			["B_Bergen_sgg","Sage Bergen",450],
			["B_Carryall_oli","Olive Carryall",500],
			["B_Carryall_khk","Khaki Carryall",500],
			//Camo Packs
			["B_AssaultPack_mcamo","MTP Assault Pack",400],
			["TRYK_B_AssaultPack_MARPAT_Wood","MARPAT Assault Pack",550],
			["TRYK_B_AssaultPack_Type2camo","Jungle Assault Pack",550],
			["TRYK_B_Kitbag_Base_JSDF","Jungle Kitbag",550],
			["B_Kitbag_mcamo","MTP Kitbag",550],
			//Belts
			["TRYK_B_Belt_AOR2",nil,300],
			["TRYK_B_Belt_CYT",nil,300],
			["TRYK_B_Belt_GR",nil,300]
		];
	};
};

_ret;
