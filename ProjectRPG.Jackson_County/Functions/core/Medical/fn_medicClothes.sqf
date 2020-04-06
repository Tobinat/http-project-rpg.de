//null = [this] execVM "virtual_arsenal_init.sqf"

//	[
//		[" (myjob == ""Cop"" && typeof cursorobject == ""Box_NATO_Uniforms_F"") && player getvariable ""cop"" > 1 "],
//		["MUNDURY", "[cursorobject] spawn client_fnc_vars"]
//	],



_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;
 
 
_availableHeadgear = [
    "CUP_H_C_Fireman_Helmet_01",
    "TCG_pdav_helmet"
];
 
_availableGoggles = [
	"Masque_Chirurgical",
	"G_Lady_Blue",
	"EF_FG1",
	"EF_FG2",
	"G_Diving",
	"G_Spectacles",
	"G_Aviator",
	"G_Sport_BlackWhite",
	"G_Shades_Black",
	"G_Sport_Blackred",
	"TAC_shoulder_armorC_BK",
	"TRYK_headset_Glasses",
	"TRYK_Spset_PHC1_Glasses",
	"TRYK_Spset_PHC2_Glasses",
	"TRYK_TAC_EARMUFF_SHADE_Gs",
	"TAC_SF10"
];
 
_availableUniforms = [
    "TCG_Police_Pilot",
    "vvv_traje_bombero_2",
    "vvv_traje_bombero",
    "vvv_traje_doctor",
    "CG_EMS2",
    "CG_EMS1",
    "CG_EMS9",
    "CG_EMS3",
    "CG_EMS4",
    "CG_EMS10",
    "CG_EMS7",
    "CG_EMS8",
    "CG_EMS5",
    "CG_EMS6",
    "CUP_U_C_Rescuer_01",
    "U_BasicBody_FS",
    "female_ems3",
    "female_ems2",
    "female_ems1",
    "female_ems4",
    "female_ems7",
    "female_ems6",
    "female_ems9",
    "female_ems8",
    "female_ems5",
    "female_ems",
    "kiffd_uni_coastg",
    "CUP_U_C_Fireman_01",
    "kiffd_uni_dowodca",
    "kiffd_uni_koszula",
    "EF_FEM_3A_EMS",
    "EF_FEM_3_6_EMS",
    "EF_FEM_4A_EMS",
    "EF_FEM_4A_EMS2",
    "EF_FEM_4_5_EMS",
    "EF_MKJKT_EMS",
    "EF_MKJKT_EMS2",
    "EF_M_EMS_U"
];
 
_availableVests = [
    "CUP_V_B_LHDVest_Blue",
    "CUP_V_B_LHDVest_Brown",
    "CUP_V_B_LHDVest_Green",
    "CUP_V_B_LHDVest_Red",
    "CUP_V_B_LHDVest_Violet",
    "CUP_V_B_LHDVest_White",
    "CUP_V_B_LHDVest_Yellow",
    "kif_fd_chief",
    "kif_fd_probie",
    "kif_fd_fd",
    "kif_fd_divchief",
    "sl_traffic_fire",
    "kif_emt_traffic_controller_vest"
];
 
_availableBackpacks = [
    "TRYK_B_Medbag_ucp",
    "TRYK_B_Medbag_OD",
    "TRYK_B_Medbag_BK",
    "TRYK_B_Medbag",
    "TRYK_B_Kitbag_blk",
    "TAC_BP_Butt_B",
    "B_FieldPack_blk",
    "B_AssaultPack_blk",
    "CUP_B_SLA_Medicbag",
    "TAC_LBT_LEGAB_BK"
 
];
 
_availableMagazine = [
    "Manguera_magazine"
];
 
_availableWeapon = [
    "fireextinguisher",
    "Binocular"
];

_availableAttachments = [

];
 
_availableItems = [
    "tf_anprc152",
	"ItemMap",
	"ItemCompass",
	"Itemwatch",
	"cg_tabletd",
	"ItemGPS",
	"TRYK_Headset_NV",
	"NP_8mPoliceLine",
	"NP_4mPoliceLine",
	"NP_1mPoliceLine",
	"NP_PoliceBarrierL",
	"NP_PoliceBarrierS",
	"CG_wheel",
	"cg_atf_bandage_i"
];


[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests)] call BIS_fnc_addVirtualItemCargo;
[_crate,((magazineCargo _crate) + _availableMagazine)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) + _availableWeapon)] call BIS_fnc_addVirtualWeaponCargo;
