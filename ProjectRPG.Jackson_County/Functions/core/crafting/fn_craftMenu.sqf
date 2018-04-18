/*
	File: fn_craftMenu.sqf

	array numbers are:
	["NP_Wood","np_copperbar1","np_ironbar1","np_silverbar1","CG_OilCanister"];
*/
disableSerialization;
private["_cost","_error","_materials","_n","_i","_iMafiaClasses"];

_status = lbData[1113,lbCurSel (1113)];
_status = call compile format["%1", _status];

_mainMenus = ["Pistols","Large Weapons","Items","Clothing","Quality Clothing"];

_materials = ["NP_Wood","np_copperbar1","np_ironbar1","np_silverbar1","CG_OilCanister"];


_PistolClasses = [
	"hgun_mas_ww2_acp_F",
	"hgun_Pistol_heavy_01_F",
	"hgun_ACPC2_F",
	"hgun_mas_ww2_bhp_F",
	"sab_1911_handgun",
	"CUP_hgun_Compact",
	"hgun_mas_ww2_lug_F",
	"CUP_hgun_Makarov",
	"CUP_hgun_PB6P9",
	"CUP_hgun_M9",
	"CUP_hgun_TaurusTracker455",
	"hgun_mas_ww2_tt33_F",
	"RH_uspm",
	"RH_kimber",
	"RH_fn57",
	"RH_fnp45",
	"RH_Deagleg",
	"RH_Deagles"
];

_PricesPistolClasses = [
	//1911 ACP
	//hgun_mas_ww2_acp_F
	[3,2,0,0,0],
	
	//4-five .45 ACP
	//hgun_Pistol_heavy_01_F
	[3,0,2,0,0],
	
	//ACP-C2 .45 ACP
	//hgun_ACPC2_F
	[3,2,0,0,0],
	
	//Browning HP
	//hgun_mas_ww2_bhp_F
	[3,1,0,0,0],
	
	//Colt 1911
	//sab_1911_handgun
	[4,0,2,0,0],
	
	//CZ 75 COMPACT
	//CUP_hgun_Compact
	[3,2,0,0,0],
	
	//Luger
	//hgun_mas_ww2_lug_F
	[2,1,0,0,0],
	
	//Makarov PM
	//CUP_hgun_Makarov
	[3,0,1,0,0],
	
	//PB 6P9
	//CUP_hgun_PB6P9
	[3,0,1,0,0],
	
	//M9
	//CUP_hgun_M9
	[3,0,0,1,0],
	
	//Taurus Tracker Model 455
	//CUP_hgun_TaurusTracker455
	[3,0,0,1,0],
	
	//Tokarev
	//hgun_mas_ww2_tt33_F
	[2,0,0,1,1],
	
	//USP40 Match
	//RH_uspm
	[3,0,0,1,2],
	
	//Kimber Desert Warrior
	//RH_kimber
	[3,1,0,0,2],
	
	//FN Five-Seven
	//RH_fn57
	[3,1,0,0,2],
	
	//FNP45 Tactical
	//RH_fnp45
	[3,0,1,0,3],
	
	//Desert Eagle Gold
	//RH_Deagleg
	[3,0,5,0,7],
	
	//Desert Eagle Silver
	//RH_Deagles
	[3,5,0,1,7]
];

_PistolMags = [2,1,0,0,0];


if(myJob == "Mafia" && player getVariable ["Mafia",0] > 4) then {

	_iMafiaClasses = [
		//small auto
		"CUP_hgun_MicroUzi",
		"CUP_hgun_SA61",
		"RH_g18",
		"RH_tec9",
		"RH_muzi",			
		"CUP_smg_bizon",
	//
		"arifle_mas_ww2_tommy",
		"arifle_mas_ww2_mp40",
		"arifle_mas_ww2_ppsh",
		"arifle_mas_ww2_sten",

		//rifle
		"CUP_srifle_CZ550_rail",
		"arifle_mas_ww2_kar98",
		"CUP_srifle_LeeEnfield_rail",
		"arifle_mas_ww2_m1g",
		"arifle_mas_ww2_mos",

		//shotguns & light macs
		//"CUP_sgun_AA12", zbyt op broń
		//"CUP_lmg_Mk48_des",

		//launchers
		"CUP_launch_RPG7V"
		//"CUP_glaunch_6G30"
	];


} else {
	
	_iMafiaClasses = [
	//small auto
		"CUP_hgun_MicroUzi",
		"CUP_hgun_SA61",
		"RH_g18",
		"RH_tec9",
		"RH_muzi"		
	];

};


