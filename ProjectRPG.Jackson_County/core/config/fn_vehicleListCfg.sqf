#include <macro.h>
/*
	File:
	
	VEHICLES ARE 10% of WHAT THEY ARE IN HERE.
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = param [0,"",[""]];
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return = 
		[
			["IVORY_PRIUS",125000],
			["ivory_supra",150000],
			["ivory_supra_tuned",1000000],
			["ivory_isf",200000],
			["ivory_m3",250000],
			["ivory_m3_gts",550000],
			["ivory_wrx",900000],
			["ivory_lp560",2130000],
			["IVORY_R8",830000],
			["IVORY_R8SPYDER",730000],
			["IVORY_REV",690000],	
			["ivory_lfa",1390000],
			["ivory_c",1260000],
			["ivory_gt500",800000]

		];
	};
	case "showroom_car":
	{
		_return = 
		[
			["Jonzie_Quattroporte",150000],
			["Jonzie_30CSL",30000],
			["Jonzie_Viper",45000],
			["Jonzie_Datsun_Z432",50000],
			["Jonzie_STI",73000],
			["Jonzie_Escalade",40000],
			["Jonzie_Datsun_510",20000],
			["Jonzie_Ceed",7500],
			["Jonzie_Raptor",40000],
			["Jonzie_Galant",5000],
			["Jonzie_Corolla",3500],
			["Jonzie_Mini_Cooper",1000],
			["Jonzie_Mini_Cooper_R_spec",5000],
			["Jonzie_XB",30000],
			["Jonzie_VE",30000],
			["Jonzie_Ute",30000]
		];
	};	
	case "kart_shop":
	{
		_return = 
		[
			["A3L_Karts",10000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = 
		[
			["ivory_wrx_med_ems",95500],
			["cg_merc_atego_firetruck_reg",25000],
			["cg_mercedes_sprinter_ems",25000],
			["IVORY_PRIUS",25000],
			["cg_evoems1",20000],
			["cg_evoems2",20000],
			["cg_evoems3",20000],
			["A3L_CVPILBFD",2300],
			["cg_ambulanceexpansion",20000],
			["DAR_TahoeEMS",22500],
			["AM_Holden_EMS",25000],
			["pop_grua",25000],
			["A3L_TowTruck_ADAC",25000]
			
		];
	};
	case "med_air_hs": {
		_return = 
		[
			["ivory_b206_rescue",65000],
			["IVORY_BELL512_RESCUE",85000],
			["ems_chopper",90000],
			["ems_chopper2",90000],
			["ems_orca",120000],
			["ems_orca2",120000],
			["EC635_ADAC",120000],
			["O_Heli_Transport_04_medevac_F", 120000]
		];
	};
	case "exo_car":
	{
		_return = 
		[	


			["cg_peugeot_207_rc_noir",40000],
			["cg_peugeot_207_rc_violet",40000],
			["cg_peugeot_207_rc_rose",40000],
			["cg_peugeot_207_rc_orange",40000],
			["cg_peugeot_207_rc_grise",40000],
			["cg_peugeot_207_rc_vert",40000],
			["cg_peugeot_207_rc_bleufonce",40000],
			["cg_peugeot_207_rc_bleu",40000],
			["cg_peugeot_207_rc_white",40000],
			["cg_peugeot_207_rc_jaune",40000],


			["cg_volkswagen_touareg_noir",60000],
			["cg_volkswagen_touareg_violet",60000],
			["cg_volkswagen_touareg_rose",60000],
			["cg_volkswagen_touareg_orange",60000],
			["cg_volkswagen_touareg_grise",60000],
			["cg_volkswagen_touareg_vert",60000],
			["cg_volkswagen_touareg_bleufonce",60000],
			["cg_volkswagen_touareg_bleu",60000],
			["cg_volkswagen_touareg_white",60000],
			["cg_volkswagen_touareg_jaune",60000],

			["cg_vw_golfvi_noir",60000],
			["cg_vw_golfvi_violet",60000],
			["cg_vw_golfvi_rose",60000],
			["cg_vw_golfvi_orange",60000],
			["cg_vw_golfvi_grise",60000],
			["cg_vw_golfvi_vert",60000],
			["cg_vw_golfvi_bleufonce",60000],
			["cg_vw_golfvi_bleu",60000],
			["cg_vw_golfvi_white",60000],
			["cg_vw_golfvi_jaune",60000],

			["cg_jeep_cherokee_noir",139000],
			["cg_jeep_cherokee_violet",139000],
			["cg_jeep_cherokee_rose",139000],
			["cg_jeep_cherokee_orange",139000],
			["cg_jeep_cherokee_grise",139000],
			["cg_jeep_cherokee_vert",139000],
			["cg_jeep_cherokee_bleufonce",139000],
			["cg_jeep_cherokee_bleu",139000],
			["cg_jeep_cherokee_white",139000],
			["cg_jeep_cherokee_jaune",139000],

			["cg_audi_rs4_noir",600000],
			["cg_audi_rs4_violet",600000],
			["cg_audi_rs4_rose",600000],
			["cg_audi_rs4_orange",600000],
			["cg_audi_rs4_grise",600000],
			["cg_audi_rs4_vert",600000],
			["cg_audi_rs4_bleufonce",600000],
			["cg_audi_rs4_bleu",600000],
			["cg_audi_rs4_white",600000],
			["cg_audi_rs4_jaune",600000],

			["cg_audi_rs5_noir",650000],
			["cg_audi_rs5_violet",650000],
			["cg_audi_rs5_rose",650000],
			["cg_audi_rs5_orange",650000],
			["cg_audi_rs5_grise",650000],
			["cg_audi_rs5_vert",650000],
			["cg_audi_rs5_bleufonce",650000],
			["cg_audi_rs5_bleu",650000],
			["cg_audi_rs5_white",650000],
			["cg_audi_rs5_jaune",650000],

            ["shounka_rs6_orange",700000],
            ["shounka_rs6_violet",700000],
            ["shounka_rs6_grise",700000],
            ["shounka_rs6_rose",700000],
            ["shounka_rs6_jaune",700000],
            ["shounka_rs6_rouge",700000],
            ["shounka_rs6_bleufonce",700000],
            ["shounka_rs6",700000],
            ["shounka_rs6_noir",700000],	
			

			["cg_bmw_1series_m_noir",290000],
			["cg_bmw_1series_m_violet",290000],
			["cg_bmw_1series_m_rose",290000],
			["cg_bmw_1series_m_orange",290000],
			["cg_bmw_1series_m_grise",290000],
			["cg_bmw_1series_m_vert",290000],
			["cg_bmw_1series_m_bleufonce",290000],
			["cg_bmw_1series_m_bleu",290000],
			["cg_bmw_1series_m_white",290000],
			["cg_bmw_1series_m_jaune",290000],

			["cg_bmw_m6_noir",390000],
			["cg_bmw_m6_violet",390000],
			["cg_bmw_m6_rose",390000],
			["cg_bmw_m6_orange",390000],
			["cg_bmw_m6_bleufonce",390000],
			["cg_bmw_m6_bleu",390000],
			["cg_bmw_m6_white",390000],
			["cg_bmw_m6_jaune",390000],			
			
            ["A3L_BMW135Red",220000],
            ["A3L_BMW135Purple",220000],
            ["A3L_BMW135Blue",220000],
            ["A3L_BMW135Black",220000],
            ["A3L_BMW135White",220000],
            ["A3L_BMW135Sport5",220000],
            ["A3L_BMW135Sport4",220000],
            ["A3L_BMW135Sport3",220000],
            ["A3L_BMW135Sport2",220000],
            ["A3L_BMW135Sport1",220000], 
			
			["cg_renault_megane_rs_2015_noir",390000],
			["cg_renault_megane_rs_2015_violet",390000],
			["cg_renault_megane_rs_2015_rose",390000],
			["cg_renault_megane_rs_2015_orange",390000],
			["cg_renault_megane_rs_2015_grise",390000],
			["cg_renault_megane_rs_2015_vert",390000],
			["cg_renault_megane_rs_2015_bleufonce",390000],
			["cg_renault_megane_rs_2015_bleu",390000],
			["cg_renault_megane_rs_2015_white",390000],
			["cg_renault_megane_rs_2015_jaune",390000],

			["Mrshounka_c63_2015_bleufonce",380000],
			["Mrshounka_c63_2015_grise",380000],
			["Mrshounka_c63_2015_jaune",380000],
			["Mrshounka_c63_2015_noir",380000],
			["Mrshounka_c63_2015_orange",380000],
			["Mrshounka_c63_2015_rose",380000],
			["Mrshounka_c63_2015_rouge",380000],
			["Mrshounka_c63_2015_violet",380000],
			
			["cg_raptor_truck_noir",390000],
			["cg_raptor_truck_violet",390000],
			["cg_raptor_truck_rose",390000],
			["cg_raptor_truck_orange",390000],
			["cg_raptor_truck_grise",390000],
			["cg_raptor_truck_vert",390000],
			["cg_raptor_truck_bleufonce",390000],
			["cg_raptor_truck_bleu",390000],
			["cg_raptor_truck_white",390000],
			["cg_raptor_truck_jaune",390000],

			["cg_porsche_911_82_noir",490000],
			["cg_porsche_911_82_violet",490000],
			["cg_porsche_911_82_rose",490000],
			["cg_porsche_911_82_orange",490000],
			["cg_porsche_911_82_grise",490000],
			["cg_porsche_911_82_vert",490000],
			["cg_porsche_911_82_bleufonce",490000],
			["cg_porsche_911_82_bleu",490000],
			["cg_porsche_911_82_white",490000],
			["cg_porsche_911_82_jaune",490000],

			["cg_porsche_cayenne_noir",490000],
			["cg_porsche_cayenne_violet",490000],
			["cg_porsche_cayenne_rose",490000],
			["cg_porsche_cayenne_orange",490000],
			["cg_porsche_cayenne_grise",490000],
			["cg_porsche_cayenne_vert",490000],
			["cg_porsche_cayenne_bleufonce",490000],
			["cg_porsche_cayenne_bleu",490000],
			["cg_porsche_cayenne_white",490000],
			["cg_porsche_cayenne_jaune",490000],

			["cg_bowler_offroad_noir",490000],
			["cg_bowler_offroad_violet",490000],
			["cg_bowler_offroad_rose",490000],
			["cg_bowler_offroad_orange",490000],
			["cg_bowler_offroad_grise",490000],
			["cg_bowler_offroad_vert",490000],
			["cg_bowler_offroad_bleufonce",490000],
			["cg_bowler_offroad_bleu",490000],
			["cg_bowler_offroad_white",490000],
			["cg_bowler_offroad_jaune",490000],


			["Mrshounka_agera_p_noir",4900000],
			["Mrshounka_agera_p_bleu",4900000],
			["Mrshounka_agera_p_jaune",4900000],			

			["shounka_gt_bleufonce",600000],
			["shounka_gt_grise",600000],
			["shounka_gt_jaune",600000],
			["shounka_gt_noir",600000],
			["shounka_gt_orange",600000],
			["shounka_gt_rose",600000],
			["shounka_gt_rouge",600000],
			["shounka_gt_violet",600000],

			["Mrshounka_mercedes_190_p_bleufonce",620000],
			["Mrshounka_mercedes_190_p_grise",620000],
			["Mrshounka_mercedes_190_p_jaune",620000],
			["Mrshounka_mercedes_190_p_noir",620000],
			["Mrshounka_mercedes_190_p_orange",620000],
			["Mrshounka_mercedes_190_p_rose",620000],
			["Mrshounka_mercedes_190_p_rouge",620000],
			["Mrshounka_mercedes_190_p_violet",620000],

						//HOLDENS
			["AM_Holden_White",785000],
			["AM_Holden_Black",785000],
			["AM_Holden_Green",785000],
			["AM_Holden_DarkGreen",785000],
			["AM_Holden_OffGreen",785000],
			["AM_Holden_blue",785000],
			["AM_Holden_OffYellow",785000],
			["AM_Holden_Pink",785000],
			["AM_Holden_Purple",785000],
			["AM_Holden_Yellow",785000],

			["cg_nissan_gtr_2012_noir",790000],
			["cg_nissan_gtr_2012_violet",790000],
			["cg_nissan_gtr_2012_rose",790000],
			["cg_nissan_gtr_2012_orange",790000],
			["cg_nissan_gtr_2012_grise",790000],
			["cg_nissan_gtr_2012_vert",790000],
			["cg_nissan_gtr_2012_bleufonce",790000],
			["cg_nissan_gtr_2012_bleu",790000],
			["cg_nissan_gtr_2012_white",790000],
			["cg_nissan_gtr_2012_jaune",790000],		

			["shounka_mp4_bleufonce",1110000],
			["shounka_mp4_grise",1110000],
			["shounka_mp4_jaune",1110000],
			["shounka_mp4_noir",1110000],
			["shounka_mp4_orange",1110000],
			["shounka_mp4_rose",1110000],
			["shounka_mp4_rouge",1110000],
			["shounka_mp4_violet",1110000],

			["shounka_clk_bleufonce",1110000],
			["shounka_clk_grise",1110000],
			["shounka_clk_jaune",1110000],
			["shounka_clk_noir",1110000],
			["shounka_clk_orange",1110000],
			["shounka_clk_rose",1110000],
			["shounka_clk_rouge",1110000],
			["shounka_clk_violet",1110000],

			["cg_jeep_blinde_noir",1390000],
			["cg_jeep_blinde_violet",1390000],
			["cg_jeep_blinde_rose",1390000],
			["cg_jeep_blinde_orange",1390000],
			["cg_jeep_blinde_grise",1390000],
			["cg_jeep_blinde_vert",1390000],
			["cg_jeep_blinde_bleufonce",1390000],
			["cg_jeep_blinde_bleu",1390000],
			["cg_jeep_blinde_white",1390000],
			["cg_jeep_blinde_jaune",1390000],

			["cg_lancer_evo_x_noir",1590000],
			["cg_lancer_evo_x_violet",1590000],
			["cg_lancer_evo_x_rose",1590000],
			["cg_lancer_evo_x_orange",1590000],
			["cg_lancer_evo_x_grise",1590000],
			["cg_lancer_evo_x_vert",1590000],
			["cg_lancer_evo_x_bleufonce",1590000],
			["cg_lancer_evo_x_bleu",1590000],
			["cg_lancer_evo_x_white",1590000],
			["cg_lancer_evo_x_jaune",1590000],

			["Mrshounka_pagani_c_bleufonce",1590000],
			["Mrshounka_pagani_c_grise",1590000],
			["Mrshounka_pagani_c_jaune",1590000],
			["Mrshounka_pagani_c_noir",1590000],
			["Mrshounka_pagani_c_orange",1590000],
			["Mrshounka_pagani_c_rose",1590000],
			["Mrshounka_pagani_c_rouge",1590000],
			["Mrshounka_pagani_c_violet",1590000],

			["cg_lambo_veneno_noir",1590000],
			["cg_lambo_veneno_violet",1590000],
			["cg_lambo_veneno_rose",1590000],
			["cg_lambo_veneno_orange",1590000],
			["cg_lambo_veneno_grise",1590000],
			["cg_lambo_veneno_vert",1590000],
			["cg_lambo_veneno_bleufonce",1590000],
			["cg_lambo_veneno_bleu",1590000],
			["cg_lambo_veneno_white",1590000],
			["cg_lambo_veneno_jaune",1590000],

			//Holden racing
			["AM_Holden_RBlue",1985000],			
			["AM_Holden_RRed",1985000],
			["AM_Holden_RWhite",1985000],
			["AM_Holden_RBlack",1985000],
			
			["A3L_Veyron_purple",2100000],
            ["A3L_Veyron_orange",2100000],
            ["A3L_Veyron_red",2100000],
            ["A3L_Veyron_black",2100000],
            ["A3L_Veyron_white",2100000],
            ["A3L_Veyron",2100000],


			["Mrshounka_lykan_c_bleufonce",2000000],
			["Mrshounka_lykan_c_grise",2000000],
			["Mrshounka_lykan_c_jaune",2000000],
			["Mrshounka_lykan_c_noir",2000000],
			["Mrshounka_lykan_c_orange",2000000],
			["Mrshounka_lykan_c_rose",2000000],
			["Mrshounka_lykan_c_rouge",2000000],
			["Mrshounka_lykan_c_violet",2000000],
			
			["A3L_Ferrari458red",2250000],
            ["A3L_Ferrari458black",2250000],
            ["A3L_Ferrari458white",2250000],
            ["A3L_Ferrari458blue",2250000],


			["shounka_f430_spider_bleufonce",2200000],
			["shounka_f430_spider_grise",2200000],
			["shounka_f430_spider_jaune",2200000],
			["shounka_f430_spider_noir",2200000],
			["shounka_f430_spider_orange",2200000],
			["shounka_f430_spider_rose",2200000],
			["shounka_f430_spider_rouge",2200000],
			["shounka_f430_spider_violet",2200000],

			["shounka_porsche911_bleufonce",2300000],
			["shounka_porsche911_grise",2300000],
			["shounka_porsche911_jaune",2300000],
			["shounka_porsche911_noir",2300000],
			["shounka_porsche911_orange",2300000],
			["shounka_porsche911_rose",2300000],
			["shounka_porsche911_rouge",2300000],
			["shounka_porsche911_violet",2300000],

			["CG_Lamborghini_Aventador_Red", 3000000],
			["CG_Lamborghini_Aventador_Black", 3000000],
			["CG_Lamborghini_Aventador_Blue", 3000000],
			["CG_Lamborghini_Aventador_Green", 3000000],
			["CG_Lamborghini_Aventador_Orange", 3000000],
			["CG_Lamborghini_Aventador_Purple", 3000000],
			["CG_Lamborghini_Aventador_White", 3000000],

			["A3L_EvoXrally_green",3999999],
			["A3L_EvoXrally_white",3999999],
			["A3L_EvoXrally_red",3999999],
			["A3L_EvoXrally_blue",3999999]
		];
	};

	case "chev_car":
	{
		_return = 
		[
			["DAR_TahoeCivSilver",140000],
			["DAR_TahoeCivBlue",140000],
			["DAR_TahoeCivRed",140000],
			["DAR_TahoeCivBlack",140000],
			["A3L_SuburbanWhite",190000],
			["A3L_SuburbanBlue",190000],
			["A3L_SuburbanRed",190000],
			["A3L_SuburbanBlack",190000],
			["A3L_SuburbanGrey",190000],
			["A3L_SuburbanOrange",190000],
			["A3L_Camaro",195000]
		];
	};
	case "ford_car":
	{
		_return = 
		[
			["cg_raptor_truck_noir",390000],
			["cg_raptor_truck_violet",390000],
			["cg_raptor_truck_rose",390000],
			["cg_raptor_truck_orange",390000],
			["cg_raptor_truck_grise",390000],
			["cg_raptor_truck_vert",390000],
			["cg_raptor_truck_bleufonce",390000],
			["cg_raptor_truck_bleu",390000],
			["cg_raptor_truck_white",390000],
			["cg_raptor_truck_jaune",390000],

			["cg_raptor_truck_va_noir",390000],
			["cg_raptor_truck_va_violet",390000],
			["cg_raptor_truck_va_rose",390000],
			["cg_raptor_truck_va_orange",390000],
			["cg_raptor_truck_va_grise",390000],
			["cg_raptor_truck_va_vert",390000],
			["cg_raptor_truck_va_bleufonce",390000],
			["cg_raptor_truck_va_bleu",390000],
			["cg_raptor_truck_va_white",390000],
			["cg_raptor_truck_va_jaune",390000],

			["cg_ford_mustang_noir",559000],
			["cg_ford_mustang_violet",559000],
			["cg_ford_mustang_rose",559000],
			["cg_ford_mustang_orange",559000],
			["cg_ford_mustang_grise",559000],
			["cg_ford_mustang_vert",559000],
			["cg_ford_mustang_bleufonce",559000],
			["cg_ford_mustang_bleu",559000],
			["cg_ford_mustang_white",559000],
			["cg_ford_mustang_jaune",559000],
			["cg_ford_mustang_rouge",559000]
		];
	};
	case "dodge_car":
	{
		_return =
		[
			["AM_2015C_Black",210000],
			["AM_2015C_blue",210000],
			["AM_2015C_white",210000],

			["cg_dodge_charger_2015_noir",259000],
			["cg_dodge_charger_2015_violet",259000],
			["cg_dodge_charger_2015_rose",259000],
			["cg_dodge_charger_2015_orange",259000],
			["cg_dodge_charger_2015_grise",259000],
			["cg_dodge_charger_2015_vert",259000],
			["cg_dodge_charger_2015_bleufonce",259000],
			["cg_dodge_charger_2015_bleu",259000],
			["cg_dodge_charger_2015_white",259000],
			["cg_dodge_charger_2015_jaune",259000],
			["cg_dodge_charger_2015_rouge",259000],
			

           ["A3L_ChallengerWhite",300000],
           ["A3L_ChallengerRed",300000],
           ["A3L_ChallengerBlack",300000],
           ["A3L_ChallengerBlue",300000],
           ["A3L_ChallengerGreen",300000],
           ["A3L_Challenger",300000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["CG_Taxi",11110],


			["critgamin_smart_civ",18000],
			["critgamin_smart_bleu",18000],
			["critgamin_smart_noir",18000],
			["critgamin_smart_bleufonce",18000],
			["critgamin_smart_rouge",18000],
			["critgamin_smart_jaune",18000],
			["critgamin_smart_rose",18000],
			["critgamin_smart_grise",18000],
			["critgamin_smart_violet",18000],
			["critgamin_smart_orange",18000],
			["critgamin_smart_vert",18000],
 
			["critgamin_contown_civ",18000],
			["critgamin_contown_bleu",18000],
			["critgamin_contown_noir",18000],
			["critgamin_contown_bleufonce",18000],
			["critgamin_contown_rouge",18000],
			["critgamin_contown_jaune",18000],
			["critgamin_contown_rose",18000],
			["critgamin_contown_grise",18000],
			["critgamin_contown_violet",18000],
			["critgamin_contown_jaune",18000],
			["critgamin_contown_orange",18000],			
			["critgamin_contown_vert",18000],

			["critgamin_vangmcc_civ_noir",18000],
			["critgamin_vangmcc_civ_bleufonce",18000],
			["critgamin_vangmcc_civ_bleu",18000],
			["critgamin_vangmcc_civ_vert",18000],
			["critgamin_vangmcc_civ_rouge",18000],
			["critgamin_vangmcc_civ_jaune",18000],
			["critgamin_vangmcc_civ_rose",18000],
			["critgamin_vangmcc_civ_grise",18000],
			["critgamin_vangmcc_civ_violet",18000],
			["critgamin_vangmcc_civ_orange",18000],

			["cg_mercedes_sprint_van_noir",25000],
			["cg_mercedes_sprint_van_violet",25000],
			["cg_mercedes_sprint_van_rose",25000],
			["cg_mercedes_sprint_van_orange",25000],
			["cg_mercedes_sprint_van_grise",25000],
			["cg_mercedes_sprint_van_vert",25000],
			["cg_mercedes_sprint_van_bleufonce",25000],
			["cg_mercedes_sprint_van_bleu",25000],
			["cg_mercedes_sprint_van_white",25000],
			["cg_mercedes_sprint_van_jaune",25000],
			["cg_mercedes_sprint_van_rouge",25000],



			["cg_citroen_c4_noir",49000],
			["cg_citroen_c4_violet",49000],
			["cg_citroen_c4_rose",49000],
			["cg_citroen_c4_orange",49000],
			["cg_citroen_c4_grise",49000],
			["cg_citroen_c4_vert",49000],
			["cg_citroen_c4_bleufonce",49000],
			["cg_citroen_c4_bleu",49000],
			["cg_citroen_c4_white",49000],
			["cg_citroen_c4_jaune",49000],
			["cg_citroen_c4_rouge",49000],

			["cg_renault_twingo_noir",49000],
			["cg_renault_twingo_violet",49000],
			["cg_renault_twingo_rose",49000],
			["cg_renault_twingo_orange",49000],
			["cg_renault_twingo_grise",49000],
			["cg_renault_twingo_vert",49000],
			["cg_renault_twingo_bleufonce",49000],
			["cg_renault_twingo_bleu",49000],
			["cg_renault_twingo_white",49000],
			["cg_renault_twingo_jaune",49000],
			["cg_renault_twingo_rouge",49000],

			["cg_citroen_ds3_noir",49000],
			["cg_citroen_ds3_violet",49000],
			["cg_citroen_ds3_rose",49000],
			["cg_citroen_ds3_orange",49000],
			["cg_citroen_ds3_grise",49000],
			["cg_citroen_ds3_vert",49000],
			["cg_citroen_ds3_bleufonce",49000],
			["cg_citroen_ds3_bleu",49000],
			["cg_citroen_ds3_white",49000],
			["cg_citroen_ds3_jaune",49000],
			["cg_citroen_ds3_rouge",49000],

			["cg_citroen_ds4_noir",59000],
			["cg_citroen_ds4_violet",59000],
			["cg_citroen_ds4_rose",59000],
			["cg_citroen_ds4_orange",59000],
			["cg_citroen_ds4_grise",59000],
			["cg_citroen_ds4_vert",59000],
			["cg_citroen_ds4_bleufonce",59000],
			["cg_citroen_ds4_bleu",59000],
			["cg_citroen_ds4_white",59000],
			["cg_citroen_ds4_jaune",59000],
			["cg_citroen_ds4_rouge",59000],

			["cg_peugeot_308_gti_civ_noir",59000],
			["cg_peugeot_308_gti_civ_violet",59000],
			["cg_peugeot_308_gti_civ_rose",59000],
			["cg_peugeot_308_gti_civ_orange",59000],
			["cg_peugeot_308_gti_civ_grise",59000],
			["cg_peugeot_308_gti_civ_vert",59000],
			["cg_peugeot_308_gti_civ_bleufonce",59000],
			["cg_peugeot_308_gti_civ_bleu",59000],
			["cg_peugeot_308_gti_civ_white",59000],
			["cg_peugeot_308_gti_civ_jaune",59000],
			["cg_peugeot_308_gti_civ_rouge",59000],

			["cg_peugeot_308_rcz_noir",59000],
			["cg_peugeot_308_rcz_violet",59000],
			["cg_peugeot_308_rcz_rose",59000],
			["cg_peugeot_308_rcz_orange",59000],
			["cg_peugeot_308_rcz_grise",59000],
			["cg_peugeot_308_rcz_vert",59000],
			["cg_peugeot_308_rcz_bleufonce",59000],
			["cg_peugeot_308_rcz_bleu",59000],
			["cg_peugeot_308_rcz_white",59000],
			["cg_peugeot_308_rcz_jaune",59000],
			["cg_peugeot_308_rcz_rouge",59000],


			["Mrshounka_Alfa_Romeo_bleufonce",85000],
			["Mrshounka_Alfa_Romeo_grise",85000],
			["Mrshounka_Alfa_Romeo_jaune",85000],
			["Mrshounka_Alfa_Romeo_noir",85000],
			["Mrshounka_Alfa_Romeo_orange",85000],
			["Mrshounka_Alfa_Romeo_rose",85000],
			["Mrshounka_Alfa_Romeo_rouge",85000],
			["Mrshounka_Alfa_Romeo_violet",85000],

			["S_Rangerover_Black",85000],
			["S_Rangerover_Red",85000],
			["S_Rangerover_Blue",85000],
			["S_Rangerover_Green",85000],
			["S_Rangerover_Purple",85000],
			["S_Rangerover_Grey",85000],
			["S_Rangerover_Orange",85000],
			["S_Rangerover_White",85000],

			["POP_Qashqai_amarillo",85000],
			["pop_toyota_gt86_Blanco",85000],
			["pop_toyota_gt86_silver",85000],
            ["pop_toyota_gt86_gris",85000],
            ["pop_toyota_gt86_negro",85000],
            ["pop_toyota_gt86_azul",85000],
            ["pop_toyota_gt86_rojo",85000],
			
			["cg_peugeot_508_civ_noir",159000],
			["cg_peugeot_508_civ_violet",159000],
			["cg_peugeot_508_civ_rose",159000],
			["cg_peugeot_508_civ_orange",159000],
			["cg_peugeot_508_civ_grise",159000],
			["cg_peugeot_508_civ_vert",159000],
			["cg_peugeot_508_civ_bleufonce",159000],
			["cg_peugeot_508_civ_bleu",159000],
			["cg_peugeot_508_civ_white",159000],
			["cg_peugeot_508_civ_jaune",159000],
			["cg_peugeot_508_civ_rouge",159000],
			
			["A3L_JeepGrayBlack",190000],
            ["A3L_JeepGrayTan",190000],
            ["A3L_JeepTanTan",190000],
            ["A3L_JeepTanBlack",190000],
            ["A3L_JeepRedBlack",190000],
            ["A3L_JeepRedTan",190000],
            ["A3L_JeepGreenBlack",190000],
            ["A3L_JeepGreenTan",190000],
            ["A3L_JeepWhiteBlack",190000],
            ["A3L_Jeep",190000],
			
			["shounka_transam_orange",400000],
            ["shounka_transam_violet",400000],
            ["shounka_transam_grise",400000],
            ["shounka_transam_rose",400000],
            ["shounka_transam_jaune",400000],
            ["shounka_transam_rouge",400000],
            ["shounka_transam_bleufonce",400000],
            ["shounka_transam_noir",400000],
            ["shounka_transam",400000]
		];
	};
	case "civ_motorbike":
	{
		_return =
		[
			["tcg_hrly",25000],
			["tcg_hrly_white",25000],	
			["tcg_hrly_red",25000],
			["tcg_hrly_metal",25000],
			["tcg_hrly_blue",25000],
			["tcg_hrly_limited",45000],
			["tcg_hrly_demon",45000],
			["tcg_hrly_coco",45000],
			["tcg_hrly_orig1",45000],
			["tcg_hrly_orig2",45000],
			["tcg_hrly_skeleton",55000],
			["tcg_hrly_gay",65000],

			["cg_ducati_civ_noir",159000],
			["cg_ducati_civ_violet",159000],
			["cg_ducati_civ_rose",159000],
			["cg_ducati_civ_orange",159000],
			["cg_ducati_civ_grise",159000],
			["cg_ducati_civ_vert",159000],
			["cg_ducati_civ_bleufonce",159000],
			["cg_ducati_civ_bleu",159000],
			["cg_ducati_civ_white",159000],
			["cg_ducati_civ_jaune",159000],
			["cg_ducati_civ_rouge",159000]

		];
	};


	case "civ_truck":
	{
		_return =
		[
			["Jonzie_Transit",25000],
			["C_Van_01_fuel_F",70000],
			["C_Van_01_box_F",90000],
			["C_Van_01_transport_F",75000],


			["shounka_nemo_bleufonce",75000],
			["shounka_nemo_grise",75000],
			["shounka_nemo_jaune",75000],
			["shounka_nemo_noir",75000],
			["shounka_nemo_orange",75000],
			["shounka_nemo_rose",75000],
			["shounka_nemo_rouge",75000],
			["shounka_nemo_violet",75000],


			["cg_hummer_h1_noir",190000],
			["cg_hummer_h1_violet",190000],
			["cg_hummer_h1_rose",190000],
			["cg_hummer_h1_orange",190000],
			["cg_hummer_h1_grise",190000],
			["cg_hummer_h1_vert",190000],
			["cg_hummer_h1_bleufonce",190000],
			["cg_hummer_h1_bleu",190000],
			["cg_hummer_h1_white",190000],
			["cg_hummer_h1_jaune",190000],

			["shounka_h2_bleufonce",210000],
			["shounka_h2_grise",210000],
			["shounka_h2_jaune",210000],
			["shounka_h2_noir",210000],
			["shounka_h2_orange",210000],
			["shounka_h2_rose",210000],
			["shounka_h2_rouge",210000],
			["shounka_h2_violet",210000],


			["A3L_Bus",130000],
			["pop_bus_p",130000],
			
			
			
			["cg_daf_xf_euro6_noir",259000],
			["cg_daf_xf_euro6_violet",259000],
			["cg_daf_xf_euro6_rose",259000],
			["cg_daf_xf_euro6_orange",259000],
			["cg_daf_xf_euro6_grise",259000],
			["cg_daf_xf_euro6_vert",259000],
			["cg_daf_xf_euro6_bleufonce",259000],
			["cg_daf_xf_euro6_white",259000],
			["cg_daf_xf_euro6_jaune",259000],
			["cg_daf_xf_euro6_rouge",259000],
			["Jonzie_Flat_Bed",259000],
			["Jonzie_Log_Truck",259000],
			["Jonzie_Box_Truck",375000],
			["Jonzie_Tanker_Truck",375000],





			["cg_renault_magnum_truck_f_noir",459000],
			["cg_renault_magnum_truck_f_violet",459000],
			["cg_renault_magnum_truck_f_rose",459000],
			["cg_renault_magnum_truck_f_orange",459000],
			["cg_renault_magnum_truck_f_grise",459000],
			["cg_renault_magnum_truck_f_vert",459000],
			["cg_renault_magnum_truck_f_white",459000],
			["cg_renault_magnum_truck_f_jaune",459000],



			["shounka_avalanche_bleufonce",700000],
			["shounka_avalanche_grise",700000],
			["shounka_avalanche_jaune",700000],
			["shounka_avalanche_noir",700000],
			["shounka_avalanche_orange",700000],
			["shounka_avalanche_rose",700000],
			["shounka_avalanche_rouge",700000],
			["shounka_avalanche_violet",700000],


			["shounka_ivceco_bleufonce",1000000],
			["shounka_ivceco_grise",1000000],
			["shounka_ivceco_jaune",1000000],
			["shounka_ivceco_noir",1000000],
			["shounka_ivceco_orange",1000000],
			["shounka_ivceco_rose",1000000],
			["shounka_ivceco_rouge",1000000],
			["shounka_ivceco_violet",1000000],

			["Nhz_audia8limo",330000],

			["cg_audi_a8_limo_noir",1190000],
			["cg_audi_a8_limo_violet",1190000],
			["cg_audi_a8_limo_rose",1190000],
			["cg_audi_a8_limo_orange",1190000],
			["cg_audi_a8_limo_grise",1190000],
			["cg_audi_a8_limo_vert",1190000],
			["cg_audi_a8_limo_bleufonce",1190000],
			["cg_audi_a8_limo_bleu",1190000],
			["cg_audi_a8_limo_white",1190000],
			["cg_audi_a8_limo_jaune",1190000],

			["wirk_h3_limo",4130000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["I_G_Van_01_fuel_F",140000],
			["B_Heli_Light_01_F",700000],
			["B_G_Offroad_01_F",165000],
			["O_Heli_Light_02_unarmed_F",2500000]
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
			["ivory_wrx_cop_marked",200000],
			["ivory_wrx_cop_unmarked",200000],
			["ivory_wrx_cop_slicktop",200000],
			["A3L_CVPIFPBDOC",20000],
			["A3L_TaurusCO2",25000],
			["cg_cvpifpblbpd",20000],	
			["cg_TaurusPD1",25000],	
			["DAR_ExplorerPolice",40000],
			["charger_pd_skinned",90000],
			["cg_ss2",25000],
			["DAR_ExplorerSheriff",40000],
			["charger_sh_skinned",90000],			
			["cg_suburban_sert_pol",40000],					
			["cg_evoSERT1",70000],
			["charger_sert",90000],
			["cg_h2_sert",110000],	
			["AM_Holden_SO",40000],		
			["A3L_CVPIUC",20000],
			["A3L_CVPIUCBlack",20000],
			["A3L_CVPIUCBlue",20000],
			["cg_mercedes_sprinter_pol_base_reg",25000],
			["cg_ducati_pol_reg",25000],			
			["DAR_ExplorerPoliceStealth",30000],			
			["A3L_jailBus",50000]		
  			
		];
	};
	case "civ_air":
	{
		_return =
		[
			
			["Sab_af_An2",300000],
			["Sab_tk_An2",300000],
			["Sab_ca_An2",300000],
			["Sab_ana_An2",300000],
			["Sab_yel_An2",300000],
			["Sab_fd_An2",300000],

			["Sab_Sea2_An2",300000],
			["Sab_Sea4_An2",300000],
			["Sab_Amphi_An2",300000],

			["sab_camel",300000],

			["IVORY_T6A_1",300000],
			["bwi_a3_t6a",300000],
            ["bwi_a3_t6a_1",300000],
            ["bwi_a3_t6a_2",300000],
            ["bwi_a3_t6a_3",300000],
            ["bwi_a3_t6a_4",300000],
            ["bwi_a3_t6a_5",300000],
            ["bwi_a3_t6a_6",300000],
			["bwi_a3_t6a_7",300000],
            ["bwi_a3_t6a_8",300000],
            ["bwi_a3_t6a_9",300000],
            ["bwi_a3_t6c",300000],
			["B_Heli_Light_01_F",350000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["CUP_C_DC3_CIV",800000],
			["CUP_C_C47_CIV",1000000],			
			["GNT_C185",1000000],
			["IVORY_CRJ200_1",1000000],
			["IVORY_ERJ135_1",1000000]
		];
	};
	case "cop_air":
	{
		_return =
		[			
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000],
			["EC635_SAR",20000],
			["melb_h6m",85000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["B_Heli_Light_01_F",45000],
			["EC635_SAR",20000],
			["C_Heli_Light_01_civil_F",45000]
		];
	};
	case "med_ship":
	{
		_return = 
		[
			["CG_EMS_Boat",12500]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",20000],
			["CUP_B_Zodiac_USMC",40000],
			["C_Boat_Civil_01_F",125000],
			["CUP_C_Fishing_Boat_Chernarus",150000],
			["A3L_Ship",400000],
			["A3L_Jetski",50000],
			["A3L_Jetski_yellow",50000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
