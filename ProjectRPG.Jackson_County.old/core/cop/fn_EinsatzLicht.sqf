/*
	Filename : fn_EinsatzLicht.sqf
	Author : Ragebone
		re-modified by:
		Marcel "VariatoX" Koch
	Description : Handhabt alles was mit den Einsatzlichtern zutun hat.
*/
if(isServer)exitWith{};
private["_type","_veh","_state"];
_veh = _this select 0;
if(_veh == player) exitWith {hint "Klar, schraub dir das Blaulicht auf'n Kopf xD"};

if(!alive _veh) exitWith {};
if(isNull _veh) exitWith {}; 

_xcar =_veh getVariable"xcar";
_type = _xcar select 0;
_state = _xcar select 1;

if(_state) then {
	_veh setVariable["xcar",[_type,false,_xcar select 2],TRUE];
} else {
	switch(_type)do {

		case "geheim_car":{
			if(isNil{_xcar select 2})then{
//				_light = "Land_Camping_Light_off_F" createVehicle getPosATL player;
				_light = "PortableHelipadLight_01_blue_F" createVehicle getPosATL player;
				switch(typeOf _veh)do{
					case "A3L_CVBlack":{				_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVGrey":{					_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVWhite":{				_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "cl3_e63_amg_black":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_white":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_lime":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_light_yellow":{	_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e60_m5_black":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_white":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_lime":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_light_yellow":{	_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
			/*
			**		U P D A T E 
			**			BLAULICHT
			*/
				//Mustang
					case "Mrshounka_mustang_mat":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_noir":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_mat_n":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_bleufonce":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_mat_b":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
				//Range Rover
					case "cl3_range_rover_white":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_lime":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_light_yellow":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_grey":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_burgundy":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_black":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
				//SUV Black
					case "cl3_suv_black":{	_light attachTo[_veh,[0, 0.8, -0.12]];};
				//Hummer
					case "Mrshounka_hummer_civ_noir":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_bleufonce":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_rouge":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_rose":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
				//RS5 Audi
					case "shounka_a3_rs5_civ_noir":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_bleufonce":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_rouge":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_jaune":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_rose":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_grise":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_violet":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_orange":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
				//Audi Silver SAL
					case "SAL_AudiCivSilver":{	_light attachTo[_veh,[-0.4, 0.1, -0.27]];};
				//Taurus
					case "A3L_TaurusBlack":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusBlue":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusRed":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusWhite":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
				//Opel Insignia
					case "cl3_insignia_white": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_purple": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_navy_blue": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_lime": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_light_yellow": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_light_blue": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_grey": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_gold": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_burgundy": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_black": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
				//BMW M6
					case "Mrshounka_bmwm6_noir": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_bleufonce": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_rouge": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_jaune": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_rose": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_grise": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_violet": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_orange": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
				//BMW M1
					case "Mrshounka_bmwm1_civ_noir": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_bleufonce": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_rouge": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_jaune": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_rose": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_grise": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_violet": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_orange": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
				//M3 DAR Mod
					case "DAR_M3CivBlack": {	_light attachTo[_veh,[-0.4, -0.1, -0.2]];};
				//AM 2015C
					case "AM_2015C_Green": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Red": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Grey": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Orange": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_White": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Black": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
				//Jonzie
					case "Jonzie_Mini_Cooper": {	_light attachTo[_veh,[-0.45, -1, -0.05]];};
					case "Jonzie_Mini_Cooper_R_spec": {	_light attachTo[_veh,[-0.45, -1, -0.05]];};
				//VW Polo GTI
					case "cl3_polo_gti_lime": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_light_yellow": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_light_blue": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_grey": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_gold": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_burgundy": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_black": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
				//Golf MK2
					case "cl3_golf_mk2_light_yellow": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_light_blue": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_grey": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_gold": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_burgundy": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_black": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					
				//Update
				
					case "wirk_cayenne":{ _light attachTo[_veh,[-0.6,0,0.55]];};
					case "ALFR_GeK_Panamera":{ _light attachTo[_veh,[-0.5,0.1,0.1]];};
					case "S_PorscheRS_Black":{ _light attachTo[_veh,[-0.4,-0.1,0.03]];};

				//Carrera GT
					case "cl3_carrera_gt_black":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_white":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_purple":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_navy_blue":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_lime":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_light_blue":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_grey":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_gold":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_burgundy":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};

				//Bentley Continentale
					case "ivory_c":{ _light attachTo[_veh,[-0.5,0.1,0.05]];};
					case "ivory_c_livery1":{ _light attachTo[_veh,[-0.5,0.1,0.05]];};
					case "ivory_c_livery2":{ _light attachTo[_veh,[-0.5,0.1,0.05]];};
					case "ivory_c_livery3":{ _light attachTo[_veh,[-0.5,0.1,0.05]];};
					case "ivory_c_livery4":{ _light attachTo[_veh,[-0.5,0.1,0.05]];};
					 
				//Lexus LFA
					case "ivory_lfa":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					case "ivory_lfa_sport1":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					case "ivory_lfa_sport2":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					case "ivory_lfa_sport3":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					case "ivory_lfa_sport4":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					case "ivory_lfa_sport5":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					 
				//Lambo LP560
					case "ivory_lp560":{ _light attachTo[_veh,[-0.4,0,0.14]];};
					 
				//Ferrari 458
					case "cl3_458_white":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_purple":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_navy_blue":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_lime":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_light_yellow":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_light_blue":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_grey":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_gold":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_burgundy":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_black":{ _light attachTo[_veh,[-0.4,0,-0.1]];};

				//Aston Martin:
					case "S_Vantage_Red":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_Blue":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_Black":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_Yellow":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_LightBlue":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_Purple":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_White":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "cl3_dbs_volante_white":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_purple":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_navy_blue":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_lime":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_light_yellow":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_light_blue":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_grey":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_gold":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_burgundy":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_black":{ _light attachTo[_veh,[0,0.5,0.86]];};

				//Subaru
					case "Jonzie_STI":{ _light attachTo[_veh,[0.5,-0.1,1.61]];};
					case "ivory_wrx":{ _light attachTo[_veh,[-0.4,-0.1,0.33]];};
					
				//BMW:
					case "cl3_z4_2008_white":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_purple":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_navy_blue":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_lime":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_light_yellow":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_light_blue":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_grey":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_burgundy":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_black":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "DAR_M3CivBlack":{ _light attachTo[_veh,[-0.35,-0.05,-0.21]];};
					case "DAR_M3CivWhite":{ _light attachTo[_veh,[-0.35,-0.05,-0.21]];};
					case "DAR_M3CivGrey":{ _light attachTo[_veh,[-0.35,-0.05,-0.21]];};
					 
				//Nissan
					case "Mrshounka_a3_gtr_civ_noir":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "Mrshounka_a3_gtr_civ_bleu":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "Mrshounka_a3_gtr_civ_orange":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "Mrshounka_a3_gtr_civ_grau":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "Mrshounka_a3_gtr_civ_gruen":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "Mrshounka_a3_gtr_civ_violet":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "S_Skyline_Red":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};
					case "S_Skyline_Blue":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};
					case "S_Skyline_Black":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};
					case "S_Skyline_Yellow":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};
					case "S_Skyline_Purple":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};
					case "S_Skyline_White":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};

				//Dodge
					case "cl3_dodge_charger_f_white":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_purple":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_blue":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_lime":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_grey":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_black":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_darkgreen":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_darkred":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_orange":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};  
					 
				//Challenger
					case "A3L_Challenger":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};
					case "A3L_ChallengerGreen":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};
					case "A3L_ChallengerRed":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};
					case "A3L_ChallengerWhite":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};
					case "A3L_ChallengerBlack":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};
					case "A3L_ChallengerBlue":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};

				//Ford:
					case "ivory_gt500":{ _light attachTo[_veh,[-0.5,-0.08,0.32]];};
					case "A3L_F350Black":{ _light attachTo[_veh,[0,1.5,0.02]];};
					case "A3L_F350Blue":{ _light attachTo[_veh,[0,1.5,0.02]];};
					case "A3L_F350Red":{ _light attachTo[_veh,[0,1.5,0.02]];};
					case "A3L_F350White":{ _light attachTo[_veh,[0,1.5,0.02]];};
					case "Jonzie_Raptor":{ _light attachTo[_veh,[0,1.18,1.01]];};
					case "Jonzie_XB":{ _light attachTo[_veh,[0.44,0.05,0.14]];};
					 
				//Jeep
					case "Jonzie_Escalade":{ _light attachTo[_veh,[0,1.3,1.18]];};

				//Renault
					case "Mrshounka_megane_rs_2015_noir":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_bleufonce":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_rouge":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_jaune":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_rose":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_grise":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_violet":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_orange":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					 
				//Golf
					case "RDS_Golf4_Civ_01":{ _light attachTo[_veh,[-0.4,0.1,0.05]];};

				//Gebrauchtwagen:
					case "Jonzie_Quattroporte":{ _light attachTo[_veh,[0.5,-0.2,0.03]];};
					case "Jonzie_Ute":{ _light attachTo[_veh,[0.5,-0.04,1.53]];};
					case "Jonzie_VE":{ _light attachTo[_veh,[0.5,0,1.59]];};
					case "Jonzie_Corolla":{ _light attachTo[_veh,[0.5,-0.3,0.6]];};
					case "Jonzie_Ceed":{ _light attachTo[_veh,[0.5,-0.3,0.06]];};
					case "Jonzie_Galant":{ _light attachTo[_veh,[0.5,-0.7,0.04]];};
					case "A3L_RX7_Blue":{ _light attachTo[_veh,[0.5,-0.1,0.08]];};
					case "A3L_RX7_Red":{ _light attachTo[_veh,[0.5,-0.1,0.08]];};
					case "A3L_RX7_White":{ _light attachTo[_veh,[0.5,-0.1,0.08]];};
					case "A3L_RX7_Black":{ _light attachTo[_veh,[0.5,-0.1,0.08]];};
					case "A3L_Camaro":{ _light attachTo[_veh,[-0.5,-0.5,-0.15]];};
					 
				//Audi
					case "cl3_r8_spyder_white":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_purple":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_navy_blue":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_lime":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_light_yellow":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_light_blue":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_grey":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_gold":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_burgundy":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_black":{ _light attachTo[_veh,[0,0.85,0.8]];};	
					case "IVORY_R8":{ _light attachTo[_veh,[-0.5,0.1,-0.1]];};
					case "Nhz_audia8limo":{ _light attachTo[_veh,[-0.5,1,0.11]];};
					
					default{deleteVehicle _light; hint "Fahrzeug unterstützt kein Blaulicht"; _exit = true;};
				};
			};
			if(!isNil "_exit") exitWith {};
			_veh setVariable["xcar",[_type,true,true],TRUE];	
			[_veh,0.5] remoteExec ["life_fnc_ULights",-2];
		};
		case "BL_car":{
			if(isNil{_xcar select 2})then{
//				_light = "Land_Camping_Light_off_F" createVehicle getPosATL player;
				_light = "PortableHelipadLight_01_blue_F" createVehicle getPosATL player;
				switch(typeOf _veh)do{
					case "A3L_CVBlack":{				_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVGrey":{					_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "A3L_CVWhite":{				_light attachTo[_veh,[-0.45, -0.1, 0.17]];};
					case "cl3_e63_amg_black":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];}; //minus links,vor und zurück- minus hinten,höhe
					case "cl3_e63_amg_white":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_lime":{			_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e63_amg_light_yellow":{	_light attachTo[_veh,[-0.48, -0.82, 0.04]];};
					case "cl3_e60_m5_black":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_white":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_lime":{			_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
					case "cl3_e60_m5_light_yellow":{	_light attachTo[_veh,[-0.48, -0.82, 0.16]];};
				//Mustang
					case "Mrshounka_mustang_mat":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_noir":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_mat_n":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_bleufonce":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
					case "Mrshounka_mustang_mat_b":{	_light attachTo[_veh,[-0.5, -0.1, 1.33]];};
				//Range Rover
					case "cl3_range_rover_white":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_lime":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_light_yellow":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_grey":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_burgundy":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
					case "cl3_range_rover_black":{	_light attachTo[_veh,[0, 0.25, -0.17]];};
				//SUV Black
					case "cl3_suv_black":{	_light attachTo[_veh,[0, 0.8, -0.12]];};
				//Hummer
					case "Mrshounka_hummer_civ_noir":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_bleufonce":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_rouge":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
					case "Mrshounka_hummer_civ_rose":{	_light attachTo[_veh,[-0.2, 0.87, 0.97]];};
				//RS5 Audi
					case "shounka_a3_rs5_civ_noir":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_bleufonce":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_rouge":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_jaune":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_rose":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_grise":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_violet":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
					case "shounka_a3_rs5_civ_orange":{	_light attachTo[_veh,[-0.5, -0.1, 0.2]];};
				//Audi Silver SAL
					case "SAL_AudiCivSilver":{	_light attachTo[_veh,[-0.4, 0.1, -0.27]];};
				//Taurus
					case "A3L_TaurusBlack":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusBlue":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusRed":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
					case "A3L_TaurusWhite":{	_light attachTo[_veh,[-0.4, 0.1, 0.27]];};
				//Opel Insignia
					case "cl3_insignia_white": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_purple": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_navy_blue": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_lime": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_light_yellow": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_light_blue": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_grey": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_gold": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_burgundy": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
					case "cl3_insignia_black": {	_light attachTo[_veh,[-0.4, -0.4, 0.07]];};
				//BMW M6
					case "Mrshounka_bmwm6_noir": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_bleufonce": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_rouge": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_jaune": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_rose": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_grise": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_violet": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
					case "Mrshounka_bmwm6_orange": {	_light attachTo[_veh,[-0.4, 0, 1.28]];};
				//BMW M1
					case "Mrshounka_bmwm1_civ_noir": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_bleufonce": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_rouge": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_jaune": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_rose": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_grise": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_violet": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
					case "Mrshounka_bmwm1_civ_orange": {	_light attachTo[_veh,[-0.4, 0.15, 1.34]];};
				//M3 DAR Mod
					case "DAR_M3CivBlack": {	_light attachTo[_veh,[-0.4, -0.1, -0.2]];};
				//AM 2015C
					case "AM_2015C_Green": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Red": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Grey": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Orange": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_White": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
					case "AM_2015C_Black": {	_light attachTo[_veh,[-0.84, 0, 0.02]];};
				//Jonzie
					case "Jonzie_Mini_Cooper": {	_light attachTo[_veh,[-0.45, -1, -0.05]];};
					case "Jonzie_Mini_Cooper_R_spec": {	_light attachTo[_veh,[-0.45, -1, -0.05]];};
				//VW Polo GTI
					case "cl3_polo_gti_lime": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_light_yellow": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_light_blue": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_grey": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_gold": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_burgundy": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
					case "cl3_polo_gti_black": {	_light attachTo[_veh,[-0.4, -0.55, 0.05]];};
				//Golf MK2
					case "cl3_golf_mk2_light_yellow": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_light_blue": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_grey": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_gold": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_burgundy": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					case "cl3_golf_mk2_black": {	_light attachTo[_veh,[-0.4, -0.4, -0.04]];};
					
				//Update
					case "wirk_cayenne":{ _light attachTo[_veh,[-0.6,0,0.55]];};
					case "ALFR_GeK_Panamera":{ _light attachTo[_veh,[-0.5,0.1,0.1]];};
					case "S_PorscheRS_Black":{ _light attachTo[_veh,[-0.4,-0.1,0.03]];};

				//Carrera GT
					case "cl3_carrera_gt_black":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_white":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_purple":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_navy_blue":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_lime":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_light_blue":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_grey":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_gold":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};
					case "cl3_carrera_gt_burgundy":{ _light attachTo[_veh,[-0.4,-0.2,-0.16]];};

				//Bentley Continentale
					case "ivory_c":{ _light attachTo[_veh,[-0.5,0.1,0.05]];};
					case "ivory_c_livery1":{ _light attachTo[_veh,[-0.5,0.1,0.05]];};
					case "ivory_c_livery2":{ _light attachTo[_veh,[-0.5,0.1,0.05]];};
					case "ivory_c_livery3":{ _light attachTo[_veh,[-0.5,0.1,0.05]];};
					case "ivory_c_livery4":{ _light attachTo[_veh,[-0.5,0.1,0.05]];};
					 
				//Lexus LFA
					case "ivory_lfa":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					case "ivory_lfa_sport1":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					case "ivory_lfa_sport2":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					case "ivory_lfa_sport3":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					case "ivory_lfa_sport4":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					case "ivory_lfa_sport5":{ _light attachTo[_veh,[-0.4,-0.2,0.09]];};
					 
				//Lambo LP560
					case "ivory_lp560":{ _light attachTo[_veh,[-0.4,0,0.14]];};
					 
				//Ferrari 458
					case "cl3_458_white":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_purple":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_navy_blue":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_lime":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_light_yellow":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_light_blue":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_grey":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_gold":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_burgundy":{ _light attachTo[_veh,[-0.4,0,-0.1]];};
					case "cl3_458_black":{ _light attachTo[_veh,[-0.4,0,-0.1]];};

				//Aston Martin:
					case "S_Vantage_Red":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_Blue":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_Black":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_Yellow":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_LightBlue":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_Purple":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "S_Vantage_White":{ _light attachTo[_veh,[-0.5,-0.19,-0.02]];};
					case "cl3_dbs_volante_white":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_purple":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_navy_blue":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_lime":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_light_yellow":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_light_blue":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_grey":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_gold":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_burgundy":{ _light attachTo[_veh,[0,0.5,0.86]];};
					case "cl3_dbs_volante_black":{ _light attachTo[_veh,[0,0.5,0.86]];};

				//Subaru
					case "Jonzie_STI":{ _light attachTo[_veh,[0.5,-0.1,1.61]];};
					case "ivory_wrx":{ _light attachTo[_veh,[-0.4,-0.1,0.33]];};
					
				//BMW:
					case "cl3_z4_2008_white":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_purple":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_navy_blue":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_lime":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_light_yellow":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_light_blue":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_grey":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_burgundy":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "cl3_z4_2008_black":{ _light attachTo[_veh,[-0.45,-0.4,-0.08]];};
					case "DAR_M3CivBlack":{ _light attachTo[_veh,[-0.35,-0.05,-0.21]];};
					case "DAR_M3CivWhite":{ _light attachTo[_veh,[-0.35,-0.05,-0.21]];};
					case "DAR_M3CivGrey":{ _light attachTo[_veh,[-0.35,-0.05,-0.21]];};
					 
				//Nissan
					case "Mrshounka_a3_gtr_civ_noir":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "Mrshounka_a3_gtr_civ_bleu":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "Mrshounka_a3_gtr_civ_orange":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "Mrshounka_a3_gtr_civ_grau":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "Mrshounka_a3_gtr_civ_gruen":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "Mrshounka_a3_gtr_civ_violet":{ _light attachTo[_veh,[-0.5,-0.1,1.25]];};
					case "S_Skyline_Red":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};
					case "S_Skyline_Blue":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};
					case "S_Skyline_Black":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};
					case "S_Skyline_Yellow":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};
					case "S_Skyline_Purple":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};
					case "S_Skyline_White":{ _light attachTo[_veh,[0.48,-0.1,0.1]];};

				//Dodge
					case "cl3_dodge_charger_f_white":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_purple":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_blue":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_lime":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_grey":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_black":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_darkgreen":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_darkred":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};
					case "cl3_dodge_charger_f_orange":{ _light attachTo[_veh,[-0.48,0.18,1.4]];};  
					 
				//Challenger
					case "A3L_Challenger":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};
					case "A3L_ChallengerGreen":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};
					case "A3L_ChallengerRed":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};
					case "A3L_ChallengerWhite":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};
					case "A3L_ChallengerBlack":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};
					case "A3L_ChallengerBlue":{ _light attachTo[_veh,[-0.46,-0.7,0.22]];};

				//Ford:
					case "ivory_gt500":{ _light attachTo[_veh,[-0.5,-0.08,0.32]];};
					case "A3L_F350Black":{ _light attachTo[_veh,[0,1.5,0.02]];};
					case "A3L_F350Blue":{ _light attachTo[_veh,[0,1.5,0.02]];};
					case "A3L_F350Red":{ _light attachTo[_veh,[0,1.5,0.02]];};
					case "A3L_F350White":{ _light attachTo[_veh,[0,1.5,0.02]];};
					case "Jonzie_Raptor":{ _light attachTo[_veh,[0,1.18,1.01]];};
					case "Jonzie_XB":{ _light attachTo[_veh,[0.44,0.05,0.14]];};
					 
				//Jeep
					case "Jonzie_Escalade":{ _light attachTo[_veh,[0,1.3,1.18]];};

				//Renault
					case "Mrshounka_megane_rs_2015_noir":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_bleufonce":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_rouge":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_jaune":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_rose":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_grise":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_violet":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					case "Mrshounka_megane_rs_2015_orange":{ _light attachTo[_veh,[-0.5,-0.7,0.66]];};
					 
				//Golf
					case "RDS_Golf4_Civ_01":{ _light attachTo[_veh,[-0.4,0.1,0.05]];};

				//Gebrauchtwagen:
					case "Jonzie_Quattroporte":{ _light attachTo[_veh,[0.5,-0.2,0.03]];};
					case "Jonzie_Ute":{ _light attachTo[_veh,[0.5,-0.04,1.53]];};
					case "Jonzie_VE":{ _light attachTo[_veh,[0.5,0,1.59]];};
					case "Jonzie_Corolla":{ _light attachTo[_veh,[0.5,-0.3,0.6]];};
					case "Jonzie_Ceed":{ _light attachTo[_veh,[0.5,-0.3,0.06]];};
					case "Jonzie_Galant":{ _light attachTo[_veh,[0.5,-0.7,0.04]];};
					case "A3L_RX7_Blue":{ _light attachTo[_veh,[0.5,-0.1,0.08]];};
					case "A3L_RX7_Red":{ _light attachTo[_veh,[0.5,-0.1,0.08]];};
					case "A3L_RX7_White":{ _light attachTo[_veh,[0.5,-0.1,0.08]];};
					case "A3L_RX7_Black":{ _light attachTo[_veh,[0.5,-0.1,0.08]];};
					case "A3L_Camaro":{ _light attachTo[_veh,[-0.5,-0.5,-0.15]];};
					 
				//Audi
					case "cl3_r8_spyder_white":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_purple":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_navy_blue":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_lime":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_light_yellow":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_light_blue":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_grey":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_gold":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_burgundy":{ _light attachTo[_veh,[0,0.85,0.8]];};
					case "cl3_r8_spyder_black":{ _light attachTo[_veh,[0,0.85,0.8]];};	
					case "IVORY_R8":{ _light attachTo[_veh,[-0.5,0.1,-0.1]];};
					case "Nhz_audia8limo":{ _light attachTo[_veh,[-0.5,1,0.11]];};
					
					default{deleteVehicle _light; hint "Fahrzeug unterstützt kein Blaulicht"; _exit = true;};
				};
			};
			if(!isNil "_exit") exitWith {};
			_veh setVariable["xcar",[_type,true,true],TRUE];	
			[_veh,0.7] remoteExec ["life_fnc_ULights",-2];
		};
	};
};