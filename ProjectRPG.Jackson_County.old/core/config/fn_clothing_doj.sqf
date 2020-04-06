#include <macro.h>
/*
	File: fn_clothing_doj.sqf
	
	
	Description:
	Master config file for a clothing store.
*/
private["_filter","_ret"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Shop DOJ"];


_ret = [];
switch (_filter) do
{	

	//Uniforms
	case 0: 
	{
		_ret =
		[
		["KAEL_SUITS_BR_F12",nil,175],
		["KAEL_SUITS_BLK_F",nil,135],
		["KAEL_SUITS_BR_F",nil,135],
		["KAEL_SUITS_BR_F3",nil,135],
		["KAEL_SUITS_BR_F4",nil,135],
		["KAEL_SUITS_BR_F5",nil,135],
		["KAEL_SUITS_BR_F6",nil,135],
		["KAEL_SUITS_BR_F7",nil,135],
		["KAEL_SUITS_BR_F8",nil,135],
		["KAEL_SUITS_BR_F9",nil,135],
		["KAEL_SUITS_BR_F10",nil,135],
		["KAEL_SUITS_BR_F11",nil,135],
		["KAEL_SUITS_BR_F13",nil,135],
		["KAEL_SUITS_BR_F14",nil,135],
		["KAEL_SUITS_BR_F24",nil,135],
		["KAEL_SUITS_BR_F25",nil,135],
		["KAEL_SUITS_BR_F16",nil,135],
		["KAEL_SUITS_BR_F17",nil,135],
		["KAEL_SUITS_BR_F18",nil,135],
		["KAEL_SUITS_BR_F19",nil,135],
		["KAEL_SUITS_BR_F20",nil,135],
		["KAEL_SUITS_BR_F21",nil,135],
		["KAEL_SUITS_BR_F22",nil,135],
		["KAEL_SUITS_BR_F23",nil,135],
		["KAEL_SUITS_BR_F15",nil,135],
		["KAEL_SUITS_BR_F26",nil,135],
		["KAEL_SUITS_BR_F27",nil,135],
		["KAEL_SUITS_BR_F28",nil,135],
		["KAEL_SUITS_BR_F29",nil,135],
		["KAEL_SUITS_BR_F30",nil,135],
		["KAEL_SUITS_BR_F31",nil,135],
		["KAEL_SUITS_BR_F32",nil,135],
		["KAEL_SUITS_BR_F33",nil,135],
		["KAEL_SUITS_BR_F34",nil,135],
		["KAEL_SUITS_BR_F35",nil,135],
		["TRYK_SUITS_BLK_F","TRYK Black Suit",135],
		["TRYK_SUITS_BR_F","TRYK Brown Suit",135],
		["DOJ_Jacket_2","DoJ Jacke",135],
		["DOJ_Jacket_1","Schlüter Jacke",100],
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

		];
	};
	//Glasses
	case 2:
	{
		_ret = 
		[

		];
	};

	//Vest
	case 3:
	{
		_ret =
		[

		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[

            ["cg_invisbp","Invisi-Backpack 2.0",500]

		];
	};
};

_ret;
