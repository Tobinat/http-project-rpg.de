_vehicle = _this select 0;
if(isNull _vehicle)exitWith{};
diag_log "Vehicle Inited";
__policeCars = ["DRPG_06Victoria_P_P", "DRPG_10Taurus_P_P","DRPG_10Taurus_P_U","DRPG_08Commodore_P_P",
"DRPG_06Victoria_P_T",
"DRPG_08Commodore_P_T2",
"DRPG_08Commodore_P_U",
"DRPG_08Commodore_P_U_Red",
"DRPG_08Commodore_P_U_Blue",
"DRPG_08Commodore_P_U_White",
//BMW
"DRPG_12M5_P_P",
"DRPG_12M5_P_LVPD",
"DRPG_12M5_P_SHERIFF",
"DRPG_12M5_P_FBI",
"DRPG_12M5_P_STATE",
//Surburban06
"DRPG_06Suburban_P_P",
"DRPG_06Suburban_P_FBI",
"DRPG_06Suburban_P_LVPD",
"DRPG_06Suburban_P_Sheriff",
"DRPG_06Suburban_P_State",
//Surburban08
"DRPG_08Suburban_P_U",
//Tahoe09
"DRPG_09Tahoe_P_P",
"DRPG_09Tahoe_P_FBI",
"DRPG_09Tahoe_P_LVPD",
"DRPG_09Tahoe_P_Sheriff",
"DRPG_09Tahoe_P_State",
//Charger12
"DRPG_12Charger_P_P",
"DRPG_12Charger_P_U_Black",
"DRPG_12Charger_P_LVPD",
"DRPG_12Charger_P_Sheriff",
"DRPG_12Charger_P_FBI",
"DRPG_12Charger_P_STATE",
//Charger15
"DRPG_15Charger_P_P",
"DRPG_15Charger_P_FBI",
"DRPG_15Charger_P_LVPD",
"DRPG_15Charger_P_Sheriff",
"DRPG_15Charger_P_State",
"DRPG_15Charger_P_U",
//Explorer
"DRPG_14Explorer_P_P",
//Swatvan
"UGC_Swat_Van",
//ShounkaCop
"Mrshounka_agera_gend_p",
"Mrshounka_bmw_gend",
"Mrshounka_evox_gend",
"shounka_a3_audiq7_v2_gendarmerie",
"shounka_a3_gendsprinter",
"Mrshounka_subaru08_police",
"shounka_a3_suburbangign",
"Mrshounka_Touareg_police"


];
_suburbans = ["DRPG_08Suburban_P_U"];



_EMS= [
"shounka_a3_pompier_sprinter",
"DRPG_06Victoria_EMS",
"DRPG_15Charger_EMS",
"DRPG_12Charger_EMS",
"DRPG_09Tahoe_EMS",
"DRPG_06Suburban_EMS",
"DRPG_12M5_EMS"
];


_blockEmissive = _EMS;

if(typeOf(_vehicle) in __policeCars && !(typeof(_vehicle) in _blockEmissive))then{
	[_vehicle] execVM "\DRPG_VehicleData\scripts\Lights_Emissive.sqf";
};
if(typeOF(_vehicle) in __policeCars)then{
	[_vehicle, 0.5, ["Light_L"], ["Light_R"]] execVM "\DRPG_VehicleData\Scripts\Lights.sqf";
};
if(typeOf(_vehicle) == "DRPG_08Commodore_P_R")then{
	[_vehicle] execVM "\DRPG_VehicleData\scripts\Commy_Lights.sqf";
};
	
if(typeOf(_vehicle) in _EMS)then{
	[_vehicle] execVM "\PRPG_Data\Scripts\Lights_EMS.sqf";
};	
/*// Wait for Server-Reliant data to be retrieved
waitUntil {!isNil "AM_SirenSystem"};
[_vehicle] spawn AM_SirenSystem;3*/
_vehicle setVariable ["prpg_siren",0,true];
[_vehicle] execVM "\PRPG_Data\Scripts\sirens.sqf";