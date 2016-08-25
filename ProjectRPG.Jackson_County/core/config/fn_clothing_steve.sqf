#include <macro.h>
/*
	File: fn_clothing_bruce.sqf
	
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Steve's Boutique"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["NP_traje_test","Schlitchtes Outfit Rot",190],
			["vvv_traje_jackoy","Outfit Lederjacke",190],
			["vvv_traje_jackoy7","Outfit Lederjacke 2",190],
			["vvv_traje_jackoy2","Outfit Lederjacke Lila",190],
			["vvv_traje_jackoy6","Outfit Lederjacke Lila 2",190],
			["vvv_traje_jackoy3","Outfit Lederjacke Braun",190],
			["vvv_traje_jackoy8","Outfit Lederjacke Braun 2",190],
			["vvv_traje_jackoy4","Outfit Lederjacke Grau",190],
			["vvv_traje_jackoy5","Outfit Lederjacke Schwarz",190],
			["np_shirt_1","Freizeithemd Schwarz",90],
			["np_shirt_2","Freizeithemd Rot",90],
			["np_shirt_3","Freizeithemd Grün",90],
			["np_shirt_4","Freizeithemd Blau",90],
			["np_shirt_5","Freizeithemd Lila",90],
			["np_shirt_6","Freizeithemd Rot2",90],
			["np_shirt_7","Freizeithemd Schwarz2",90],
			["np_shirt_8","Freizeithemd Weiß",90],
			["vvv_character_sport_1",260],
			["vvv_character_sport_9",260],
			["vvv_character_sport_13",260],
			["vvv_character_sport_3",260],
			["vvv_character_sport_2",260],
			["vvv_character_sport_7",260],
			["vvv_character_sport_8",260],
			["vvv_character_sport_11",260],
			["vvv_character_sport_12",260],
			["vvv_character_sport",260],
			["vvv_character_sport_6",260],
			["vvv_character_sport_4",260],
			["vvv_character_sport_10",260],
			["vvv_character_sport_5",260],
			["nopixel_character_agente_47",2400],
			["vvv_character_agente_472",1200],
			["vvv_character_agente_473",1200],
			["vvv_character_agente_474",1200],
			["vvv_character_agente_475",1200],
			["vvv_ropa_comun_f_1",260],
			["vvv_ropa_comun_f_10",260],
			["vvv_ropa_comun_f_2",260],
			["vvv_ropa_comun_f_3",260],
			["vvv_ropa_comun_f_4",260],
			["vvv_ropa_comun_f_5",260],
			["vvv_ropa_comun_f_6",260],
			["vvv_ropa_comun_f_7",260],
			["vvv_ropa_comun_f_8",260],
			["vvv_ropa_comun_f_9",260],
			["vvv_elena_fisher3",360],
			["vvv_elena_fisher4",360],
			["vvv_elena_fisher5",360],
			["vvv_elena_fisher6",360],
			["vvv_elena_fisher7",360],
			["vvv_elena_fisher8",360]
					
		];
		if(__GETC__(life_adminlevel) > 0) then {
			_ret pushBack ["U_C_Scientist",nil,5];
		};
		_ret;
	};
	
	//Hats
	case 1:
	{
		[
			["Gorb_Santa_White",nil,112],
			
			["H_Cap_blk_ION",nil,12]
		];
	};
	
	//Glasses
	case 2:
	{
		[

			["A3L_FatHead",nil,2],
			["G_Combat",nil,5]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["A3L_SpiderVest",nil,250],
			["hk_rebel_20",nil,11000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,250],
	        ["cg_invisbp","Invisi-Backpack 2.0",10000]			
		];
	};
};