_iPricesMafiaClasses = [
	[2,3,0,3,7],

	[1,2,2,2,8],

	[2,3,0,3,11],

	[1,0,2,1,7],
	[0,2,0,1,8],
	[2,0,0,1,8],

	[5,2,2,2,10],
	[5,12,1,2,5],
	[5,2,15,1,4],
	[5,1,1,11,5],

	[5,2,2,2,25],
	[5,2,5,5,25],
	[5,5,5,2,25],
	[5,2,12,2,25],
	[5,2,2,12,25],

	//[5,5,25,5,35],
	//[5,5,5,25,35],


	[5,5,5,15,85]
	//[5,5,5,5,85]
];
_iMafiaMags = [5,2,2,2,2];






_itemList = [
	//"NP_DrugTable","NP_GrowingPlot","CG_Dynamite","CG_C4","CG_Engine","CG_wheel","CG_HackingTool","CG_Lockpick","CG_MetalWire","NP_drillitem"
	"NP_DrugTable","NP_GrowingPlot","CG_Dynamite","CG_C4","CG_Engine","CG_wheel","CG_HackingTool","CG_Lockpick","NP_drillitem"
];


_PricesItemList = [
	[4,1,2,1,10],
	[15,1,0,0,0],
	[10,1,0,0,2],
	[0,3,5,5,5],
	[0,5,0,1,2],
	[0,1,0,0,1],
	[1,1,10,8,7],
	[2,5,0,0,0],
	[0,7,1,1,1],
	[3,1,4,2,8]	
];


_clothing1 =

		["EF_HM_LPBPS","EF_HM_LPBP","EF_HM_LPBR","EF_HM_LPBW","EF_HM_LPB","EF_HM_LPBL",
		
		"CUP_O_TKI_Khet_Jeans_01","CUP_O_TKI_Khet_Jeans_02","CUP_O_TKI_Khet_Jeans_03","CUP_O_TKI_Khet_Jeans_04",

		"CUP_U_C_Citizen_01","CUP_U_C_Citizen_02","CUP_U_C_Citizen_03","CUP_U_C_Citizen_04",


		"CUP_O_TKI_Khet_Partug_01","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_03","CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_Partug_05",

		"CUP_U_C_Profiteer_01",
		"CUP_U_C_Profiteer_02",
		"CUP_U_C_Profiteer_03",
		"CUP_U_C_Profiteer_04",

		"EF_HM_LPBPS2",
		"EF_HM_LPBP2",
		"EF_HM_LPBR2",
		"EF_HM_LPBW2",
		"EF_HM_LPB2",
		"EF_HM_LPBL2",


		"CUP_U_I_GUE_Anorak_03",
		"CUP_U_I_GUE_Anorak_02",

		"TRYK_U_B_PCUGs_BLK_R",
		"TRYK_U_B_PCUGs_gry_R",
		"TRYK_U_B_PCUGs_OD_R",
		"TRYK_U_B_wh_blk_Rollup_CombatUniform",
		"TRYK_shirts_DENIM_BK",
		"TRYK_shirts_DENIM_BL",
		"TRYK_shirts_DENIM_BWH",
		"TRYK_shirts_DENIM_R",
		"TRYK_shirts_DENIM_RED2",
		"TRYK_shirts_DENIM_WHB",
		"TRYK_shirts_DENIM_ylb",
		"TRYK_U_denim_hood_blk",
		"TRYK_U_taki_G_BLK",
		"TRYK_U_taki_G_COY",

		"EF_suit_1",
		"EF_suit_2",
		"EF_suit_3",
		"EF_suit_4",
		"EF_suit_5",
		"EF_suit_6",
		"CUP_U_C_Worker_01",
		"CUP_U_C_Worker_02",
		"CUP_U_C_Worker_03",
		"CUP_U_C_Worker_04",
		"EF_FEM_2U",
		"EF_FEM_2BK",
		"EF_FEM_3_2",
		"EF_FEM_3_3LPBPS",
		"EF_FEM_3_3LPBP",
		"EF_FEM_3_3LPBR",
		"EF_FEM_3_3LPBW",
		"EF_FEM_3_3LPB",
		"EF_FEM_3_3LPBL",
		"EF_FEM_3_3LPBPS2",
		"EF_FEM_3_3LPBP2",
		"EF_FEM_3_3LPBR2",
		"EF_FEM_3_3LPBW2",
		"EF_FEM_3",
		"EF_FEM_4",
		"EF_FEM_4_2LPBPS",
		"EF_FEM_4_2LPBP",
		"EF_FEM_4_2LPBR",
		"EF_FEM_4_2LPBW",
		"EF_FEM_4_2LPB",
		"EF_FEM_4_2LPBPS2",
		"EF_FEM_4_2LPBP2",
		"EF_FEM_5",
		"EF_FEM_6",
		"EF_FEM_3_42",
		"vvv_character_wandelina",
		"vvv_character_jennifer"
];

