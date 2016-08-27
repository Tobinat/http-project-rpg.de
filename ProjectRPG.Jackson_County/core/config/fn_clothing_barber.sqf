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
ctrlSetText[3103,"Barber Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
	    _ret =
		[
			];
	
	};
	
	//Hats
	case 1:
	{
	    _ret =
		[
			["Kio_Afro_Hat",nil,25],
			["EF_Long_wig_B",nil,25],
			["EF_Long_wig_BL",nil,25],
			["EF_Long_wig_BW",nil,25],
			["EF_Long_wig_GL",nil,25],
			["Kio_Afro_Hat",nil,25],
			["EF_Punk_wig_B",nil,35],
			["EF_Punk_wig_BL",nil,35],
			["EF_Punk_wig_BW",nil,35],
			["EF_Punk_wig_GL",nil,35],
			["TRYK_H_wig",nil,15]
		];
	};
	
	//Glasses
	case 2:
	{
		_ret =
		[
			["EF_ACC1",nil,120],
			["EF_ACC2",nil,120],
			["EF_ACC3",nil,120],
			["EF_AC1",nil,120],
			["EF_AC2",nil,120],
			["EF_AC3",nil,120],
			["SFG_Tac_smallBeardB",nil,12],
			["SFG_Tac_smallBeardD",nil,12],
			["SFG_Tac_smallBeardG",nil,12],
			["SFG_Tac_smallBeardO",nil,12],
			["SFG_Tac_BeardB",nil,12],
			["SFG_Tac_BeardD",nil,12],
			["SFG_Tac_BeardG",nil,12],
			["SFG_Tac_BeardO",nil,12],
			["SFG_Tac_chinlessbB",nil,12],
			["SFG_Tac_chinlessbD",nil,12],
			["SFG_Tac_chinlessbG",nil,12],
			["SFG_Tac_chinlessbO",nil,12],
			["SFG_Tac_moustacheB",nil,12],
			["SFG_Tac_moustacheD",nil,12],
			["SFG_Tac_moustacheG",nil,12],
			["SFG_Tac_moustacheO",nil,12],
			["SFG_Tac_ChopsB",nil,12],
			["SFG_Tac_ChopsD",nil,12],
			["SFG_Tac_ChopsG",nil,12],
			["SFG_Tac_ChopsO",nil,12],
			["TRYK_Beard_BK",nil,15],
			["TRYK_Beard",nil,15],
			["TRYK_Beard_BW",nil,15],
			["TRYK_Beard_Gr",nil,15],
			["TRYK_Beard_BK2",nil,15],
			["TRYK_Beard2",nil,15],
			["TRYK_Beard_BW2",nil,15],
			["TRYK_Beard_Gr2",nil,15],
			["TRYK_Beard_BK3",nil,15],
			["TRYK_Beard3",nil,15],
			["TRYK_Beard_BW3",nil,15],
			["TRYK_Beard_Gr3",nil,15],
			["TRYK_Beard_BK4",nil,15],
			["TRYK_Beard4",nil,15],
			["TRYK_Beard_BW4",nil,15],
			["TRYK_Beard_Gr4",nil,15]
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
		];
	};
};
