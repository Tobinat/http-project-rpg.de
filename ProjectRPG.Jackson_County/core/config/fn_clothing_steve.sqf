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
			["vvv_character_sport_1",nil,260],
			["vvv_character_sport_9",nil,260],
			["vvv_character_sport_13",nil,260],
			["vvv_character_sport_3",nil,260],
			["vvv_character_sport_2",nil,260],
			["vvv_character_sport_7",nil,260],
			["vvv_character_sport_8",nil,260],
			["vvv_character_sport_11",nil,260],
			["vvv_character_sport_12",nil,260],
			["vvv_character_sport",nil,260],
			["vvv_character_sport_6",nil,260],
			["vvv_character_sport_4",nil,260],
			["vvv_character_sport_10",nil,260],
			["vvv_character_sport_5",nil,260],
			["nopixel_character_agente_47",nil,2400],
			["vvv_character_agente_472",nil,1200],
			["vvv_character_agente_473",nil,1200],
			["vvv_character_agente_474",nil,1200],
			["vvv_character_agente_475",nil,1200],
			["vvv_ropa_comun_f_1",nil,260],
			["vvv_ropa_comun_f_10",nil,260],
			["vvv_ropa_comun_f_2",nil,260],
			["vvv_ropa_comun_f_3",nil,260],
			["vvv_ropa_comun_f_4",nil,260],
			["vvv_ropa_comun_f_5",nil,260],
			["vvv_ropa_comun_f_6",nil,260],
			["vvv_ropa_comun_f_7",nil,260],
			["vvv_ropa_comun_f_8",nil,260],
			["vvv_ropa_comun_f_9",nil,260],
			["vvv_elena_fisher3",nil,360],
			["vvv_elena_fisher4",nil,360],
			["vvv_elena_fisher5",nil,360],
			["vvv_elena_fisher6",nil,360],
			["vvv_elena_fisher7",nil,360],
			["vvv_elena_fisher8",nil,360],
			["KAEL_SUITS_BR_F24",nil,3800],
			["KAEL_SUITS_BR_F16",nil,3800],
			["KAEL_SUITS_BR_F17",nil,3800],
			["KAEL_SUITS_BR_F18",nil,3800],
			["KAEL_SUITS_BR_F19",nil,3800],
			["KAEL_SUITS_BR_F20",nil,3800],
			["KAEL_SUITS_BR_F21",nil,3800],
			["KAEL_SUITS_BR_F22",nil,3800],
			["KAEL_SUITS_BR_F15",nil,3800],
			["KAEL_SUITS_BR_F26",nil,3800],
			["KAEL_SUITS_BR_F27",nil,3800],
			["KAEL_SUITS_BR_F28",nil,3800],
			["KAEL_SUITS_BR_F3",nil,3800],
			["KAEL_SUITS_BR_F12",nil,3800],
			["KAEL_SUITS_BR_F8",nil,3800],
			["KAEL_SUITS_BLK_F",nil,3800],
			["KAEL_SUITS_BR_F10",nil,3800],
			["KAEL_SUITS_BR_F7",nil,3800],
			["KAEL_SUITS_BR_F6",nil,3800],
			["KAEL_SUITS_BR_F5",nil,3800],
			["KAEL_SUITS_BR_F4",nil,3800],
			["KAEL_SUITS_BR_F",nil,3800],
			["KAEL_SUITS_BR_F9",nil,3800],
			["KAEL_SUITS_BR_F13",nil,3800],
			["KAEL_SUITS_BR_F14",nil,3800],
			["EF_suit_1",nil,2700],
			["EF_suit_2",nil,2700],
			["EF_suit_3",nil,2700],
			["EF_suit_4",nil,2700],
			["EF_suit_5",nil,2700],
			["EF_suit_6",nil,2700]
	
					
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
