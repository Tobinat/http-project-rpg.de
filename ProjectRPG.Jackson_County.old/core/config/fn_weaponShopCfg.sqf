#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/

params [["_shop", "", [""]]];

if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
_ret = [];
 
switch(_shop) do
{
        case "med_supplies":
        {
			switch (true) do
			{
				case (playerSide != independent): {"You are not an EMS"};
				default {
					["EMS Supplies Shop",
						[
							["ToolKit",nil,1000],
							["ItemCompass",nil,50],
							["tf_anprc152",nil,10],
							["ItemWatch",nil,10]
						]
					];
				};
			};
        };
        case "med_basic":
        {
			switch (true) do
			{
				case (playerSide != independent): {"You are not an EMS"};
				default {
					["EMS Basic Shop",
						[
							["cg_torch",nil,250], 
							["cg_torchbattery",nil,250], 
							["TRYK_Headset_NV",nil,250], 
							["ACE_EarPlugs",nil,5],
							["ACE_tourniquet",nil,5], 
							["ACE_quikclot",nil,5], 
							["ACE_elasticBandage",nil,5],
							["ACE_packingBandage",nil,5],
							["ACE_morphine",nil,20], 
							["ACE_epinephrine",nil,20], 
							["ACE_surgicalKit",nil,50], 
							["ACE_bodyBag",nil,50], 
							["ACE_bloodIV_500",nil,20], 
							["ACE_bloodIV_250",nil,20], 
							["ACE_salineIV_500",nil,20], 
							["ACE_salineIV_250",nil,20], 
							["ACE_plasmaIV_500",nil,20], 
							["ACE_plasmaIV_250",nil,20], 
							["ACE_fieldDressing",nil,5], 
							["ACE_atropine",nil,20],
							
							
							["acc_flashlight","Extinguisher Flashlight",10],
							["CG_ATF_Drug_Bottle_01_i","Valium",5],
							["A3L_Extinguisher",nil,35],
							["30Rnd_test_mag_Tracer",nil,35],
							["ItemGPS",nil,25],
							["tf_microdagr",nil,5],
							["tf_anprc152",nil,10],
							["Binocular",nil,120],
							["ToolKit",nil,2500],
							["ItemCompass",nil,50],
							["ItemWatch",nil,10],
							["Chemlight_red",nil,20],
							["Chemlight_yellow",nil,20],
							["Chemlight_green",nil,20],
							["Chemlight_blue",nil,20]
						]
					];
				};
			};
        };
    
        case "cop_basic":
        {
			switch(true) do
			{
				case (playerSide != west): {"You are not a cop!"};
				default
				{
					["Police Utility Shop",								
						[
							["CG_ATF_Handcuffs_i","Hand Cuffs",10],
							["ItemCopCard","Zugangskarte",500],
							["ACE_EarPlugs",nil,50],
							["TRYK_SPgear_PHC1_NV","NV",10],
							["cg_torch",nil,250], 
							["ItemGPS",nil,25],
							["CG_Spikes_Collapsed",nil,250], 
							["cg_torchbattery",nil,250], 
							["gign_shield","Riot Shield",10],
							["CG_BATON","Police Baton",10],
							["CG_TELBAT","Police TelBat",10],
							["acc_flashlight","ACC Flashlight",10],
							["RH_M6X","RH Flashlight",10],
							["A3L_M4Flashlight","M4A3 Flashlight",10],
							["Radar_Gun","Radar Gun",25], 
							["ToolKit",nil,1000], 
							["ItemCompass",nil,50],  
							["ItemWatch",nil,10],                                          
							["Taser_26","Taser",5],
							["26_cartridge",nil,2],
							["Chemlight_red",nil,20],
							["Chemlight_yellow",nil,20],
							["Chemlight_green",nil,20],
							["Chemlight_blue",nil,20],
							["Binocular",nil,15],
							["Rangefinder","Rangefinder SERT ONLY",500],
							["ItemGPS",nil,10],  
							["tf_anprc152",nil,10]
						]
					];
				};
			};
        };
		
		case "cop_weaponShop": 
		{
			_ret = [];
			if(__GETC__(life_coplevel) > 0) then {
				_ret pushBack [
					["A3L_Extinguisher",nil,10],
					["30Rnd_test_mag_Tracer",nil,5],
					["RH_m9",nil,240],
					["RH_15Rnd_9x19_M9",nil,5]
				];
			};
			if(__GETC__(life_coplevel) > 0) then {
				_temp = [
	
					
					["RH_p226",nil,3100],
					["RH_17Rnd_9x19_g17",nil,25],
					
					["RH_sw659",nil,3100],
					["RH_14Rnd_9x19_sw",nil,25],
					
					["RH_g19",nil,3100],
					["RH_14Rnd_9x19_sw",nil,25],
					
					["RH_usp",nil,3100],
					["RH_12Rnd_45cal_usp",nil,25],
					
					["hlc_smg_mp5a4",nil,3100],
					["hlc_30Rnd_9x19_GD_MP5",nil,25]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 0) then {
				_temp =  [
					["RH_compM2l","Rifle Aimpoint Low",25],
					["RH_compM2","Rifle Aimpoint",25]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;	
			};
			if(__GETC__(life_coplevel) > 0) then {
				_temp =  [
					["RH_M4A1_ris",nil,4222],
					["RH_30Rnd_556x45_M855A1",nil,20],
					["RH_barska_rds","Barska Red Dot",25],
					["RH_cmore","C-more Red Dot",25],
					["RH_m4covers_f",nil,25]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;	
			};
			if(__GETC__(life_coplevel) > 0) then {
				_temp =  [
					["RH_PDW",nil,4220],
					["RH_30Rnd_6x35_mag",nil,220]
										
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;	
			};
			if(__GETC__(life_coplevel) > 0) then {
				_temp =  [
					["RH_M4A6",nil,12220],
					["optic_MRCO",nil,220],
					["RH_30Rnd_68x43_FMJ",nil,220],
					["RH_SFM952V",nil,80],
					["RH_compM2l",nil,80],
					["RH_t1","Aimpoint",10],
					["RH_ta648",nil,222],
					["prpl_benelli_14_pgs_rail","Shotgun Rubber",2200],
					["prpl_6Rnd_12Gauge_Slug","Rubber Bullets",20],
					["RH_bull",nil,240],
					["RH_6Rnd_454_Mag",nil,4],
					["RH_bullb",nil,240],
					["RH_6Rnd_454_Mag",nil,4]				
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;	
			};
			if(__GETC__(life_coplevel) > 0) then {
				_temp =  [
					["RH_m110sd","MK 11 Silencer",220],
					["RH_qdss_nt4","M4A6 Silencer",220],
					["muzzle_snds_H","KAC Silencer",220],
					["RH_peq2","Laser (All Rifles)",220],

					["RH_Mk11",nil,6220],
					["RH_20Rnd_762x51_M80A1",nil,220],
					["RH_20Rnd_762x51_Mk316LR",nil,220],
					
					["RH_Hk416s",nil,12220],
					["RH_30Rnd_556x45_M855A1",nil,220],
					["RH_30Rnd_556x45_Mk262",nil,220],
					["RH_30Rnd_556x45_Mk318",nil,220],
					
					["hlc_rifle_auga2_b",nil,15000],
					["hlc_30Rnd_556x45_B_AUG",nil,220],
					
                    ["RH_leu_mk4",nil,100],
				    ["RH_fn57",nil,1120],
					["RH_sfn57",nil,20],
					["RH_M6X",nil,20],
					["RH_fa556",nil,20],
					["RH_m110sd",nil,20],
					["RH_20Rnd_57x28_FN",nil,20]


				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;	
			};
			["Police Weapon Shop", _ret select 0];
		};

        case "udc_basic":
        {
			switch(true) do
			{
				case (!license_civ_udc): {"Sie sind nicht befugt auf diesen Shop zuzugreifen."};
				default
				{
					["Ausrüstungskammer",								
						[
							["CG_ATF_Handcuffs_i","Hand Cuffs",10],
							["ItemCopCard",nil,5000],
							["ToolKit",nil,1000],
							["ACE_fieldDressing",nil,50],
							["TRYK_SPgear_PHC1_NV","NV",10],
							["cg_torch",nil,250],
							["ItemGPS",nil,25],
							["CG_Spikes_Collapsed",nil,250], 
							["cg_torchbattery",nil,250], 
							["gign_shield","Riot Shield",10],
							["CG_BATON","Police Baton",10],
							["CG_TELBAT","Police TelBat",10],
							["acc_flashlight","ACC Flashlight",10],
							["RH_M6X","RH Flashlight",10],
							["A3L_M4Flashlight","M4A3 Flashlight",10],
							["Radar_Gun","Radar Gun",25], 
							["ItemCompass",nil,50],  
							["ItemWatch",nil,10],                                          
							["Taser_26","Taser",5],
							["26_cartridge",nil,2],
							["Binocular",nil,15],
							["Rangefinder","Rangefinder SERT ONLY",500],
							["ItemGPS",nil,10],  
							["tf_anprc152",nil,10],
							["TRYK_Shemagh_TAN_NV",nil,200],
							["TRYK_US_ESS_Glasses_H",nil,200],
							["TRYK_G_Shades_Black_NV",nil,200],
							["TRYK_G_bala_ess_NV",nil,200],
							["NVGoggles_OPFOR",nil,200]
						]
					];
				};
			};
        };
		
		
		case "udc_weaponShop": 
		{
			switch(true) do
			{
				case (!license_civ_udc): {"Sie sind nicht befugt auf diesen Shop zuzugreifen."};
				default
				{
					["Waffenkammer",								
						[
						//Handfeuerwafen
							["RH_m9",nil,2400],
							["RH_15Rnd_9x19_M9",nil,5],
							
							["RH_fnp45",nil,2400],
							["RH_15Rnd_45cal_fnp",nil,4],
							
							["RH_g17",nil,1200],
							["RH_g19",nil,1600],
							["RH_g19t",nil,1800],
							["RH_17Rnd_9x19_g17",nil,20],
							
							["RH_fn57",nil,1120],
							["RH_20Rnd_57x28_FN",nil,20],
							
							["RH_usp",nil,2400],
							["RH_12Rnd_45cal_usp",nil,4],
							
							["RH_uspm",nil,2400],
							["RH_16Rnd_40cal_usp",nil,5],	

							["RH_p226",nil,12400],
							["RH_15Rnd_9x19_SIG",nil,5]
							

						]
					];
				};				
			};
		};
		case "udc_lang":
        {
			switch(true) do
			{
				case (!license_civ_udc): {"Sie sind nicht befugt auf diesen Shop zuzugreifen."};
				case (!license_civ_udclang): {"Sie sind nicht befugt auf diesen Shop zuzugreifen."};
				default
				{
					["Ausrüstungskammer",								
						[
							["RH_fn57",nil,1120],
							["RH_sfn57",nil,20],
							["RH_20Rnd_57x28_FN",nil,20],
							["hlc_smg_mp5a4",nil,2100],
							["hlc_30Rnd_9x19_GD_MP5",nil,25],
							["RH_M4A1_ris",nil,8222],
							["RH_30Rnd_556x45_M855A1",nil,20],
							["RH_m4covers_f",nil,25],
							["RH_M4A6",nil,12220],
							["RH_30Rnd_68x43_FMJ",nil,220],
							["prpl_benelli_14_pgs_rail","Shotgun Rubber",2200],
							["prpl_6Rnd_12Gauge_Slug","Rubber Bullets",20],
							["RH_Hk416s",nil,12220],
							["RH_30Rnd_556x45_M855A1",nil,220],
							["RH_30Rnd_556x45_Mk262",nil,220],
							["RH_30Rnd_556x45_Mk318",nil,220],
							["hlc_rifle_vendimus",nil,25000],
							["RH_ta31rmr",nil,220],
							["RH_bull",nil,240],
							["RH_6Rnd_454_Mag",nil,4],
							["RH_bullb",nil,240],
							["RH_6Rnd_454_Mag",nil,4],
							["optic_MRCO",nil,220],
							["RH_barska_rds","Barska Red Dot",25],
							["RH_cmore","C-more Red Dot",25],
							["RH_compM2l","Rifle Aimpoint Low",25],
							["RH_compM2","Rifle Aimpoint",25],
							["RH_SFM952V",nil,80],
							["RH_t1","Aimpoint",10],
							["RH_ta648",nil,222],
							["RH_leu_mk4",nil,100],
							["RH_M6X",nil,20],
							["RH_fa556",nil,20],
							["RH_m110sd",nil,20],
							["RH_qdss_nt4","M4A6 Silencer",220],
							["muzzle_snds_H","KAC Silencer",220],
							["RH_peq2","Laser (All Rifles)",220]
						]
					];
				};
			};
        };
		case "state_weaponShop": 
		{
			switch(true) do
			{
				case (!license_civ_udc): {"Sie sind nicht befugt auf diesen Shop zuzugreifen."};
				default
				{
					["Waffenkammer",								
						[
							["RH_m9",nil,2400],
							["RH_15Rnd_9x19_M9",nil,5],
							
							["RH_fnp45",nil,2400],
							["RH_15Rnd_45cal_fnp",nil,4],
							
							["RH_g17",nil,1200],
							["RH_g19",nil,1600],
							["RH_g19t",nil,1800],
							["RH_17Rnd_9x19_g17",nil,20],
							
							["RH_fn57",nil,1120],
							["RH_20Rnd_57x28_FN",nil,20],
							
							["RH_usp",nil,2400],
							["RH_12Rnd_45cal_usp",nil,4],
							
							["RH_uspm",nil,2400],
							["RH_16Rnd_40cal_usp",nil,5],	

							["RH_p226",nil,12400],
							["RH_15Rnd_9x19_SIG",nil,5]
						
						]
					];
				};				
			};
		};
		
        case "rebel_low":
        {
			switch(true) do
			{
				case (life_karma < 500): {"Dein Karma-Level ist nicht hoch genug!"};
				case (rebelshipment getVariable["notCaptured",FALSE]): {"Supplies have been taken by Police..!"};
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_rebel): {"You want some, I'll give it YA! You don't have a license you pleb!"};
				default
				{
					["Rebel Pistols",
						[
							["TRYK_balaclava_NV",nil,125],		
							
							["RH_vp70",nil,9850],
							["RH_18Rnd_9x19_VP",nil,125],  
							
							["RH_vz61",nil,15800],
							["RH_20Rnd_32cal_vz61",nil,280],

							["RH_fn57",nil,17800],
							["RH_20Rnd_57x28_FN",nil,280],

							//Glock 18
							["RH_g18",nil,15500],
							["RH_33Rnd_9x19_g18",nil,250],
							
							["RH_g19t",nil,16500],
							["RH_17Rnd_9x19_g17",nil,150],

							["RH_Deagleg",nil,31500],

							["RH_Deaglem",nil,31500],
							["RH_demz",nil,1500],
							["RH_M6X",nil,1500],

							["RH_7Rnd_50_AE",nil,250],
							
							//Micro Uzi
							["RH_muzi",nil,31500],
							["RH_30Rnd_9x19_UZI",nil,250],

							//Tec9
							["RH_tec9",nil,29800],
							["RH_32Rnd_9x19_tec",nil,260]
							
						]
					];
				};
			};
        };

        case "rebel_high":
        {
			switch(true) do
			{
				case (life_karma < 1000): {"Dein Karma-Level ist nicht hoch genug!"};
				case (rebelshipment getVariable["notCaptured",FALSE]): {"Supplies have been taken by Police..!"};
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_rebel): {"You need Rifle Training!"};
				default
				{
					["Rebel Primarys",
						[


							["RH_compM2","Rifle Aimpoint",10000],
							["RH_compM2l","Rifle Aimpoint Low",10000],

							["RH_m16a6_des",nil,191550],
							["RH_30Rnd_68x43_FMJ",nil,15500],

							["RH_ar10",nil,150000],
							["RH_20Rnd_762x51_AR10",nil,13500],

							["hlc_rifle_akm",nil,185000],
							["hlc_rifle_ak47",nil,165000],
							["hlc_30Rnd_762x39_b_ak",nil,13000],

							["SG553_CQB",nil,140000],
							["30Rnd_556x45_Stanag",nil,13000],
							
							["hlc_rifle_aks74u",nil,160000],
							["hlc_30Rnd_545x39_B_AK",nil,13000],

							["hgun_PDW2000_F",nil,85000],
							["SMG_02_F",nil,95000],
							["30Rnd_9x21_Mag",nil,12000],
					
							["chakFNP90_50rnd_skin1",nil,120000],
							["chakFNP90_57x28_B_skin1",nil,16000],

							["SMG_01_F",nil,85000],
							["30Rnd_45ACP_Mag_SMG_01",nil,14000],
							
							["optic_MRCO",nil,10000],
							["RH_Delft",nil,12000],
							["hlc_optic_kobra",nil,7000]							
						]
					];
				};
			};
        };
		
		case "rebel_awesome":
		{
			switch(true) do
			{
				case (life_karma < 3000): {"Dein Karma-Level ist nicht hoch genug!"};
				case (playerSide != civilian && playerSide != east): {"Du bist kein Zivilist!"};
				case (!license_civ_rebel): {"Du besitzt nicht die benötigte Lizenz!"};
				default
				{
					["Rebel Awesome Weapons",
						[
						     //kurzwaffen
							["RH_bull",nil,20000],
							["RH_6Rnd_454_Mag",nil,5000],

							["RH_fn57",nil,15000],
							["RH_20Rnd_57x28_FN",nil,3000],
							
							["RH_uspm",nil,21000],
							["RH_16Rnd_40cal_usp",nil,3000],	
							
							//langwaffen
							["hlc_rifle_auga3_b",nil,170000],
							["hlc_30Rnd_556x45_B_AUG",nil,16000],
							
							["RH_M4A1_ris",nil,180000],
							["RH_30Rnd_556x45_M855A1",nil,16000],
							
							["RH_M4A6",nil,180000],
							["RH_30Rnd_68x43_FMJ",nil,16000],

							["RH_Mk11",nil,600000],
							["RH_20Rnd_762x51_M80A1",nil,16000],
							["RH_20Rnd_762x51_Mk316LR",nil,16000],
							
							["hlc_rifle_RU556",nil,170000],
							
							["hlc_rifle_bcmjack",nil,275000],
							["hlc_30rnd_556x45_EPR",nil,16000],
							
							["RH_M4_moe",nil,280000],
							["RH_30Rnd_556x45_M855A1",nil,16000],
							
							["hlc_rifle_ak12",nil,185000],
							["hlc_30Rnd_545x39_B_AK",nil,16000],
							
							["KPFS_G36C",nil,180000],
							["KPFS_30Rnd_556x45_G36",nil,16000],
								
							["RH_Hk416s",nil,185000],
							["RH_30Rnd_556x45_M855A1",nil,16000],
							["RH_30Rnd_556x45_Mk262",nil,16000],
							["RH_30Rnd_556x45_Mk318",nil,16000],
							
	                        //visire/aufsätze
							["RH_M6X",nil,12000],							
							["RH_ta648",nil,12000],
							["RH_SFM952V",nil,12000],
							["RH_compM2l",nil,12000],
							["RH_t1","Aimpoint",12000],
							["RH_m110sd","MK 11 Silencer",12200],
							["RH_qdss_nt4","M4A6 Silencer",12200],
							["muzzle_snds_H","KAC Silencer",12200],
							["RH_peq2","Laser (All Rifles)",12200],
							["RH_leu_mk4",nil,12000],
							["RH_barska_rds","Barska Red Dot",12000],
							["RH_cmore","C-more Red Dot",12000],
							["optic_MRCO",nil,12000],
							["RH_compM2l","Rifle Aimpoint Low",12000],
							["RH_compM2","Rifle Aimpoint",12000]
							
						]
					];
				};
			};
		};
       
        case "gun":
        {
			switch(true) do
			{
				case (life_karma < 0): {"You need positive reputation to use this store!"};
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_gun): {"You don't have a Firearms license!"};
				default
				{
					["Kaels Firearms",
						[
							["KPFS_HKP7",nil,12500],
							["KPFS_8Rnd_9x19_PARA",nil,1200],

							["KPFS_Mauser_Hsc",nil,14500],
							["kpfs_8Rnd_765x17_PP",nil,1200],

							["KPFS_Walther_M9",nil,15500],
							["kpfs_6Rnd_635x15",nil,1200],

							["KPFS_P99",nil,16000],
							["KPFS_15rnd_9x19_P99",nil,1250],

							["RH_g17",nil,17500],
							["RH_g19",nil,18500],
							["RH_g19t",nil,18500],
							["RH_17Rnd_9x19_g17",nil,1200],

							["RH_m9",nil,18000],
							["RH_15Rnd_9x19_M9",nil,1020],

							["RH_sw659",nil,19500],
							["RH_14Rnd_9x19_sw",nil,1500],
							
							["RH_usp",nil,15000],
							["RH_12Rnd_45cal_usp",nil,1200],							

							["hgun_Rook40_F",nil,3350],
							["16Rnd_9x21_Mag",nil,1025],
							
							["hgun_P07_F",nil,3350],
							["16Rnd_9x21_Mag",nil,1025],
							
							["RH_gsh18",nil,5150],
							["RH_18Rnd_9x19_gsh",nil,1905],
							
							["RH_kimber",nil,30500],
							["RH_7Rnd_45cal_m1911",nil,2750]                                            
						]
					];
				};
			};
        };
        
        case "rifle":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_rifle): {"You don't have a Rifle license!"};
				default
				{
					["Hunting Shop",
						[
							["A3L_CZ550",nil,27500],
							["A3L_CZ550mag",nil,150],
							["A3L_CZ550Scope",nil,12500],
							["arifle_SDAR_F","Turtle ONLY SDAR",36000],
							["20Rnd_556x45_UW_mag","Underwater magazine",1200]
						]
					];
				};
			};
        };      
       
        case "gang":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				default
				{
					["Hideout Armament",
						[
							["A3L_Glock17",nil,1260],
							["A3L_Glock17mag",nil,50]                                          
						]
					];
				};
			};
        };
       
        case "genstore":
        {
			["General und Fishing",
				[
					["CG_Pro_Item_i","CG GoPro",350],
					["CG_tabletd","CG Tablet Phone",50],
					["CG_battery_i","ZL Battery",5],
					["TRYK_Shemagh_G_NV","NV",5],
					["vvv_fishing_rod","Angel",500],
					["ACE_EarPlugs",nil,50],
					["cebos","Köder",50],
					["ToolKit",nil,1000],
					["ACE_fieldDressing",nil,50],
					["CG_ATF_Pizza_Box_i","Take Away Pizza",1400],
					["CG_ATF_Donut_Box_i","Take Away Donuts",1600],
					["cg_torch",nil,550], 
					["cg_torchbattery",nil,50], 				
					["Chemlight_red",nil,120],
					["Chemlight_yellow",nil,120],
					["Chemlight_green",nil,120],
					["Chemlight_blue",nil,120],
					["ItemMap",nil,6],
					["ItemGPS",nil,25],
					["Binocular",nil,110],
					["ItemCompass",nil,50],
					["ItemWatch",nil,10],
					["nonlethal_swing", "Blunt Ammo (b)", 10],
					["sharp_swing","Sharp Ammo (s)",10],
					["cg_scythe","Scythe (s)",500],
					["CG_PICKAXE","Pickaxe (s)",500],
					["cg_hatchet","Hatchet (s)",500],
					["cg_machete","Machete (s)",500],
					["CG_BAT","Bat (b)",500],
					["CG_CROSS","Holy Cross (b)",500]
					
				]
			];
        };
};