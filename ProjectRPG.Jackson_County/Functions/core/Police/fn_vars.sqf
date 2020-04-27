//null = [this] execVM "virtual_arsenal_init.sqf"


_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;
 
 
_availableHeadgear = [
	"PRPG_Cap_Sheriff_1",
	"PRPG_Cap_Sheriff_2",
	"PRPG_Beanie_Sheriff",
	//"pmc_earpiece",
	"G_squares_tinted",
	"G_Spectacles_tinted"
	
];
    if (player getvariable ["cop", 0] > 4) then {
    _availableHeadgearTwo = [
		"PRPG_Helmet_Sheriff",
		"TRYK_H_TACEARMUFF_H",
		"TYRK_R_CAP_BLK",
		"TYRK_R_CAP_TAN",
		"TYRK_R_CAP_OD_US",
		"TYRK_R_CAP_BLK_glasses",
		"TYRK_R_CAP_od_glasses",
		"TYRK_R_CAP_tan_glasses",
		"H_cap_usblack",
		"h_cap_blk",
		"TRYK_H_headsetcap_glasses",
		"TRYK_H_headsetcap_od_glasses",
		"TRYK_H_headsetcap_blk_glasses"
        ];
    _availableHeadgear = _availableHeadgear + _availableHeadgearTwo;
    };
 
_availableGoggles = [
	"G_aviator",
	"G_Squares"
];

 
_availableUniforms = [
	"female_police",
	"PRPG_P_Deputy1",
	"PRPG_Deputy1",
	"PRPG_Senior_Deputy1",
	"PRPG_S_Sergeant1",
	"PRPG_Lieutenant1",
	"PRPG_Captain1",
	"PRPG_D_Chief1",
	"PRPG_Superintendent1",
	"PRPG_A_Sheriff1",
	"PRPG_Sheriff1",
	"PRPG_A_Deputy1",
	"PRPG_Sheriff_Shorts1"
];

    if (player getvariable ["cop", 0] > 4) then {
        _availableUniformsFour = [
			"NP_traje_test",
			"NP_traje_test2",
			"NP_traje_test3",
			"NP_traje_test4",
			"NP_traje_test5",
			"NP_traje_test6",
			"NP_traje_test7",
			"NP_traje_test8",
			"NP_traje_test9",
			"NP_traje_test10",
			"vvv_traje_jackoy",
			"vvv_traje_jackoy2",
			"vvv_traje_jackoy3",
			"vvv_traje_jackoy4",
			"vvv_traje_jackoy5",
			"vvv_traje_jackoy6",
			"vvv_traje_jackoy7",
			"vvv_traje_jackoy8",
			"np_shirt_1",
			"np_shirt_2",
			"np_shirt_3",
			"np_shirt_4",
			"np_shirt_5",
			"np_shirt_6",
			"np_shirt_7",
			"np_shirt_8",
			"vvv_character_agente_47",
			"vvv_character_agente_472",
			"vvv_character_agente_473",
			"vvv_character_agente_474",
			"vvv_character_agente_475",
			"vvv_elena_fisher",
			"vvv_elena_fisher2",
			"vvv_elena_fisher3",
			"vvv_elena_fisher4",
			"vvv_elena_fisher5",
			"vvv_elena_fisher6",
			"vvv_elena_fisher7",
			"vvv_elena_fisher8",
			"vvv_elena_fisher9",
			"vvv_elena_fisher10",
			"vvv_elena_fisher11",
			"vvv_elena_fisher12",
			"vvv_elena_fisher13",
			"vvv_elena_fisher14",
			"vvv_elena_fisher15",
			"vvv_elena_fisher16",
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
			"TRYK_U_taki_G_COY"


        ];
        _availableUniforms = _availableUniforms + _availableUniformsFour;
    };
 
_availableVests = [
  	"PRPG_Deputy_W_1_W",
	"PRPG_Deputy_W_2_W",
	"PRPG_Deputy_W_1_Y",
	"PRPG_Deputy_W_2_Y",
	"PRPG_Deputy_W_1_S",
	"PRPG_Deputy_W_2_S",
	"PRPG_Sheriff_Belt",
	"PRPG_Sheriff_W_1_W",
	"PRPG_Sheriff_W_2_W",
	"PRPG_Sheriff_W_1_Y",
	"PRPG_Sheriff_W_2_Y",
	"PRPG_Sheriff_W_1_S",
	"PRPG_Sheriff_W_2_S"
];


