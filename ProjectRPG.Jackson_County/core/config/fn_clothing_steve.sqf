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
			["XAMPLE",50],
			["A3L_Bikini_Girl","Bikini",4000]	
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
