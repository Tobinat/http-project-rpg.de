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
			["vvv_elena_fisher8",360],
			["KAEL_SUITS_BR_F24",3800],
			["KAEL_SUITS_BR_F16",3800],
			["KAEL_SUITS_BR_F17",3800],
			["KAEL_SUITS_BR_F18",3800],
			["KAEL_SUITS_BR_F19",3800],
			["KAEL_SUITS_BR_F20",3800],
			["KAEL_SUITS_BR_F21",3800],
			["KAEL_SUITS_BR_F22",3800],
			["KAEL_SUITS_BR_F15",3800],
			["KAEL_SUITS_BR_F26",3800],
			["KAEL_SUITS_BR_F27",3800],
			["KAEL_SUITS_BR_F28",3800],
			["KAEL_SUITS_BR_F3",3800],
			["KAEL_SUITS_BR_F12",3800],
			["KAEL_SUITS_BR_F8",3800],
			["KAEL_SUITS_BLK_F",3800],
			["KAEL_SUITS_BR_F10",3800],
			["KAEL_SUITS_BR_F7",3800],
			["KAEL_SUITS_BR_F6",3800],
			["KAEL_SUITS_BR_F5",3800],
			["KAEL_SUITS_BR_F4",3800],
			["KAEL_SUITS_BR_F",3800],
			["KAEL_SUITS_BR_F9",3800],
			["KAEL_SUITS_BR_F13",3800],
			["KAEL_SUITS_BR_F14",3800],
			["EF_suit_1",2700],
			["EF_suit_2",2700],
			["EF_suit_3",2700],
			["EF_suit_4",2700],
			["EF_suit_5",2700],
			["EF_suit_6",2700]
	
					
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
			["ALE_H_Cowboy_Black",nil,45],
			["ALE_H_Cowboy_White",nil,45]
		];
	};
	
	//Glasses
	case 2:
	{
		[

			["G_Sport_Greenblack",nil,90],
			["G_Sport_Blackred",nil,90],
			["G_Sport_Checkered",nil,90],
			["G_Sport_BlackWhite",nil,90],
			["G_Sport_Blackyellow",nil,90],
			["G_Sport_Red",nil,90],
			["G_Shades_Blue",nil,90],
			["G_Shades_Red",nil,90],
			["G_Shades_Green",nil,90],
			["G_Shades_Black",nil,90],
			["G_Squares",nil,70],
			["G_Spectacles_Tinted",nil,60],
			["G_Spectacles",nil,60],
			["G_Aviator",nil,60],
			["G_Lady_Blue",nil,120],
			["G_Spectacles",nil,60],
			["G_Spectacles",nil,60]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[	
		["cg_invisbp","Invisi-Backpack 2.0",15000]
		];
	};
};