_availableBackpacks = [
	"invisible_carryall",
	"TRYK_B_Alicepack"
];

    if (player getvariable ["cop", 0] > 5) then {
	    _availableBackpacksFive = [
		"CUP_B_ACRPara_m95",
		"CUP_B_HikingPack_Civ"
	    ];
	    _availableBackpacks = _availableBackpacks + _availableBackpacksFive;
    };

_availableMagazine = [
	//baton + telebat
	"nonlethal_swing",
	//M9
	"RH_15rnd_9x19_m9",
	//G17
	"RH_17rnd_9x19_g17",
	//Taser
	"DDOPP_1rnd_x26",
	//FN57
	"RH_20Rnd_57x28_FN",
	//USPM
	"RH_16rnd_40cal_usp",
	//ranging bull
	"Rh_6rnd_454_mag",
	//kimber night warrior
	"rh_7rnd_45cal_m1911",
	//M4A1
	"hlc_3rnd_556x45_EPR",
	//MP5
	"hlc_30rnd_9x19_b_MP5",
	//MK14
	"ACE_20rnd_762_51_M118LR_Mag"
];

	if(player getVariable ["cop",0] > 6) then {
		_availableMagazineSeven = [
			"SUPER_flash"
		];
		_availableMagazine = _availableMagazine + _availableMagazineSeven;
	};

 
_availableWeapon = [
	//"CG_BATON",
	//"CG_TELBAT",
	"RH_M9",
	"RH_g17",
	"DDOPP_X26"
];
    if (player getvariable ["cop", 0] > 1) then {
	_availableWeaponOne = [
		"hlc_smg_mp5a4"
    ];
    _availableWeapon = _availableWeapon + _availableWeaponOne;
    };

    if (player getvariable ["cop", 0] > 3) then {
	_availableWeaponThree = [
		"hlc_rifle_M4a1carryhandle"
    ];
    _availableWeapon = _availableWeapon + _availableWeaponThree;
    };

    if (player getvariable ["cop", 0] > 4) then {
    _availableWeaponFour = [
		"RH_fn57"
    ];
    _availableWeapon = _availableWeapon + _availableWeaponFour;
    };

    if (player getvariable ["cop", 0] > 5) then {
    _availableWeaponFive =[
		"RH_uspm"
    ];
     _availableWeapon = _availableWeapon + _availableWeaponFive;
    };

    if (player getvariable ["cop", 0] > 6) then {
    _availableWeaponSix = [
    ];
    _availableWeapon = _availableWeapon + _availableWeaponSix;
    };

    if (player getvariable ["cop", 0] > 7) then {
    _availableWeaponSeven = [
		"RH_kimber_nw"
    ];
     _availableWeapon = _availableWeapon + _availableWeaponSeven;
    };

	if (player getvariable ["cop", 0] > 8) then {
    _availableWeaponEight = [
		"RH_bullb",
		"srifle_EBR_F"
    ];
     _availableWeapon = _availableWeapon + _availableWeaponEight;
    };


_availableAttachments = [
	"rh_eotexps3",
	"RH_barska_rds",
	"acc_flashlight",
	"RH_SFM952V",
	"RH_M6X",
	"RH_ta31rco",
	"RH_compM2",
	"hlc_optic_atacr"
];

_availableItems = [
	"tf_anprc152",
	"ItemMap",
	"ItemCompass",
	"Itemwatch",
	"prpg_tablet",
	"ItemGPS",
	"pmc_earpiece",
	"NP_8mPoliceLine",
	"NP_4mPoliceLine",
	"NP_1mPoliceLine",
	"NP_PoliceBarrierL",
	"NP_PoliceBarrierS",
	"CG_Spikes_Collapsed",
	"CG_wheel",
	//"cg_atf_bandage_i",
	"kif_gopro",
	//"kif_panicbutton"
	"ACE_CableTie",
	"ACE_Flashlight_XL50",
	"ACE_EarPlugs",
	"ACE_fieldDressing",
	"ACE_Tourniquet",
	"ACE_Splint",
	"np_water",
	"np_beefsoup"
];


[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests + _availableAttachments + _availableItems)] call BIS_fnc_addVirtualItemCargo;
[_crate,((magazineCargo _crate) + _availableMagazine)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) + _availableWeapon)] call BIS_fnc_addVirtualWeaponCargo;