_clothing2 = ["vvv_character_rock1",
		"vvv_character_rock2",
		"vvv_character_rock3",
		"vvv_character_rock4",
		"vvv_traje_jackoy",

		"vvv_traje_motox_02",
		"vvv_traje_motox_02_2",
		"vvv_traje_motox_02_3",
		"vvv_traje_motox_02_4",
		"vvv_traje_motox_02_5",
		"vvv_traje_motox_02_6",
		"vvv_traje_motox_02_7",
		"vvv_traje_motox_02_8",

		"vvv_character_sport",
		"vvv_character_sport_2",
		"vvv_character_sport_3",
		"vvv_character_sport_4",
		"vvv_character_sport_5",
		"vvv_character_sport_6",
		"vvv_character_sport_7",
		"vvv_character_sport_8",
		"vvv_character_sport_9",
		"vvv_character_sport_10",
		"vvv_character_sport_11",
		"vvv_character_sport_12",
		"vvv_character_sport_13",

		"CUP_U_C_Villager_01",
		"CUP_U_C_Villager_02",
		"CUP_U_C_Villager_03",
		"CUP_U_C_Villager_04",

		"eaglkes_wwi_ind_pilot_cloth",
		"eaglkes_wwi_ger_pilot_cloth",

		"CUP_U_C_Priest_01",

		"TRYK_HRP_USMC",
		"TRYK_HRP_khk",
		"U_mas_ww2_B_CombatUniform_us",

		"CUP_U_C_Mechanic_01",
		"CUP_U_C_Mechanic_02",
		"CUP_U_C_Mechanic_03",

		"CUP_U_O_SLA_Overalls_Pilot",
		"CUP_U_O_SLA_Overalls_Tank",

		"CUP_U_O_SLA_Green",
		"CUP_U_O_SLA_MixedCamo",



		"CUP_U_C_Suit_01",
		"CUP_U_C_Suit_02",


		"np_sleeve_common_1",
		"np_shortsleeve_common_1",

		"vvv_traje_ejecutivo_1",
		"vvv_character_messi",
		"vvv_traje_romano",

		"CUP_U_O_SLA_Officer_Suit"];





uisleep 0.05;

_display = findDisplay 1111;

if((_this select 0) == "REFRESH") exitwith {

	if(isNil "_status") exitwith {};

	if(_status IN _pistolClasses) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _PistolClasses;
		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_myArray = _PricesPistolClasses select _mySelect;
		_mags = _PistolMags;
		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Wood: %2 <br/> Copper: %3 <br/> Iron: %4 <br/> Silver: %5 <br/> Oil: %6 <br/><br/><t color='#33CC33'>Magazine Cost <t color='#ffffff'> <br/> Wood: %7 <br/> Copper: %8 <br/> Iron: %9 <br/> Silver: %10 <br/> Oil: %11 ",_selectedWeapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4),(_Mags select 0),(_Mags select 1),(_Mags select 2),(_Mags select 3),(_Mags select 4)];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _iMafiaClasses) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _iMafiaClasses;
		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.
		_myArray = _iPricesMafiaClasses select _mySelect;
		_mags = _iMafiaMags;
		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Wood: %2 <br/> Copper: %3 <br/> Iron: %4 <br/> Silver: %5 <br/> Oil: %6 <br/><br/><t color='#33CC33'>Magazine Cost <t color='#ffffff'> <br/> Wood: %7 <br/> Copper: %8 <br/> Iron: %9 <br/> Silver: %10 <br/> Oil: %11 ",_selectedWeapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4),(_Mags select 0),(_Mags select 1),(_Mags select 2),(_Mags select 3),(_Mags select 4)];
		_btn4 ctrlCommit 0;
	};


	if(_status IN _itemList) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _itemList;

		_selectedWeapon = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_myArray = _PricesItemList select _myselect;

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Wood: %2 <br/> Copper: %3 <br/> Iron: %4 <br/> Silver: %5 <br/> Oil: %6",_selectedweapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4)];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _clothing1) then {

		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _clothing1;

		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["Fur Pelt: 2",_selectedweapon];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _clothing2) then {

		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _clothing2;

		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["Fur Pelt: 4",_selectedweapon];
		_btn4 ctrlCommit 0;
	};


};






_Btn2 = _display displayCtrl 1116;
_Btn3 = _display displayCtrl 1117;
_Btn5 = _display displayCtrl 1118;


_btn2 ctrlShow false;
_btn3 ctrlShow false;
_btn5 ctrlShow false;

_list = _display displayCtrl 1113;

lbClear _list;

