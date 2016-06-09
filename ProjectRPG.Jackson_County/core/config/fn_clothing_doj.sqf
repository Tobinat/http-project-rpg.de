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
		["DOJ_Jacket_1","Schlüter Jacke",100]
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
