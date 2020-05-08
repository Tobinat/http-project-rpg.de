/*

	Author: project-rpg.de
	Date: 21.04.2020

	Arsenal für Medics
*/
	
/*

_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;


_availableHeadgear = [
	"PRPG_Cap_ems_1",
	"PRPG_Cap_ems_2"
];
 
_availableGoggles = [
	"Masque_Chirurgical",
	"Mask_M40"
];
 
_availableUniforms = [
	"PRPG_FD_Uniform_Firefighter1",
	"PRPG_EMS_Paramedic1",
	"female_ems",
	"vvv_traje_bombero"
];
	if (player getvariable ["ems", 0] > 2) then {
		_availableUniformsOne = [
			"PRPG_FD_Uniform_Lieutenant1",
			"PRPG_EMS_Paramedic_21",
			"vvv_traje_doctor",
			"EF_F_DR"
		];
		_availableUniforms = _availableUniforms + _availableUniformsOne;
	};

	if (player getvariable ["ems", 0] > 3) then {
		_availableUniformsTwo = [
			"PRPG_FD_Uniform_Captain1",
			"PRPG_EMS_Overall_11",
			"PRPG_EMS_Overall_21",
			"PRPG_EMS_Overall_31"
		];
		_availableUniforms = _availableUniforms + _availableUniformsTwo;
	};

	if (player getvariable ["ems", 0] > 4) then {
		_availableUniformsThree = [
			"PRPG_FD_Uniform_BattalionChief1",
			"vvv_hazmat"
		];
		_availableUniforms = _availableUniforms + _availableUniformsThree;
	};

	if (player getvariable ["ems", 0] > 5) then {
		_availableUniformsFour = [
			"PRPG_FD_Uniform_DivisionChief1"
		];
		_availableUniforms = _availableUniforms + _availableUniformsFour;
	};

	if (player getvariable ["ems", 0] > 6) then {
		_availableUniformsFive = [
			"PRPG_FD_Uniform_AssistantChief1"
		];
		_availableUniforms = _availableUniforms + _availableUniformsFive;
	};

	if (player getvariable ["ems", 0] > 7) then {
		_availableUniformsSix = [
			"PRPG_FD_Uniform_Chief1"
		];
		_availableUniforms = _availableUniforms + _availableUniformsSix;
	};

_availableVests = [
	"PRPG_EMS_Belt"
];

	if (player getvariable ["ems", 0] > 3) then {
		_availableVestsOne = [
			"PRPG_EMS_BallistX"
		];
		_availableVests = _availableVests + _availableVestsOne;
	};
 
_availableBackpacks = [
	"invisible_carryall"
];
 
_availableMagazine = [
	"Manguera_magazine"
];
 
_availableWeapon = [
	"fireextinguisher"
];

_availableAttachments = [

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
	"prpg_item_wheel_kit",
	"ACE_Flashlight_XL50",
	"ACE_EarPlugs",
	"ACE_fieldDressing",
	"ACE_Tourniquet",
	"ACE_Splint",
	"ACE_bodyBag",
	"ACE_packingBandage",
	"ACE_elasticBandage",
	"ACE_quikclot",
	"ACE_salineIV_500",
	"ACE_salineIV",
	"ACE_surgicalKit",
	"ACE_morphine",
	"ACE_epinephrine",
	"ACE_atropine",
	"np_water",
	"np_beefsoup"
];

	if (player getvariable ["ems", 0] > 4) then {
		_availableItemsOne = [
			"FSGm_ItemMedicBag"
		];
		_availableItems = _availableItems + _availableItemsOne;
	};

	if (player getvariable ["ems", 0] > 5) then {
		_availableItemsTwo = [
			"ACE_personalAidKit"
		];
		_availableItems = _availableItems + _availableItemsTwo;
	};


[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests)] call BIS_fnc_addVirtualItemCargo;
[_crate,((magazineCargo _crate) + _availableMagazine)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) + _availableWeapon)] call BIS_fnc_addVirtualWeaponCargo;

*/

_ems = player getVariable "ems";

switch (_ems) do {
	case "1": {};
	case "2": {};
	case "3": {};

};
[curosrTarget,
["fireextinguisher","ACE_Flashlight_Maglite_ML300L","PRPG_Cap_ems_1","PRPG_Cap_ems_2","PRPG_EMS_Paramedic_21","PRPG_FD_Uniform_AssistantChief1","PRPG_FD_Uniform_BattalionChief1","PRPG_FD_Uniform_Captain1","PRPG_FD_Uniform_Chief1","PRPG_FD_Uniform_DivisionChief1","PRPG_FD_Uniform_Firefighter1","PRPG_FD_Uniform_Lieutenant1","vvv_traje_bombero","vvv_traje_bombero_2","vvv_hazmat","PRPG_EMS_Paramedic1","PRPG_EMS_Overall_31","PRPG_EMS_Overall_21","PRPG_EMS_Overall_11","PRPG_EMS_Belt","PRPG_EMS_BallistX","invisible_carryall","G_Aviator","Mask_M40","Masque_Chirurgical","G_Spectacles","G_Spectacles_Tinted","pmc_earpiece","ItemMap","ItemCompass","TFAR_anprc152","Itemwatch","ItemGPS","ACE_adenosine","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","ACE_bodyBag","ACE_EarPlugs","ACE_epinephrine","FSGm_ItemMedicBag","ACE_Flashlight_XL50","ACE_morphine","ACE_personalAidKit","ACE_salineIV","ACE_salineIV_500","ACE_surgicalKit","ACE_tourniquet"]
] call ace_arsenal_fnc_initBox;