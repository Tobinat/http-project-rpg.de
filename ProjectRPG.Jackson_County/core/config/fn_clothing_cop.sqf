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
ctrlSetText[3103,"Cop Shop"];


_ret = [];
switch (_filter) do
{	

	//Uniforms
	case 0: 
	{
		_ret =
		[
			["U_B_Wetsuit","Taucheranzug",50],
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
			["LS_Marshal_Jacket3",nil,15],
			["herpSERT2",nil,15],
			["RF_ASU_2",nil,15],
			["RF_WING_3",nil,15], 
			["U_007_US_Police_officer","Presse Polizei",50],
			["KAEL_SUITS_BR_Judge",nil,15]
		];
	};

	
	//Hats
	case 1:
	{
		_ret =
		[
			["corrections_cap",nil,5],
			["H_007_policecap","Police Hat",5],
			["max_police_Hat","Police Hat",5],
			["Campaign_Hat_Light",nil,5],
			["Campaign_Hat_Tan",nil,5],
			["Campaign_Hat_Washedout",nil,5],
			["Campaign_Hat_Dark",nil,5],
			["TCG_pdav_helmet","Pilot Helmet",5],
			["ACE_helmet",nil,5],
			["wing_helmet",nil,5],
			["A3L_policehelmet","Police Hat",5],
			["LSMS_cap_blk",nil,5],
			["LSMS_cap_blue",nil,5]
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
			["Mask_M40","Gas Mask",5]	
		];
	};

	//Vest
	case 3:
	{
		_ret =
		[
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
			["cg_policevest1_fix","Police Vest 2",20],
			["cg_policevest2_fix","Police Vest",20],	
			["HighThreatVestPolice1_Fix",nil,15],	
			["HighThreatVestPolice2_Fix",nil,15],		
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