if((_this select 0) == "FRESH") exitwith {

	_btn3 ctrlShow true;

	{
		_list lbAdd _x;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _mainMenus;


};

if(isNil "_status") exitwith { hint "Error with Selection!"; };


	_btn2 ctrlShow true;
	_btn5 ctrlShow true;

if(_status == "Pistols") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _pistolClasses;

};

if(_status == "Large Weapons") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _iMafiaClasses;

};

if(_status == "Items") exitwith {

	{
		_selectedweapon = (configfile >> "CfgMagazines" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _ItemList;

};


if(_status == "Clothing") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _clothing1;

};

if(_status == "Quality Clothing") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _clothing2;

};


if(isNil "shopholder") then {
	shopholder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);  
};

if((_this select 0) == "CRAFT") exitwith {

	if(_status IN _PistolClasses) then {
		_count = _pistolclasses FIND _status;
		_cost = _PricesPistolClasses select _count;
	};

	if(_status IN _iMafiaClasses) then {
		_count = _iMafiaClasses FIND _status;
		_cost = _iPricesMafiaClasses select _count;
	};
	if(_status IN _itemList) then {
		_count = _itemList FIND _status;
		_cost = _PricesItemList select _count;
	};

	if(_status IN _clothing1) then {
		_cost = 2;
	};

	if(_status IN _clothing2) then {
		_cost = 4;
	};

if(_status IN _clothing1 || _status IN _clothing2) then {

	_error = false;

	_checkCost = _cost;

	_amountcurrent = {_x == "NP_Pelt"} count magazines player;
	if(_amountcurrent < _checkCost) exitwith { hint "Not enough resources"; _error = true; };

	if(_error) exitwith {};

	

	_i = _Cost;

	while{ _i > 0 } do {
		player removeitem "NP_Pelt";
		_i = _i - 1;
	};

 } else {

	_error = false;
	_n = 0;
	{

		_materialCheck = _materials select _n;
		_checkCost = _cost select _n;

		_amountcurrent = {_x == (_materials select _n)} count magazines player;
		if(_amountcurrent < _checkCost) exitwith { hint "Not enough resources"; _error = true; };
		_n = _n + 1;

	} foreach _cost;

	if(_error) exitwith {};


	_n = 0;
	{
		_checkCost = _cost select _n;
		_i = _checkCost;

		while{ _i > 0 } do {
			player removeitem (_materials select _n);
			_i = _i - 1;
		};

		_n = _n + 1;
	} foreach _cost;

};

if(_error) exitwith {};

	playSound3D ["CG_Jobs\sounds\sawing\saw.ogg", player, false, getPosasl player, 4, 1, 15];

	if(_status IN _ItemList || _status IN _clothing1 || _status IN _clothing2 ) then {
		shopholder additemCargoGlobal [_status,1];
		if(_status IN _ItemList ) then {
			_classStatus = _status;
			_status = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;
		} else {
			_classStatus = _status;
			_status = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;	
		};
	} else {
		shopholder addWeaponCargoGlobal [_status,1];
		_classStatus = _status;
		_status = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;	
	};

	player disablecollisionwith shopholder;
	shopholder setpos (getposATL player);	

	hint format["You have crafted a %1",_status];
	[player,1,format ["%1 wycraftował %2", name player, _status],_classStatus,_status] remoteExec ["server_fnc_craftLog", 2];
	closedialog 0;
};

if((_this select 0) == "CRAFTMAG") exitwith {

	if(_status IN _PistolClasses) then {
		_count = _pistolclasses FIND _status;
		_cost = _PistolMags;
	};
	if(_status IN _iMafiaClasses) then {
		_count = _iMafiaClasses FIND _status;
		_cost = _iMafiaMags;
	};

	_error = false;
	_n = 0;
	{

		_materialCheck = _materials select _n;
		_checkCost = _cost select _n;

		_amountcurrent = {_x == (_materials select _n)} count magazines player;
		if(_amountcurrent < _checkCost) exitwith { hint "Not enough resources"; _error = true; };
		_n = _n + 1;

	} foreach _cost;

	if(_error) exitwith {};


	_n = 0;
	{
		_checkCost = _cost select _n;
		_i = _checkCost;

		while{ _i > 0 } do {
			player removeitem (_materials select _n);
			_i = _i - 1;
		};

		_n = _n + 1;
	} foreach _cost;


	_magazines = getArray (configFile / "CfgWeapons" / _status / "magazines");
	_magazineClass = _magazines select 0; 
	
	shopholder addmagazineCargoGlobal [_magazineclass,2];

	hint format["You have crafted 2 mags for a %1",_status];
	[player,2,format ["%1 wycraftował 2 magazynki dla broni %2", name player, _status],_magazineclass,_status] remoteExec ["server_fnc_craftLog", 2];
	closedialog 0;
	player disablecollisionwith shopholder;
	shopholder setpos (getpos player);	
};

closedialog 0;