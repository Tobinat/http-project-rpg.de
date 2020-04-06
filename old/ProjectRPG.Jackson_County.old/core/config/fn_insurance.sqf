#include <macro.h>
/*Filename: fn_insurance.sqfAuthor: Kevin WebbDescription: Simple way of insuring the vehicle. Will be modified in the future.*/

private["_nearVehicles","_vehicle","_price"];
if(vehicle player != player) then
{
	_vehicle = vehicle player;
}	
else
{	_nearVehicles = nearestObjects[getPos player,["Car","Air","Ship","Motorcycle"],50];	
if(count _nearVehicles > 0) 
then{
{			
if(!isNil "_vehicle") exitWith {}; 
//Kill the loop.			
_vehData = _x getVariable["vehicle_info_owners",[]];			
if(count _vehData  > 0) 
then{
_vehOwner = (_vehData select 0) select 0;
if((getPlayerUID player) == _vehOwner) exitWith				{
_vehicle = _x;				};			};		} foreach _nearVehicles;	};};
if(isNil "_vehicle") exitWith {hint "Überpruefen Sie ob ihr Fahrzeug in der nähe steht!";};
if(isNull _vehicle) exitWith {};if(_vehicle getVariable["isInsured",false]) exitWith { hint "Dieses Fahrzeug ist bereits versichert."; };
if(!(_vehicle in life_vehicles)) exitWith {hint "Das Fahrzeug gehört nicht Ihnen.";};
_price = switch(typeOf _vehicle) do{
	// case "B_Heli_Light_01_F": { 25000};
	// case "C_SUV_01_F": { 11000};
	// case "C_Offroad_01_F": { 4000};
	// case "C_Hatchback_01_sport_F": { 22500};
	// case "O_Heli_Light_02_unarmed_F": { 50000};
	// case "B_Quadbike_01_F": { 700};
	// case "C_Van_01_transport_F": { 12000};
	// case "C_Van_01_box_F": { 18000};
	// case "C_Van_01_fuel_F": { 21000};
	// case "I_Truck_02_transport_F": { 22500};
	// case "I_Truck_02_covered_F": { 30000};
	// case "B_Truck_01_fuel_F": { 40000};
	// case "B_Truck_01_transport_F": { 40000};
	// case "B_Truck_01_box_F": { 45000};
	// case "B_Truck_01_covered_F": { 41500};
	// case "O_Truck_03_fuel_F": { 32000};
	// case "O_Truck_03_covered_F": { 38000};
	// case "O_Truck_03_device_F": { 44000};
	// case "I_G_Offroad_01_F": { 4500};
	// case "I_G_Offroad_01_armed_F": { 76000};
	// case "O_MRAP_02_F": { 58000};
	// case "I_Heli_Transport_02_F": { 100000};
	// case "I_Heli_light_03_unarmed_F": { 50000};
	// case "B_Heli_Transport_01_F": { 15000};
	// case "C_Rubberboat": { 1500};
	// case "C_Boat_Civil_01_F": { 6600};
	// case "C_Boat_Civil_01_rescue_F": { 6600};
	// case "O_SDV_01_F": { 30000};
	// case "B_Boat_Transport_01_F": { 900};
	// case "C_Boat_Civil_01_police_F": { 6000};
	// case "B_SDV_01_F": { 30000};
	// case "B_Boat_Armed_01_minigun_F": { 40000};
	// case "B_Heli_Transport_03_F": {50000};
	// case "B_Heli_Transport_03_unarmed_F": {50000};
	// case "O_Heli_Transport_04_F": {50000};
	// case "O_Heli_Transport_04_ammo_F": {50000};
	// case "O_Heli_Transport_04_box_F": {50000};
	// case "O_Heli_Transport_04_medevac_F": {50000};
	// case "O_Heli_Transport_04_fuel_F": {50000};
	// case "O_Heli_Transport_04_bench_F": {50000};
	// case "O_Heli_Transport_04_repair_F": {50000};
	// case "O_Heli_Transport_04_covered_F": {50000};
	// case "C_Heli_Light_01_civil_F": {25000};
	
	case "IVORY_PRIUS": {25000};
	case "ivory_supra": {25000};
	case "ivory_supra_tuned": {25000};
	case "ivory_isf": {25000};
	case "ivory_m3": {25000};
	case "ivory_m3_gts": {25000};
	case "ivory_gt500": {25000};
	case "ivory_wrx": {25000};
	case "ivory_lp560": {25000};
	case "IVORY_R8": {25000};
	case "IVORY_R8SPYDER": {25000};
	case "IVORY_REV": {25000};
	case "ivory_lfa": {25000};
	case "ivory_c": {25000};
	
	case "Jonzie_Quattroporte": {25000};
	case "Jonzie_30CSL": {25000};
	case "Jonzie_Viper": {25000};
	case "Jonzie_Datsun_Z432": {25000};
	case "Jonzie_STI": {25000};
	case "Jonzie_Escalade": {25000};
	case "Jonzie_Datsun_510": {25000};
	case "Jonzie_Ceed": {25000};
	case "Jonzie_Raptor": {25000};
	case "Jonzie_Galant": {25000};
	case "Jonzie_Corolla": {25000};
	case "Jonzie_Mini_Cooper": {25000};
	case "Jonzie_Mini_Cooper_R_spec": {25000};
	case "Jonzie_XB": {25000};
	case "Jonzie_VE": {25000};
	case "Jonzie_Ute": {25000};
	
	case "A3L_Karts": {25000};
	case "C_Kart_01_Blu_F": {25000};
	case "C_Kart_01_Fuel_F": {25000};
	case "C_Kart_01_Red_F": {25000};
	case "C_Kart_01_Vrana_F": {25000};
	
	case "ivory_wrx_med_ems": {25000};
	case "cg_merc_atego_firetruck_reg": {25000};
	case "cg_mercedes_sprinter_ems": {25000};
	case "IVORY_PRIUS": {25000};
	case "cg_evoems1": {25000};
	case "cg_evoems2": {25000};
	case "cg_evoems3": {25000};
	case "A3L_CVPILBFD": {25000};
	case "cg_ambulanceexpansion": {25000};
	case "DAR_TahoeEMS": {25000};
	case "AM_Holden_EMS": {25000};
	
	case "ivory_b206_rescue": {25000};
	case "IVORY_BELL512_RESCUE": {25000};
	case "ems_chopper": {25000};
	case "ems_chopper2": {25000};
	case "ems_orca": {25000};
	case "ems_orca2": {25000};
	case "O_Heli_Transport_04_medevac_F": {25000};
	
	case "cg_peugeot_207_rc_noir": {25000};
	case "cg_peugeot_207_rc_violet": {25000};
	case "cg_peugeot_207_rc_rose": {25000};
	case "cg_peugeot_207_rc_orange": {25000};
	case "cg_peugeot_207_rc_grise": {25000};
	case "cg_peugeot_207_rc_vert": {25000};
	case "cg_peugeot_207_rc_bleufonce": {25000};
	case "cg_peugeot_207_rc_bleu": {25000};
	case "cg_peugeot_207_rc_white": {25000};
	case "cg_peugeot_207_rc_jaune": {25000};
	
	case "cg_volkswagen_touareg_noir": {25000};
	case "cg_volkswagen_touareg_violet": {25000};
	case "cg_volkswagen_touareg_rose": {25000};
	case "cg_volkswagen_touareg_orange": {25000};
	case "cg_volkswagen_touareg_grise": {25000};
	case "cg_volkswagen_touareg_vert": {25000};
	case "cg_volkswagen_touareg_bleufonce": {25000};
	case "cg_volkswagen_touareg_bleu": {25000};
	case "cg_volkswagen_touareg_white": {25000};
	case "cg_volkswagen_touareg_jaune": {25000};
	
	case "cg_vw_golfvi_noir": {25000};
	case "cg_vw_golfvi_violet": {25000};
	case "cg_vw_golfvi_rose": {25000};
	case "cg_vw_golfvi_orange": {25000};
	case "cg_vw_golfvi_grise": {25000};
	case "cg_vw_golfvi_vert": {25000};
	case "cg_vw_golfvi_bleufonce": {25000};
	case "cg_vw_golfvi_bleu": {25000};
	case "cg_vw_golfvi_white": {25000};
	case "cg_vw_golfvi_jaune": {25000};
	
	case "cg_jeep_cherokee_noir": {25000};
	case "cg_jeep_cherokee_violet": {25000};
	case "cg_jeep_cherokee_rose": {25000};
	case "cg_jeep_cherokee_orange": {25000};
	case "cg_jeep_cherokee_grise": {25000};
	case "cg_jeep_cherokee_vert": {25000};
	case "cg_jeep_cherokee_bleufonce": {25000};
	case "cg_jeep_cherokee_bleu": {25000};
	case "cg_jeep_cherokee_jaune": {25000};
	case "cg_jeep_cherokee_white": {25000};
	
	case "cg_audi_rs4_noir": {25000};
	case "cg_audi_rs4_violet": {25000};
	case "cg_audi_rs4_rose": {25000};
	case "cg_audi_rs4_orange": {25000};
	case "cg_audi_rs4_grise": {25000};
	case "cg_audi_rs4_vert": {25000};
	case "cg_audi_rs4_bleufonce": {25000};
	case "cg_audi_rs4_bleu": {25000};
	case "cg_audi_rs4_white": {25000};
	case "cg_audi_rs4_jaune": {25000};
	
	case "cg_audi_rs5_noir": {25000};
	case "cg_audi_rs5_violet": {25000};
	case "cg_audi_rs5_rose": {25000};
	case "cg_audi_rs5_orange": {25000};
	case "cg_audi_rs5_grise": {25000};
	case "cg_audi_rs5_vert": {25000};
	case "cg_audi_rs5_bleufonce": {25000};
	case "cg_audi_rs5_bleu": {25000};
	case "cg_audi_rs5_white": {25000};
	case "cg_audi_rs5_jaune": {25000};
	
	case "cg_bmw_1series_m_noir": {25000};
	case "cg_bmw_1series_m_violet": {25000};
	case "cg_bmw_1series_m_rose": {25000};
	case "cg_bmw_1series_m_orange": {25000};
	case "cg_bmw_1series_m_grise": {25000};
	case "cg_bmw_1series_m_vert": {25000};
	case "cg_bmw_1series_m_bleufonce": {25000};
	case "cg_bmw_1series_m_bleu": {25000};
	case "cg_bmw_1series_m_white": {25000};
	case "cg_bmw_1series_m_jaune": {25000};
	
	case "cg_renault_megane_rs_2015_noir": {25000};
	case "cg_renault_megane_rs_2015_violet": {25000};
	case "cg_renault_megane_rs_2015_rose": {25000};
	case "cg_renault_megane_rs_2015_orange": {25000};
	case "cg_renault_megane_rs_2015_grise": {25000};
	case "cg_renault_megane_rs_2015_vert": {25000};
	case "cg_renault_megane_rs_2015_bleu": {25000};
	case "cg_renault_megane_rs_2015_white": {25000};
	case "cg_renault_megane_rs_2015_jaune": {25000};
	case "cg_renault_megane_rs_2015_bleufonce": {25000};
	
	case "Mrshounka_c63_2015_bleufonce": {25000};
	case "Mrshounka_c63_2015_grise": {25000};
	case "Mrshounka_c63_2015_jaune": {25000};
	case "Mrshounka_c63_2015_noir": {25000};
	case "Mrshounka_c63_2015_orange": {25000};
	case "Mrshounka_c63_2015_rose": {25000};
	case "Mrshounka_c63_2015_rouge": {25000};
	case "Mrshounka_c63_2015_violet": {25000};
	
	case "cg_bmw_m6_noir": {25000};
	case "cg_bmw_m6_violet": {25000};
	case "cg_bmw_m6_rose": {25000};
	case "cg_bmw_m6_orange": {25000};
	case "cg_bmw_m6_grise": {25000};
	case "cg_bmw_m6_vert": {25000};
	case "cg_bmw_m6_bleufonce": {25000};
	case "cg_bmw_m6_bleu": {25000};
	case "cg_bmw_m6_white": {25000};
	case "cg_bmw_m6_jaune": {25000};
	
	case "cg_raptor_truck_noir": {25000};
	case "cg_raptor_truck_violet": {25000};
	case "cg_raptor_truck_rose": {25000};
	case "cg_raptor_truck_orange": {25000};
	case "cg_raptor_truck_grise": {25000};
	case "cg_raptor_truck_vert": {25000};
	case "cg_raptor_truck_bleufonce": {25000};
	case "cg_raptor_truck_bleu": {25000};
	case "cg_raptor_truck_white": {25000};
	case "cg_raptor_truck_jaune": {25000};
	
	case "cg_porsche_911_82_noir": {25000};
	case "cg_porsche_911_82_violet": {25000};
	case "cg_porsche_911_82_rose": {25000};
	case "cg_porsche_911_82_orange": {25000};
	case "cg_porsche_911_82_grise": {25000};
	case "cg_porsche_911_82_vert": {25000};
	case "cg_porsche_911_82_bleufonce": {25000};
	case "cg_porsche_911_82_bleu": {25000};
	case "cg_porsche_911_82_white": {25000};
	case "cg_porsche_911_82_jaune": {25000};
	
	case "cg_porsche_cayenne_noir": {25000};
	case "cg_porsche_cayenne_violet": {25000};
	case "cg_porsche_cayenne_rose": {25000};
	case "cg_porsche_cayenne_orange": {25000};
	case "cg_porsche_cayenne_grise": {25000};
	case "cg_porsche_cayenne_vert": {25000};
	case "cg_porsche_cayenne_bleufonce": {25000};
	case "cg_porsche_cayenne_bleu": {25000};
	case "cg_porsche_cayenne_white": {25000};
	case "cg_porsche_cayenne_jaune": {25000};
	
	case "cg_bowler_offroad_noir": {25000};
	case "cg_bowler_offroad_violet": {25000};
	case "cg_bowler_offroad_rose": {25000};
	case "cg_bowler_offroad_orange": {25000};
	case "cg_bowler_offroad_grise": {25000};
	case "cg_bowler_offroad_vert": {25000};
	case "cg_bowler_offroad_bleufonce": {25000};
	case "cg_bowler_offroad_bleu": {25000};
	case "cg_bowler_offroad_white": {25000};
	case "cg_bowler_offroad_jaune": {25000};
	
	case "shounka_gt_bleufonce": {25000};
	case "shounka_gt_grise": {25000};
	case "shounka_gt_jaune": {25000};
	case "shounka_gt_noir": {25000};
	case "shounka_gt_orange": {25000};
	case "shounka_gt_rose": {25000};
	case "shounka_gt_rouge": {25000};
	case "shounka_gt_violet": {25000};
	
	case "Mrshounka_mercedes_190_p_bleufonce": {25000};
	case "Mrshounka_mercedes_190_p_grise": {25000};
	case "Mrshounka_mercedes_190_p_jaune": {25000};
	case "Mrshounka_mercedes_190_p_noir": {25000};
	case "Mrshounka_mercedes_190_p_orange": {25000};
	case "Mrshounka_mercedes_190_p_rose": {25000};
	case "Mrshounka_mercedes_190_p_rouge": {25000};
	case "Mrshounka_mercedes_190_p_violet": {25000};
	
	case "AM_Holden_White": {25000};
	case "AM_Holden_Black": {25000};
	case "AM_Holden_Green": {25000};
	case "AM_Holden_DarkGreen": {25000};
	case "AM_Holden_OffGreen": {25000};
	case "AM_Holden_blue": {25000};
	case "AM_Holden_OffYellow": {25000};
	case "AM_Holden_Pink": {25000};
	case "AM_Holden_Purple": {25000};
	case "AM_Holden_Yellow": {25000};
	
	case "cg_nissan_gtr_2012_noir": {25000};
	case "cg_nissan_gtr_2012_violet": {25000};
	case "cg_nissan_gtr_2012_rose": {25000};
	case "cg_nissan_gtr_2012_orange": {25000};
	case "cg_nissan_gtr_2012_grise": {25000};
	case "cg_nissan_gtr_2012_vert": {25000};
	case "cg_nissan_gtr_2012_bleufonce": {25000};
	case "cg_nissan_gtr_2012_bleu": {25000};
	case "cg_nissan_gtr_2012_white": {25000};
	case "cg_nissan_gtr_2012_jaune": {25000};
	
	case "shounka_mp4_bleufonce": {25000};
	case "shounka_mp4_grise": {25000};
	case "shounka_mp4_jaune": {25000};
	case "shounka_mp4_noir": {25000};
	case "shounka_mp4_orange": {25000};
	case "shounka_mp4_rose": {25000};
	case "shounka_mp4_rouge": {25000};
	case "shounka_mp4_violet": {25000};
	
	case "shounka_clk_bleufonce": {25000};
	case "shounka_clk_grise": {25000};
	case "shounka_clk_jaune": {25000};
	case "shounka_clk_noir": {25000};
	case "shounka_clk_orange": {25000};
	case "shounka_clk_rose": {25000};
	case "shounka_clk_rouge": {25000};
	case "shounka_clk_violet": {25000};
	
	case "cg_jeep_blinde_noir": {25000};
	case "cg_jeep_blinde_violet": {25000};
	case "cg_jeep_blinde_rose": {25000};
	case "cg_jeep_blinde_orange": {25000};
	case "cg_jeep_blinde_grise": {25000};
	case "cg_jeep_blinde_vert": {25000};
	case "cg_jeep_blinde_bleufonce": {25000};
	case "cg_jeep_blinde_bleu": {25000};
	case "cg_jeep_blinde_white": {25000};
	case "cg_jeep_blinde_jaune": {25000};
	
	case "cg_lancer_evo_x_noir": {25000};
	case "cg_lancer_evo_x_violet": {25000};
	case "cg_lancer_evo_x_rose": {25000};
	case "cg_lancer_evo_x_orange": {25000};
	case "cg_lancer_evo_x_grise": {25000};
	case "cg_lancer_evo_x_vert": {25000};
	case "cg_lancer_evo_x_bleufonce": {25000};
	case "cg_lancer_evo_x_bleu": {25000};
	case "cg_lancer_evo_x_white": {25000};
	case "cg_lancer_evo_x_jaune": {25000};
	
	case "Mrshounka_pagani_c_bleufonce": {25000};
	case "Mrshounka_pagani_c_grise": {25000};
	case "Mrshounka_pagani_c_jaune": {25000};
	case "Mrshounka_pagani_c_noir": {25000};
	case "Mrshounka_pagani_c_orange": {25000};
	case "Mrshounka_pagani_c_rose": {25000};
	case "Mrshounka_pagani_c_rouge": {25000};
	case "Mrshounka_pagani_c_violet": {25000};
	
	case "cg_lambo_veneno_noir": {25000};
	case "cg_lambo_veneno_violet": {25000};
	case "cg_lambo_veneno_rose": {25000};
	case "cg_lambo_veneno_orange": {25000};
	case "cg_lambo_veneno_grise": {25000};
	case "cg_lambo_veneno_vert": {25000};
	case "cg_lambo_veneno_bleufonce": {25000};
	case "cg_lambo_veneno_bleu": {25000};
	case "cg_lambo_veneno_white": {25000};
	case "cg_lambo_veneno_jaune": {25000};
	
	case "AM_Holden_RBlue": {25000};
	case "AM_Holden_RRed": {25000};
	case "AM_Holden_RWhite": {25000};
	case "AM_Holden_RBlack": {25000};
	
	case "Mrshounka_lykan_c_bleufonce": {25000};
	case "Mrshounka_lykan_c_grise": {25000};
	case "Mrshounka_lykan_c_jaune": {25000};
	case "Mrshounka_lykan_c_noir": {25000};
	case "Mrshounka_lykan_c_orange": {25000};
	case "Mrshounka_lykan_c_rose": {25000};
	case "Mrshounka_lykan_c_rouge": {25000};
	case "Mrshounka_lykan_c_violet": {25000};
	
	case "shounka_f430_spider_bleufonce": {25000};
	case "shounka_f430_spider_grise": {25000};
	case "shounka_f430_spider_jaune": {25000};
	case "shounka_f430_spider_noir": {25000};
	case "shounka_f430_spider_orange": {25000};
	case "shounka_f430_spider_rose": {25000};
	case "shounka_f430_spider_rouge": {25000};
	case "shounka_f430_spider_violet": {25000};
	
	case "shounka_porsche911_bleufonce": {25000};
	case "shounka_porsche911_grise": {25000};
	case "shounka_porsche911_jaune": {25000};
	case "shounka_porsche911_noir": {25000};
	case "shounka_porsche911_orange": {25000};
	case "shounka_porsche911_rose": {25000};
	case "shounka_porsche911_rouge": {25000};
	case "shounka_porsche911_violet": {25000};
	
	case "CG_Lamborghini_Aventador_Red": {25000};
	case "CG_Lamborghini_Aventador_Black": {25000};
	case "CG_Lamborghini_Aventador_Blue": {25000};
	case "CG_Lamborghini_Aventador_Green": {25000};
	case "CG_Lamborghini_Aventador_Orange": {25000};
	case "CG_Lamborghini_Aventador_Purple": {25000};
	case "CG_Lamborghini_Aventador_White": {25000};
	
	case "A3L_EvoXrally_green": {25000};
	case "A3L_EvoXrally_white": {25000};
	case "A3L_EvoXrally_red": {25000};
	case "A3L_EvoXrally_blue": {25000};
	
	case "DAR_TahoeCivSilver": {25000};
	case "DAR_TahoeCivBlue": {25000};
	case "DAR_TahoeCivRed": {25000};
	case "DAR_TahoeCivBlack": {25000};
	case "A3L_SuburbanBlue": {25000};
	case "A3L_SuburbanRed": {25000};
	case "A3L_SuburbanBlack": {25000};
	case "A3L_SuburbanGrey": {25000};
	case "A3L_SuburbanOrange": {25000};
	case "A3L_Camaro": {25000};
	
	case "cg_raptor_truck_noir": {25000};
	case "cg_raptor_truck_violet": {25000};
	case "cg_raptor_truck_rose": {25000};
	case "cg_raptor_truck_orange": {25000};
	case "cg_raptor_truck_grise": {25000};
	case "cg_raptor_truck_vert": {25000};
	case "cg_raptor_truck_bleufonce": {25000};
	case "cg_raptor_truck_bleu": {25000};
	case "cg_raptor_truck_white": {25000};
	case "cg_raptor_truck_jaune": {25000};
	
	case "cg_raptor_truck_va_noir": {25000};
	case "cg_raptor_truck_va_violet": {25000};
	case "cg_raptor_truck_va_rose": {25000};
	case "cg_raptor_truck_va_orange": {25000};
	case "cg_raptor_truck_va_grise": {25000};
	case "cg_raptor_truck_va_vert": {25000};
	case "cg_raptor_truck_va_bleufonce": {25000};
	case "cg_raptor_truck_va_bleu": {25000};
	case "cg_raptor_truck_va_white": {25000};
	case "cg_raptor_truck_va_jaune": {25000};
	
	case "cg_ford_mustang_noir": {25000};
	case "cg_ford_mustang_violet": {25000};
	case "cg_ford_mustang_rose": {25000};
	case "cg_ford_mustang_orange": {25000};
	case "cg_ford_mustang_grise": {25000};
	case "cg_ford_mustang_vert": {25000};
	case "cg_ford_mustang_bleufonce": {25000};
	case "cg_ford_mustang_bleu": {25000};
	case "cg_ford_mustang_white": {25000};
	case "cg_ford_mustang_jaune": {25000};
	case "cg_ford_mustang_rouge": {25000};
	
	case "AM_2015C_Black": {25000};
	case "AM_2015C_blue": {25000};
	case "AM_2015C_white": {25000};
	
	case "cg_dodge_charger_2015_noir": {25000};
	case "cg_dodge_charger_2015_violet": {25000};
	case "cg_dodge_charger_2015_rose": {25000};
	case "cg_dodge_charger_2015_orange": {25000};
	case "cg_dodge_charger_2015_grise": {25000};
	case "cg_dodge_charger_2015_vert": {25000};
	case "cg_dodge_charger_2015_bleufonce": {25000};
	case "cg_dodge_charger_2015_bleu": {25000};
	case "cg_dodge_charger_2015_white": {25000};
	case "cg_dodge_charger_2015_jaune": {25000};
	case "cg_dodge_charger_2015_rouge": {25000};
	
	case "CG_Taxi": {25000};
	
	case "critgamin_smart_civ": {25000};
	case "critgamin_smart_bleu": {25000};
	case "critgamin_smart_noir": {25000};
	case "critgamin_smart_bleufonce": {25000};
	case "critgamin_smart_rouge": {25000};
	case "critgamin_smart_jaune": {25000};
	case "critgamin_smart_rose": {25000};
	case "critgamin_smart_grise": {25000};
	case "critgamin_smart_violet": {25000};
	case "critgamin_smart_orange": {25000};
	case "critgamin_smart_vert": {25000};
	
	case "critgamin_contown_civ": {25000};
	case "critgamin_contown_bleu": {25000};
	case "critgamin_contown_noir": {25000};
	case "critgamin_contown_bleufonce": {25000};
	case "critgamin_contown_rouge": {25000};
	case "critgamin_contown_jaune": {25000};
	case "critgamin_contown_rose": {25000};
	case "critgamin_contown_grise": {25000};
	case "critgamin_contown_violet": {25000};
	case "critgamin_contown_orange": {25000};
	case "critgamin_contown_vert": {25000};
	
	case "critgamin_contown_civ": {25000};
	case "critgamin_contown_bleu": {25000};
	case "critgamin_contown_noir": {25000};
	case "critgamin_contown_bleufonce": {25000};
	case "critgamin_contown_rouge": {25000};
	case "critgamin_contown_jaune": {25000};
	case "critgamin_contown_rose": {25000};
	case "critgamin_contown_grise": {25000};
	case "critgamin_contown_violet": {25000};
	case "critgamin_contown_orange": {25000};
	case "critgamin_contown_vert": {25000};
	
	case "critgamin_vangmcc_civ_noir": {25000};
	case "critgamin_vangmcc_civ_bleufonce": {25000};
	case "critgamin_vangmcc_civ_bleu": {25000};
	case "critgamin_vangmcc_civ_vert": {25000};
	case "critgamin_vangmcc_civ_rouge": {25000};
	case "critgamin_vangmcc_civ_jaune": {25000};
	case "critgamin_vangmcc_civ_rose": {25000};
	case "critgamin_vangmcc_civ_grise": {25000};
	case "critgamin_vangmcc_civ_violet": {25000};
	case "critgamin_vangmcc_civ_orange": {25000};
	
	case "cg_mercedes_sprint_van_noir": {25000};
	case "cg_mercedes_sprint_van_violet": {25000};
	case "cg_mercedes_sprint_van_rose": {25000};
	case "cg_mercedes_sprint_van_orange": {25000};
	case "cg_mercedes_sprint_van_grise": {25000};
	case "cg_mercedes_sprint_van_vert": {25000};
	case "cg_mercedes_sprint_van_bleufonce": {25000};
	case "cg_mercedes_sprint_van_bleu": {25000};
	case "cg_mercedes_sprint_van_white": {25000};
	case "cg_mercedes_sprint_van_jaune": {25000};
	case "cg_mercedes_sprint_van_rouge": {25000};
	
	case "cg_citroen_c4_noir": {25000};
	case "cg_citroen_c4_violet": {25000};
	case "cg_citroen_c4_rose": {25000};
	case "cg_citroen_c4_orange": {25000};
	case "cg_citroen_c4_grise": {25000};
	case "cg_citroen_c4_vert": {25000};
	case "cg_citroen_c4_bleufonce": {25000};
	case "cg_citroen_c4_bleu": {25000};
	case "cg_citroen_c4_white": {25000};
	case "cg_citroen_c4_jaune": {25000};
	case "cg_citroen_c4_rouge": {25000};
	
	case "cg_renault_twingo_noir": {25000};
	case "cg_renault_twingo_violet": {25000};
	case "cg_renault_twingo_rose": {25000};
	case "cg_renault_twingo_orange": {25000};
	case "cg_renault_twingo_grise": {25000};
	case "cg_renault_twingo_vert": {25000};
	case "cg_renault_twingo_bleufonce": {25000};
	case "cg_renault_twingo_bleu": {25000};
	case "cg_renault_twingo_white": {25000};
	case "cg_renault_twingo_jaune": {25000};
	case "cg_renault_twingo_rouge": {25000};
	
	case "cg_citroen_ds3_noir": {25000};
	case "cg_citroen_ds3_violet": {25000};
	case "cg_citroen_ds3_rose": {25000};
	case "cg_citroen_ds3_orange": {25000};
	case "cg_citroen_ds3_grise": {25000};
	case "cg_citroen_ds3_vert": {25000};
	case "cg_citroen_ds3_bleufonce": {25000};
	case "cg_citroen_ds3_bleu": {25000};
	case "cg_citroen_ds3_white": {25000};
	case "cg_citroen_ds3_jaune": {25000};
	case "cg_citroen_ds3_rouge": {25000};
	
	case "cg_citroen_ds4_noir": {25000};
	case "cg_citroen_ds4_violet": {25000};
	case "cg_citroen_ds4_rose": {25000};
	case "cg_citroen_ds4_orange": {25000};
	case "cg_citroen_ds4_grise": {25000};
	case "cg_citroen_ds4_vert": {25000};
	case "cg_citroen_ds4_bleufonce": {25000};
	case "cg_citroen_ds4_bleu": {25000};
	case "cg_citroen_ds4_white": {25000};
	case "cg_citroen_ds4_jaune": {25000};
	case "cg_citroen_ds4_rouge": {25000};
	
	case "cg_peugeot_308_gti_civ_noir": {25000};
	case "cg_peugeot_308_gti_civ_violet": {25000};
	case "cg_peugeot_308_gti_civ_rose": {25000};
	case "cg_peugeot_308_gti_civ_orange": {25000};
	case "cg_peugeot_308_gti_civ_grise": {25000};
	case "cg_peugeot_308_gti_civ_vert": {25000};
	case "cg_peugeot_308_gti_civ_bleufonce": {25000};
	case "cg_peugeot_308_gti_civ_bleu": {25000};
	case "cg_peugeot_308_gti_civ_white": {25000};
	case "cg_peugeot_308_gti_civ_jaune": {25000};
	case "cg_peugeot_308_gti_civ_rouge": {25000};
	
	case "cg_peugeot_308_rcz_noir": {25000};
	case "cg_peugeot_308_rcz_violet": {25000};
	case "cg_peugeot_308_rcz_rose": {25000};
	case "cg_peugeot_308_rcz_orange": {25000};
	case "cg_peugeot_308_rcz_grise": {25000};
	case "cg_peugeot_308_rcz_vert": {25000};
	case "cg_peugeot_308_rcz_bleufonce": {25000};
	case "cg_peugeot_308_rcz_bleu": {25000};
	case "cg_peugeot_308_rcz_white": {25000};
	case "cg_peugeot_308_rcz_jaune": {25000};
	case "cg_peugeot_308_rcz_rouge": {25000};
	
	case "Mrshounka_Alfa_Romeo_bleufonce": {25000};
	case "Mrshounka_Alfa_Romeo_grise": {25000};
	case "Mrshounka_Alfa_Romeo_jaune": {25000};
	case "Mrshounka_Alfa_Romeo_noir": {25000};
	case "Mrshounka_Alfa_Romeo_orange": {25000};
	case "Mrshounka_Alfa_Romeo_rose": {25000};
	case "Mrshounka_Alfa_Romeo_rouge": {25000};
	case "Mrshounka_Alfa_Romeo_violet": {25000};
	
	case "S_Rangerover_Black": {25000};
	case "S_Rangerover_Red": {25000};
	case "S_Rangerover_Blue": {25000};
	case "S_Rangerover_Green": {25000};
	case "S_Rangerover_Purple": {25000};
	case "S_Rangerover_Grey": {25000};
	case "S_Rangerover_Orange": {25000};
	case "S_Rangerover_White": {25000};
	
	case "POP_Qashqai_amarillo": {25000};
	case "pop_toyota_gt86_Blanco": {25000};
	case "pop_cayenne_samur": {25000};
	
	case "cg_peugeot_508_civ_noir": {25000};
	case "cg_peugeot_508_civ_violet": {25000};
	case "cg_peugeot_508_civ_rose": {25000};
	case "cg_peugeot_508_civ_orange": {25000};
	case "cg_peugeot_508_civ_grise": {25000};
	case "cg_peugeot_508_civ_vert": {25000};
	case "cg_peugeot_508_civ_bleufonce": {25000};
	case "cg_peugeot_508_civ_bleu": {25000};
	case "cg_peugeot_508_civ_white": {25000};
	case "cg_peugeot_508_civ_jaune": {25000};
	case "cg_peugeot_508_civ_rouge": {25000};
	
	case "tcg_hrly": {25000};
	case "tcg_hrly_white": {25000};
	case "tcg_hrly_red": {25000};
	case "tcg_hrly_metal": {25000};
	case "tcg_hrly_blue": {25000};
	case "tcg_hrly_limited": {25000};
	case "tcg_hrly_demon": {25000};
	case "tcg_hrly_coco": {25000};
	case "tcg_hrly_orig1": {25000};
	case "tcg_hrly_orig2": {25000};
	case "tcg_hrly_skeleton": {25000};
	case "tcg_hrly_gay": {25000};
	
	case "cg_ducati_civ_noir": {25000};
	case "cg_ducati_civ_violet": {25000};
	case "cg_ducati_civ_rose": {25000};
	case "cg_ducati_civ_orange": {25000};
	case "cg_ducati_civ_grise": {25000};
	case "cg_ducati_civ_vert": {25000};
	case "cg_ducati_civ_bleufonce": {25000};
	case "cg_ducati_civ_bleu": {25000};
	case "cg_ducati_civ_white": {25000};
	case "cg_ducati_civ_jaune": {25000};
	case "cg_ducati_civ_rouge": {25000};
	
	case "Jonzie_Transit": {25000};
	case "C_Van_01_fuel_F": {25000};
	case "C_Van_01_box_F": {25000};
	case "C_Van_01_transport_F": {25000};
	
	case "shounka_nemo_bleufonce": {25000};
	case "shounka_nemo_grise": {25000};
	case "shounka_nemo_jaune": {25000};
	case "shounka_nemo_noir": {25000};
	case "shounka_nemo_orange": {25000};
	case "shounka_nemo_rose": {25000};
	case "shounka_nemo_rouge": {25000};
	case "shounka_nemo_violet": {25000};
	
	case "cg_hummer_h1_noir": {25000};
	case "cg_hummer_h1_violet": {25000};
	case "cg_hummer_h1_rose": {25000};
	case "cg_hummer_h1_orange": {25000};
	case "cg_hummer_h1_grise": {25000};
	case "cg_hummer_h1_vert": {25000};
	case "cg_hummer_h1_bleufonce": {25000};
	case "cg_hummer_h1_bleu": {25000};
	case "cg_hummer_h1_white": {25000};
	case "cg_hummer_h1_jaune": {25000};
	
	case "shounka_h2_bleufonce": {25000};
	case "shounka_h2_grise": {25000};
	case "shounka_h2_jaune": {25000};
	case "shounka_h2_noir": {25000};
	case "shounka_h2_orange": {25000};
	case "shounka_h2_rose": {25000};
	case "shounka_h2_rouge": {25000};
	case "shounka_h2_violet": {25000};
	
	case "A3L_Bus": {25000};
	case "pop_bus_p": {25000};
	case "pop_grua": {25000};
	
	case "cg_daf_xf_euro6_noir": {25000};
	case "cg_daf_xf_euro6_violet": {25000};
	case "cg_daf_xf_euro6_rose": {25000};
	case "cg_daf_xf_euro6_orange": {25000};
	case "cg_daf_xf_euro6_grise": {25000};
	case "cg_daf_xf_euro6_vert": {25000};
	case "cg_daf_xf_euro6_bleufonce": {25000};
	case "cg_daf_xf_euro6_white": {25000};
	case "cg_daf_xf_euro6_jaune": {25000};
	case "cg_daf_xf_euro6_rouge": {25000};
	case "Jonzie_Flat_Bed": {25000};
	case "Jonzie_Log_Truck": {25000};
	case "Jonzie_Box_Truck": {25000};
	case "Jonzie_Tanker_Truck": {25000};
	
	case "cg_renault_magnum_truck_f_noir": {25000};
	case "cg_renault_magnum_truck_f_violet": {25000};
	case "cg_renault_magnum_truck_f_rose": {25000};
	case "cg_renault_magnum_truck_f_orange": {25000};
	case "cg_renault_magnum_truck_f_grise": {25000};
	case "cg_renault_magnum_truck_f_vert": {25000};
	case "cg_renault_magnum_truck_f_white": {25000};
	case "cg_renault_magnum_truck_f_jaune": {25000};
	
	case "shounka_avalanche_bleufonce": {25000};
	case "shounka_avalanche_grise": {25000};
	case "shounka_avalanche_jaune": {25000};
	case "shounka_avalanche_noir": {25000};
	case "shounka_avalanche_orange": {25000};
	case "shounka_avalanche_rose": {25000};
	case "shounka_avalanche_rouge": {25000};
	case "shounka_avalanche_violet": {25000};
	
	case "shounka_ivceco_bleufonce": {25000};
	case "shounka_ivceco_grise": {25000};
	case "shounka_ivceco_jaune": {25000};
	case "shounka_ivceco_noir": {25000};
	case "shounka_ivceco_orange": {25000};
	case "shounka_ivceco_rose": {25000};
	case "shounka_ivceco_rouge": {25000};
	case "shounka_ivceco_violet": {25000};
	
	case "Nhz_audia8limo": {25000};
	
	case "cg_audi_a8_limo_noir": {25000};
	case "cg_audi_a8_limo_violet": {25000};
	case "cg_audi_a8_limo_rose": {25000};
	case "cg_audi_a8_limo_orange": {25000};
	case "cg_audi_a8_limo_grise": {25000};
	case "cg_audi_a8_limo_vert": {25000};
	case "cg_audi_a8_limo_bleufonce": {25000};
	case "cg_audi_a8_limo_bleu": {25000};
	case "cg_audi_a8_limo_white": {25000};
	case "cg_audi_a8_limo_jaune": {25000};
	
	case "wirk_h3_limo": {25000};
	case "A3L_Towtruck": {25000};
	
	case "ivory_wrx_cop_marked": {25000};
	case "ivory_wrx_cop_unmarked": {25000};
	case "ivory_wrx_cop_slicktop": {25000};
	case "cg_merc_atego_firetruck_reg": {25000};
	case "cg_evoblack": {25000};
	
	case "A3L_CVPIFPBDOC": {25000};
	case "A3L_TaurusCO2": {25000};
	case "cg_evocor1": {25000};
	case "A3L_SuburbanDOC": {25000};
	case "charger_cor_skinned": {25000};
	
	case "cg_cvpifpbpd": {25000};
	case "cg_cvpifpblbpd": {25000};
	case "cg_TaurusPD2": {25000};
	case "cg_TaurusPD1": {25000};
	case "DAR_ExplorerPolice": {25000};
	case "cg_evopol1": {25000};
	case "charger_pd": {25000};
	case "charger_pd_skinned": {25000};
	
	case "cg_CVPISH": {25000};
	case "cg_ss2": {25000};
	case "cg_TaurusSS1": {25000};
	case "cg_TaurusSS2": {25000};
	case "A3L_SuburbanCSO": {25000};
	case "DAR_ExplorerSheriff": {25000};
	case "cg_evoss1": {25000};
	case "charger_sh": {25000};
	case "charger_sh_skinned": {25000};
	
	case "cg_cvpitrooper": {25000};
	case "cg_taurustrooperf": {25000};
	case "cg_trooperevo": {25000};
	case "charger_st": {25000};
	case "charger_trp_skinned": {25000};
	
	case "cg_suburban_sert_pol": {25000};
	case "cg_evoSERT1": {25000};
	case "charger_sert": {25000};
	case "critgamin_vangmcc_civ_noir": {25000};
	case "cg_hummer_h1_noir": {25000};
	case "cg_h2_sert": {25000};
	case "AM_Holden_UM": {25000};
	case "AM_Holden_SO": {25000};
	
	case "A3L_CVPIUC": {25000};
	case "A3L_CVPIUCBlack": {25000};
	case "A3L_CVPIUCBlue": {25000};
	case "A3L_CVPIUCWhite": {25000};
	case "A3L_CVPIUCPink": {25000};
	case "A3L_CVPIUCRed": {25000};
	case "cg_peugeot_508_pol_d": {25000};
	case "cg_mercedes_sprinter_pol_base_reg": {25000};
	case "cg_ducati_pol_reg": {25000};
	case "A3L_GrandCaravanUC": {25000};
	case "A3L_GrandCaravanUCBlack": {25000};
	case "DAR_TahoePoliceDet": {25000};
	case "DAR_ExplorerPoliceStealth": {25000};
	case "A3L_SuburbanUM": {25000};
	case "AM_Holden_Police": {25000};
	case "A3L_jailBus": {25000};
	case "A3L_ChargerUC": {25000};
	case "A3L_ChargerUCWhite": {25000};
	case "cg_brinks_bank_noir": {25000};
	case "A3L_TaurusUCBlue": {25000};
	case "A3L_TaurusUCGrey": {25000};
	case "A3L_TaurusUCRed": {25000};
	case "A3L_TaurusUCWhite": {25000};
	
	case "Sab_af_An2": {25000};
	case "Sab_tk_An2": {25000};
	case "Sab_ca_An2": {25000};
	case "Sab_ana_An2": {25000};
	case "Sab_yel_An2": {25000};
	case "Sab_fd_An2": {25000};
	
	case "Sab_Sea2_An2": {25000};
	case "Sab_Sea4_An2": {25000};
	case "Sab_Amphi_An2": {25000};
	
	case "sab_camel": {25000};
	
	case "IVORY_T6A_1": {25000};
	case "B_Heli_Light_01_F": {25000};
	case "ivory_b206": {25000};
	case "ivory_b206_news": {25000};
	case "CUP_C_DC3_CIV": {25000};
	case "CUP_C_C47_CIV": {25000};
	case "GNT_C185": {25000};
	case "IVORY_CRJ200_1": {25000};
	case "IVORY_ERJ135_1": {25000};
	case "IVORY_YAK42D_1": {25000};
	
	case "B_Heli_Light_01_F": {25000};
	case "C_Heli_Light_01_civil_F": {25000};
	case "melb_h6m": {25000};
	
	case "CG_EMS_Boat": {25000};
	
	case "C_Rubberboat": {25000};
	case "CUP_B_Zodiac_USMC": {25000};
	case "C_Boat_Civil_01_F": {25000};
	case "CUP_C_Fishing_Boat_Chernarus": {25000};
	case "A3L_Ship": {25000};
	case "A3L_Jetski": {25000};
	case "A3L_Jetski_yellow": {25000};
	
	case "B_Boat_Transport_01_F": {25000};
	case "C_Boat_Civil_01_police_F": {25000};
	case "B_SDV_01_F": {25000};
	
	default {-1};
};
if(_price == -1) exitWith { ["Diese Fahrzeug können Sie nicht versichern!", false] spawn domsg; };
if(playerSide == independent) then { _price = _price / 4; };
//life_atmcash = life_atmcash - _price; exitWith { hint format["You do not have enough money in your bank account to complete this transaction, it requires $%1",_price]; };
 cash_in_bank =  cash_in_bank - _price; ["Du hast das Fahrzeug versichert. Sollte es zerstört werden, wird es in deine Garage geliefert!.", false] spawn domsg;
 cash_in_bank =  cash_in_bank - _price;closeDialog 0;_vehicle setVariable["isInsured",true,true];[[_vehicle],"TON_fnc_vehicleInsurance",false,false] call life_fnc_HCC; 