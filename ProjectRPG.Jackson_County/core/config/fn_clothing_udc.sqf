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
			["pRPG_State1","Silver Lake State Police",50],
			["silver_lake_fbi","Command Uniform",50],
			["silver_lake_police","Polizei Uniform",50],
			["silver_lake_sheriff","Sheriff Uniform",50],
			["silver_lake_statepolice","State Police Uniform",50],
			["U_B_Wetsuit","Taucheranzug",50],
			["max_sheriff_uniform","Highway Patrol",15],
			["pRPG_Sheriff1",nil,15],
			["pRPG_Deputy1",nil,15],
			["prpg_recruit1",nil,15],
			["prpg_officer1",nil,15],
			["prpg_Detective1",nil,15],
			["TCG_PDDTC","Detective Zivil",50],	
			["prpg_Sergeant1",nil,15],
			["pPRG_Lieutenant1",nil,15],
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
			["LS_Marshal_Jacket3",nil,15],
			["RF_ASU_2",nil,15],
			["RF_WING_3",nil,15], 
			["KAEL_SUITS_BR_Judge",nil,15],
			["vvv_hazmat",nil,15]

		];
	};

	
	//Hats
	case 1:
	{
		_ret =
		[
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
			["wing_helmet",nil,5],
			["TRYK_H_DELTAHELM_NV","Negotiator Helmet",5],
			["A3L_policehelmet","Police Hat",5]
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
			["V_RebreatherB","Rebreather",20],
			["DOC_Vest_Tac_Fix",nil,20],
			["DOC_Vest_Threat_Fix",nil,20],
			["DOC_Vest_Threat_Tan_Fix",nil,20],
			["police_belt_biker",nil,20],
			["police_belt_pistol",nil,20],
			["police_belt_Without_pistol",nil,20],
			["police_belt_pistol_patrolman",nil,20],
			["TRYK_V_Bulletproof_BLK",nil,20],
			["TRYK_V_Sheriff_BA_TB",nil,20],
			["TRYK_V_Sheriff_BA_T",nil,20],
			["TRYK_V_Sheriff_BA_OD",nil,20],
			["DOC_Vest_CO",nil,20],			
			["usms_vests_usms1_Fix",nil,15],
			["usms_vests_usms2_Fix",nil,15],
			["usms_vests_usms4_Fix",nil,15]

		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt","Police Utility Belt",80],
            ["cg_invisbp","Invisi-Backpack 2.0",5]
		];
	};
};

_ret;
