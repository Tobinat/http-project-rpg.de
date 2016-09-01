////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 5.24
//Produced on Tue Apr 26 11:47:23 2016 : Created on Tue Apr 26 11:47:23 2016
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class DRPG_Wheeled : CHEVROLET\Tahoe_09\config.bin{
class DefaultEventhandlers;
class CfgPatches
{
	class Test_car_F
	{
		units[] = {"C_Test_Car_01_F","C_Test_Car_01_Black_F","C_test_Car_01_anotherVariant_F"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Soft_F"};
	};
};
class WeaponFireGun;
class WeaponCloudsGun;
class WeaponFireMGun;
class WeaponCloudsMGun;
class CfgVehicles
{
	class Car;
	class Car_F: Car
	{
		class HitPoints
		{
			class HitLFWheel;
			class HitLF2Wheel;
			class HitRFWheel;
			class HitRF2Wheel;
			class HitBody;
			class HitGlass1;
			class HitGlass2;
			class HitGlass3;
			class HitGlass4;
		};
		class EventHandlers;
	};
	class DRPG_09Tahoe_Base: Car_F
	{
		model = "\DRPG_Wheeled\CHEVROLET\Tahoe_09\DRPG_Tahoe_09";
		picture = "DRPG_VehicleData\UI\icon.paa";
		Icon = "DRPG_VehicleData\UI\icon.paa";
		vehicleClass = "DRPG_Civilian";
		hiddenSelections[] = {"camo1","plate1","plate2","plate3","plate4","plate5","plate6","plate7"};
		terrainCoef = 6.5;
		turnCoef = 2.5;
		precision = 10;
		brakeDistance = 3;
		acceleration = 15;
		fireResistance = 5;
		armor = 32;
		cost = 50000;
		transportMaxBackpacks = 3;
		transportSoldier = 3;
		wheelDamageRadiusCoef = 0.9;
		wheelDestroyRadiusCoef = 0.4;
		maxFordingDepth = 0.5;
		waterResistance = 1;
		crewCrashProtection = 0.6;
		driverLeftHandAnimName = "drivewheel";
		driverRightHandAnimName = "drivewheel";
		class TransportItems
		{
			class _xx_FirstAidKit
			{
				name = "FirstAidKit";
				count = 4;
			};
		};
		class eventhandlers
		{
			init = "(_this select 0) execVM ""\PRPG_Data\Scripts\Plate_Skins.sqf""";
		};
		class CargoTurret;
		class Turrets{};
		class HitPoints: HitPoints
		{
			class HitLFWheel: HitLFWheel
			{
				armor = 0.6;
				passThrough = 0;
			};
			class HitLF2Wheel: HitLF2Wheel
			{
				armor = 0.6;
				passThrough = 0;
			};
			class HitRFWheel: HitRFWheel
			{
				armor = 0.6;
				passThrough = 0;
			};
			class HitRF2Wheel: HitRF2Wheel
			{
				armor = 0.6;
				passThrough = 0;
			};
			class HitFuel
			{
				armor = 0.6;
				material = -1;
				name = "fueltank";
				visual = "";
				passThrough = 0.2;
			};
			class HitEngine
			{
				armor = 0.6;
				material = -1;
				name = "engine";
				visual = "";
				passThrough = 0.2;
			};
			class HitBody: HitBody
			{
				name = "body";
				visual = "camo1";
				passThrough = 1;
			};
			class HitGlass1: HitGlass1
			{
				armor = 0.25;
			};
			class HitGlass2: HitGlass2
			{
				armor = 0.25;
			};
			class HitGlass3: HitGlass3
			{
				armor = 0.25;
			};
			class HitGlass4: HitGlass4
			{
				armor = 0.25;
			};
		};
		driverAction = "driver_offroad01";
		cargoAction[] = {"passenger_low01","passenger_low01","passenger_low01"};
		getInAction = "GetInLow";
		getOutAction = "GetOutLow";
		cargoGetInAction[] = {"GetInLow"};
		cargoGetOutAction[] = {"GetOutLow"};
		attenuationEffectType = "CarAttenuation";
		soundGetIn[] = {"A3\Sounds_F\vehicles\soft\SUV_01\SUV_01_door",0.56234133,1};
		soundGetOut[] = {"A3\Sounds_F\vehicles\soft\SUV_01\SUV_01_door",0.56234133,1,40};
		soundDammage[] = {"",0.56234133,1};
		soundEngineOnInt[] = {"DRPG_VehicleData\sounds\startup_int.wav",0.707946, 1.0};
		soundEngineOnExt[] = {"DRPG_VehicleData\sounds\startup.wav",0.707946, 1.0, 200};
		soundEngineOffInt[] = {"DRPG_VehicleData\sounds\SUV_V8\exhaust_stop_int",0.61622775,1};
		soundEngineOffExt[] = {"DRPG_VehicleData\sounds\SUV_V8\exhaust_stop",1.3981072,1,200};
		buildCrash0[] = {"A3\Sounds_F\vehicles\soft\noises\crash_building_01",0.70794576,1,200};
		buildCrash1[] = {"A3\Sounds_F\vehicles\soft\noises\crash_building_02",0.70794576,1,200};
		buildCrash2[] = {"A3\Sounds_F\vehicles\soft\noises\crash_building_03",0.70794576,1,200};
		buildCrash3[] = {"A3\Sounds_F\vehicles\soft\noises\crash_building_04",0.70794576,1,200};
		soundBuildingCrash[] = {"buildCrash0",0.25,"buildCrash1",0.25,"buildCrash2",0.25,"buildCrash3",0.25};
		WoodCrash0[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_01",0.70794576,1,200};
		WoodCrash1[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_02",0.70794576,1,200};
		WoodCrash2[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_03",0.70794576,1,200};
		WoodCrash3[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_04",0.70794576,1,200};
		WoodCrash4[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_05",0.70794576,1,200};
		WoodCrash5[] = {"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_06",0.70794576,1,200};
		soundWoodCrash[] = {"woodCrash0",0.166,"woodCrash1",0.166,"woodCrash2",0.166,"woodCrash3",0.166,"woodCrash4",0.166,"woodCrash5",0.166};
		ArmorCrash0[] = {"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_01",0.70794576,1,200};
		ArmorCrash1[] = {"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_02",0.70794576,1,200};
		ArmorCrash2[] = {"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_03",0.70794576,1,200};
		ArmorCrash3[] = {"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_04",0.70794576,1,200};
		soundArmorCrash[] = {"ArmorCrash0",0.25,"ArmorCrash1",0.25,"ArmorCrash2",0.25,"ArmorCrash3",0.25};
		class Sounds
		{
			class Idle_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Ext_00764",0.2818383,1,200};
				frequency = "0.9	+	((rpm/	6000) factor[(400/	6000),(1100/	6000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	6000) factor[(200/	6000),(600/	6000)])	*	((rpm/	6000) factor[(1100/	6000),(800/	6000)]))";
			};
			class Engine
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Ext_01353",0.31622776,1,200};
				frequency = "0.8	+	((rpm/	6000) factor[(810/	6000),(2000/	6000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	6000) factor[(820/	6000),(1100/	6000)])	*	((rpm/	6000) factor[(2000/	6000),(1350/	6000)]))";
			};
			class Engine1_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Ext_01839",0.35481337,1,210};
				frequency = "0.8	+	((rpm/	6000) factor[(1300/	6000),(2700/	6000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	6000) factor[(1300/	6000),(2000/	6000)])	*	((rpm/	6000) factor[(2700/	6000),(2150/	6000)]))";
			};
			class Engine2_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Ext_02036",0.39810717,1,220};
				frequency = "0.8	+	((rpm/	6000) factor[(2100/	6000),(3500/	6000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	6000) factor[(2150/	6000),(2650/	6000)])	*	((rpm/	6000) factor[(3550/	6000),(2900/	6000)]))";
			};
			class Engine3_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Ext_03221",0.4466836,1,230};
				frequency = "0.8	+	((rpm/	6000) factor[(2900/	6000),(4150/	6000)])*0.2";
				volume = "engineOn*camPos*(((rpm/	6000) factor[(2900/	6000),(3500/	6000)])	*	((rpm/	6000) factor[(4180/	6000),(3700/	6000)]))";
			};
			class Engine4_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Ext_03761",0.39810717,1,240};
				frequency = "0.8	+	((rpm/	6000) factor[(3700/	6000),(5200/	6000)]) *0.2";
				volume = "engineOn*camPos*(((rpm/	6000) factor[(3700/	6000),(4100/	6000)])	*	((rpm/	6000) factor[(5200/	6000),(4500/	6000)]))";
			};
			class Engine5_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Ext_04181",0.35481337,1,250};
				frequency = "0.95	+	((rpm/	6000) factor[(4500/	6000),(6000/	6000)])*0.2";
				volume = "engineOn*camPos*((rpm/	6000) factor[(4500/	6000),(5600/	6000)])";
			};
			class IdleThrust
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_01",0.39810717,1,280};
				frequency = "0.9	+	((rpm/	6000) factor[(400/	6000),(1100/	6000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	6000) factor[(200/	6000),(600/	6000)])	*	((rpm/	6000) factor[(1100/	6000),(800/	6000)]))";
			};
			class EngineThrust
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_02",0.4466836,1,300};
				frequency = "0.9	+	((rpm/	6000) factor[(810/	6000),(2000/	6000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	6000) factor[(820/	6000),(1100/	6000)])	*	((rpm/	6000) factor[(2000/	6000),(1350/	6000)]))";
			};
			class Engine1_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_03",0.5011872,1,310};
				frequency = "0.9	+	((rpm/	6000) factor[(1300/	6000),(2700/	6000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	6000) factor[(1300/	6000),(2000/	6000)])	*	((rpm/	6000) factor[(2700/	6000),(2150/	6000)]))";
			};
			class Engine2_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_04",0.5011872,1,320};
				frequency = "0.9	+	((rpm/	6000) factor[(2100/	6000),(3500/	6000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	6000) factor[(2150/	6000),(2650/	6000)])	*	((rpm/	6000) factor[(3550/	6000),(2900/	6000)]))";
			};
			class Engine3_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_05",0.5011872,1,330};
				frequency = "0.9	+	((rpm/	6000) factor[(2900/	6000),(4150/	6000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	6000) factor[(2900/	6000),(3500/	6000)])	*	((rpm/	6000) factor[(4180/	6000),(3700/	6000)]))";
			};
			class Engine4_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_06",0.5011872,1,340};
				frequency = "0.9	+	((rpm/	6000) factor[(3700/	6000),(5200/	6000)]) *0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	6000) factor[(3700/	6000),(4100/	6000)])	*	((rpm/	6000) factor[(5200/	6000),(4500/	6000)]))";
			};
			class Engine5_Thrust_ext
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_07",0.5011872,1,350};
				frequency = "0.9	+	((rpm/	6000) factor[(4500/	6000),(6000/	6000)])*0.2";
				volume = "engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*((rpm/	6000) factor[(4500/	6000),(5600/	6000)])";
			};
			class Idle_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Int_00764",0.25118864,1};
				frequency = "0.8 + ((rpm/ 6400) factor[(400/ 6400),(1100/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/ 6400) factor[(200/ 6400),(600/ 6400)]) * ((rpm/ 6400) factor[(1100/ 6400),(800/ 6400)]))";
			};
			class Engine_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Int_01353",0.2818383,1};
				frequency = "0.8 + ((rpm/ 6400) factor[(810/ 6400),(2000/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/ 6400) factor[(820/ 6400),(1100/ 6400)]) * ((rpm/ 6400) factor[(2000/ 6400),(1350/ 6400)]))";
			};
			class Engine1_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Int_01839",0.31622776,1};
				frequency = "0.8 + ((rpm/ 6400) factor[(1300/ 6400),(2700/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/ 6400) factor[(1300/ 6400),(2000/ 6400)]) * ((rpm/ 6400) factor[(2700/ 6400),(2150/ 6400)]))";
			};
			class Engine2_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Int_02036",0.35481337,1};
				frequency = "0.8 + ((rpm/ 6400) factor[(2100/ 6400),(3500/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/ 6400) factor[(2150/ 6400),(2650/ 6400)]) * ((rpm/ 6400) factor[(3550/ 6400),(2900/ 6400)]))";
			};
			class Engine3_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Int_03221",0.39810717,1};
				frequency = "0.8 + ((rpm/ 6400) factor[(2900/ 6400),(4150/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(((rpm/ 6400) factor[(2900/ 6400),(3500/ 6400)]) * ((rpm/ 6400) factor[(4180/ 6400),(3700/ 6400)]))";
			};
			class Engine4_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Int_03761",0.4466836,1};
				frequency = "0.8 + ((rpm/ 6400) factor[(3700/ 6400),(5200/ 6400)]) *0.2";
				volume = "engineOn*(1-camPos)*(((rpm/ 6400) factor[(3700/ 6400),(4100/ 6400)]) * ((rpm/ 6400) factor[(5200/ 6400),(4500/ 6400)]))";
			};
			class Engine5_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Int_04181",0.5011872,1};
				frequency = "0.95 + ((rpm/ 6400) factor[(4500/ 6400),(6400/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*((rpm/ 6400) factor[(4500/ 6400),(5600/ 6400)])";
			};
			class IdleThrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_01_int",0.35481337,1};
				frequency = "0.9 + ((rpm/ 6400) factor[(400/ 6400),(1100/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/ 6400) factor[(200/ 6400),(600/ 6400)]) * ((rpm/ 6400) factor[(1100/ 6400),(800/ 6400)]))";
			};
			class EngineThrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_02_int",0.39810717,1};
				frequency = "0.9 + ((rpm/ 6400) factor[(810/ 6400),(2000/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/ 6400) factor[(820/ 6400),(1100/ 6400)]) * ((rpm/ 6400) factor[(2000/ 6400),(1350/ 6400)]))";
			};
			class Engine1_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_03_int",0.4466836,1};
				frequency = "0.9 + ((rpm/ 6400) factor[(1300/ 6400),(2700/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/ 6400) factor[(1300/ 6400),(2000/ 6400)]) * ((rpm/ 6400) factor[(2700/ 6400),(2150/ 6400)]))";
			};
			class Engine2_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_04_int",0.5011872,1};
				frequency = "0.9 + ((rpm/ 6400) factor[(2100/ 6400),(3500/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/ 6400) factor[(2150/ 6400),(2650/ 6400)]) * ((rpm/ 6400) factor[(3550/ 6400),(2900/ 6400)]))";
			};
			class Engine3_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_05_int",0.5011872,1};
				frequency = "0.9 + ((rpm/ 6400) factor[(2900/ 6400),(4150/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/ 6400) factor[(2900/ 6400),(3500/ 6400)]) * ((rpm/ 6400) factor[(4180/ 6400),(3700/ 6400)]))";
			};
			class Engine4_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_06_int",0.56234133,1};
				frequency = "0.9 + ((rpm/ 6400) factor[(3700/ 6400),(5200/ 6400)]) *0.3";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/ 6400) factor[(3700/ 6400),(4100/ 6400)]) * ((rpm/ 6400) factor[(5200/ 6400),(4500/ 6400)]))";
			};
			class Engine5_Thrust_int
			{
				sound[] = {"DRPG_VehicleData\sounds\SUV_V8\Thrust_07_int",0.63095737,1};
				frequency = "0.9 + ((rpm/ 6400) factor[(4500/ 6400),(6400/ 6400)])*0.2";
				volume = "engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*((rpm/ 6400) factor[(4500/ 6400),(5600/ 6400)])";
			};
			class TiresRockOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext_tires_dirt_soft_1",0.56234133,1,60};
				frequency = "1";
				volume = "camPos*rock*(speed factor[2, 20])";
			};
			class TiresSandOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext-tires-sand1",0.56234133,1,60};
				frequency = "1";
				volume = "camPos*sand*(speed factor[2, 20])";
			};
			class TiresGrassOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext_tires_dirt_soft_2",0.56234133,1,60};
				frequency = "1";
				volume = "camPos*grass*(speed factor[2, 20])";
			};
			class TiresMudOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext-tires-mud2",0.56234133,1,60};
				frequency = "1";
				volume = "camPos*mud*(speed factor[2, 20])";
			};
			class TiresGravelOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext_tires_gravel_1",0.56234133,1,60};
				frequency = "1";
				volume = "camPos*gravel*(speed factor[2, 20])";
			};
			class TiresAsphaltOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\ext_tires_asfalt_2",0.8912509,1,60};
				frequency = "1";
				volume = "camPos*asphalt*(speed factor[2, 20])";
			};
			class NoiseOut
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\noise_ext_car_3",0.31622776,1,90};
				frequency = "1";
				volume = "camPos*(damper0 max 0.02)*(speed factor[0, 8])";
			};
			class TiresRockIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int_tires_dirt_soft_1",0.4466836,1};
				frequency = "1";
				volume = "(1-camPos)*rock*(speed factor[2, 20])";
			};
			class TiresSandIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int-tires-sand2",0.4466836,1};
				frequency = "1";
				volume = "(1-camPos)*sand*(speed factor[2, 20])";
			};
			class TiresGrassIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int_tires_dirt_soft_2",0.4466836,1};
				frequency = "1";
				volume = "(1-camPos)*grass*(speed factor[2, 20])";
			};
			class TiresMudIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int-tires-mud2",0.4466836,1};
				frequency = "1";
				volume = "(1-camPos)*mud*(speed factor[2, 20])";
			};
			class TiresGravelIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int_tires_gravel_1",0.4466836,1};
				frequency = "1";
				volume = "(1-camPos)*gravel*(speed factor[2, 20])";
			};
			class TiresAsphaltIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\tires\int_tires_asfalt_2",0.4466836,1};
				frequency = "1";
				volume = "(1-camPos)*asphalt*(speed factor[2, 20])";
			};
			class NoiseIn
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\noise_int_car_3",0.19952624,1};
				frequency = "1";
				volume = "(damper0 max 0.1)*(speed factor[0, 8])*(1-camPos)";
			};
			class breaking_ext_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_04",0.70794576,1,80};
				frequency = 1;
				volume = "engineOn*camPos*asphalt*(LongSlipDrive Factor[-0.15, -0.3])*(Speed Factor[2, 10])";
			};
			class acceleration_ext_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02",0.70794576,1,80};
				frequency = 1;
				volume = "engineOn*camPos*asphalt*(LongSlipDrive Factor[0.15, 0.3])*(Speed Factor[10, 0])";
			};
			class turn_left_ext_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02",0.70794576,1,80};
				frequency = 1;
				volume = "engineOn*camPos*asphalt*(latSlipDrive Factor[0.15, 0.3])*(Speed Factor[0, 10])";
			};
			class turn_right_ext_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02",0.70794576,1,80};
				frequency = 1;
				volume = "engineOn*camPos*asphalt*(latSlipDrive Factor[-0.15, -0.3])*(Speed Factor[0, 10])";
			};
			class breaking_ext_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_14_dirt_breaking",0.70794576,1,60};
				frequency = 1;
				volume = "engineOn*camPos*(1-asphalt)*(LongSlipDrive Factor[-0.15, -0.3])*(Speed Factor[2, 10])";
			};
			class acceleration_ext_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\acceleration_dirt_ext_1",0.70794576,1,60};
				frequency = 1;
				volume = "engineOn*camPos*(1-asphalt)*(LongSlipDrive Factor[0.15, 0.3])*(Speed Factor[10, 0])";
			};
			class turn_left_ext_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt",0.70794576,1,60};
				frequency = 1;
				volume = "engineOn*camPos*(1-asphalt)*(latSlipDrive Factor[0.15, 0.3])*(Speed Factor[0, 10])";
			};
			class turn_right_ext_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt",0.70794576,1,60};
				frequency = 1;
				volume = "engineOn*camPos*(1-asphalt)*(latSlipDrive Factor[-0.15, -0.3])*(Speed Factor[0, 10])";
			};
			class breaking_int_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_04_int",0.39810717,1};
				frequency = 1;
				volume = "engineOn*asphalt*(1-camPos)*(LongSlipDrive Factor[-0.1, -0.3])*(Speed Factor[1,15])";
			};
			class acceleration_int_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02_int",0.39810717,1};
				frequency = 1;
				volume = "engineOn*asphalt*(1-camPos)*(LongSlipDrive Factor[0.1, 0.3])*(Speed Factor[15, 1])";
			};
			class turn_left_int_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02_int",0.39810717,1};
				frequency = 1;
				volume = "engineOn*asphalt*(1-camPos)*(latSlipDrive Factor[0.1, 0.3])*(Speed Factor[1, 15])";
			};
			class turn_right_int_road
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02_int",0.39810717,1};
				frequency = 1;
				volume = "engineOn*asphalt*(1-camPos)*(latSlipDrive Factor[-0.1, -0.3])*(Speed Factor[1, 15])";
			};
			class breaking_int_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_14_dirt_breaking_int",0.39810717,1};
				frequency = 1;
				volume = "engineOn*(1-asphalt)*(1-camPos)*(LongSlipDrive Factor[-0.1, -0.3])*(Speed Factor[2, 15])";
			};
			class acceleration_int_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\acceleration_dirt_int_1",0.39810717,1};
				frequency = 1;
				volume = "engineOn*(1-asphalt)*(1-camPos)*(LongSlipDrive Factor[0.1, 0.3])*(Speed Factor[15, 2])";
			};
			class turn_left_int_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt_int",0.39810717,1};
				frequency = 1;
				volume = "engineOn*(1-asphalt)*(1-camPos)*(latSlipDrive Factor[0.1, 0.3])*(Speed Factor[2, 15])";
			};
			class turn_right_int_dirt
			{
				sound[] = {"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt_int",0.39810717,1};
				frequency = 1;
				volume = "engineOn*(1-asphalt)*(1-camPos)*(latSlipDrive Factor[-0.1, -0.3])*(Speed Factor[2, 15])";
			};
		};
		class RenderTargets
		{
			class LeftMirror
			{
				renderTarget = "rendertarget0";
				class CameraView1
				{
					pointPosition = "PIP0_pos";
					pointDirection = "PIP0_dir";
					renderQuality = 2;
					renderVisionMode = 0;
					fov = 0.7;
				};
			};
			class RearCam
			{
				renderTarget = "rendertarget1";
				class CameraView1
				{
					pointPosition = "PIP1_pos";
					pointDirection = "PIP1_dir";
					renderQuality = 2;
					renderVisionMode = 0;
					fov = 0.7;
				};
			};
			class FrontCam
			{
				renderTarget = "rendertarget2";
				class CameraView1
				{
					pointPosition = "PIP2_pos";
					pointDirection = "PIP2_dir";
					renderQuality = 2;
					renderVisionMode = 0;
					fov = 0.7;
				};
			};
		};
		thrustDelay = 0.1;
		brakeIdleSpeed = 1.78;
		maxSpeed = 250;
		fuelCapacity = 70;
		wheelCircumference = 2.805;
		antiRollbarForceCoef = 1;
		antiRollbarForceLimit = 10;
		antiRollbarSpeedMin = 10;
		antiRollbarSpeedMax = 120;
		idleRpm = 850;
		redRpm = 6500;
		class complexGearbox
		{
			GearboxRatios[] = {"R1",-6.575,"N",0,"D1",4.827,"D2",2.855,"D3",1.716,"D4",1.073,"D5",0.755,"D6",0.575};
			TransmissionRatios[] = {"High",5.69};
			gearBoxMode = "auto";
			moveOffGear = 1;
			driveString = "D";
			neutralString = "N";
			reverseString = "R";
		};
		simulation = "carx";
		dampersBumpCoef = 0.3;
		differentialType = "all_limited";
		frontRearSplit = 0.5;
		frontBias = 1.9;
		rearBias = 1.9;
		centreBias = 1.9;
		clutchStrength = 60;
		enginePower = 530;
		maxOmega = 730;
		peakTorque = 720;
		dampingRateFullThrottle = 0.1;
		dampingRateZeroThrottleClutchEngaged = 1;
		dampingRateZeroThrottleClutchDisengaged = 0.35;
		torqueCurve[] = {{0,0},{0.185,0.713},{0.35,1},{0.5,0.975},{0.75,0.755},{0.85,0.627},{1,0.415}};
		changeGearMinEffectivity[] = {0.95,0.15,0.65,0.65,0.65,0.55,0.55,0.55};
		switchTime = 0.2;
		latency = 0.19;
		class Wheels
		{
			class LF
			{
				boneName = "wheel_1_1_damper";
				steering = 1;
				side = "left";
				center = "wheel_1_1_axis";
				boundary = "wheel_1_1_bound";
				width = 0.2;
				mass = 20;
				MOI = 78.625;
				dampingRate = 0.6;
				maxBrakeTorque = 6500;
				maxHandBrakeTorque = 0;
				suspTravelDirection[] = {0,-1,0};
				suspForceAppPointOffset = "wheel_1_1_axis";
				tireForceAppPointOffset = "wheel_1_1_axis";
				maxCompression = 0.1;
				mMaxDroop = 0.15;
				sprungMass = 400;
				springStrength = 40000;
				springDamperRate = 5240;
				longitudinalStiffnessPerUnitGravity = 100000;
				latStiffX = 2.5;
				latStiffY = 180;
				frictionVsSlipGraph[] = {{0,1},{0.5,1},{1,1}};
			};
			class LR: LF
			{
				boneName = "wheel_1_2_damper";
				steering = 0;
				center = "wheel_1_2_axis";
				boundary = "wheel_1_2_bound";
				suspForceAppPointOffset = "wheel_1_2_axis";
				tireForceAppPointOffset = "wheel_1_2_axis";
				maxHandBrakeTorque = 12000;
			};
			class RF: LF
			{
				boneName = "wheel_2_1_damper";
				center = "wheel_2_1_axis";
				boundary = "wheel_2_1_bound";
				suspForceAppPointOffset = "wheel_2_1_axis";
				tireForceAppPointOffset = "wheel_2_1_axis";
				steering = 1;
				side = "right";
			};
			class RR: RF
			{
				boneName = "wheel_2_2_damper";
				steering = 0;
				center = "wheel_2_2_axis";
				boundary = "wheel_2_2_bound";
				suspForceAppPointOffset = "wheel_2_2_axis";
				tireForceAppPointOffset = "wheel_2_2_axis";
				maxHandBrakeTorque = 12000;
			};
		};
		memoryPointTrackFLL = "TrackFLL";
		memoryPointTrackFLR = "TrackFLR";
		memoryPointTrackBLL = "TrackBLL";
		memoryPointTrackBLR = "TrackBLR";
		memoryPointTrackFRL = "TrackFRL";
		memoryPointTrackFRR = "TrackFRR";
		memoryPointTrackBRL = "TrackBRL";
		memoryPointTrackBRR = "TrackBRR";
		class Damage
		{
			tex[] = {};
			mat[] = {"A3\data_f\glass_veh_int.rvmat","A3\data_f\Glass_veh_damage.rvmat","A3\data_f\Glass_veh_damage.rvmat","A3\data_f\glass_veh.rvmat","A3\data_f\Glass_veh_damage.rvmat","A3\data_f\Glass_veh_damage.rvmat"};
		};
		class Exhausts
		{
			class Exhaust1
			{
				position = "exhaust1_pos";
				direction = "exhaust1_dir";
				effect = "ExhaustsEffect";
			};
			class Exhaust2
			{
				position = "exhaust2_pos";
				direction = "exhaust2_dir";
				effect = "ExhaustsEffect";
			};
		};
		class Reflectors
		{
			class LightCarHeadL01
			{
				color[] = {1900,1800,2000};
				ambient[] = {5,5,5};
				position = "LightCarHeadL01";
				direction = "LightCarHeadL01_end";
				hitpoint = "Light_L";
				selection = "Light_L";
				size = 1;
				innerAngle = 100;
				outerAngle = 179;
				coneFadeCoef = 10;
				intensity = 1;
				useFlare = 1;
				dayLight = 0;
				flareSize = 1;
				class Attenuation
				{
					start = 1;
					constant = 0;
					linear = 0;
					quadratic = 0.25;
					hardLimitStart = 30;
					hardLimitEnd = 60;
				};
			};
			class LightCarHeadL02: LightCarHeadL01
			{
				position = "LightCarHeadL02";
				direction = "LightCarHeadL02_end";
				FlareSize = 0.5;
			};
			class LightCarHeadR01: LightCarHeadL01
			{
				position = "LightCarHeadR01";
				direction = "LightCarHeadR01_end";
				hitpoint = "Light_R";
				selection = "Light_R";
			};
			class LightCarHeadR02: LightCarHeadR01
			{
				position = "LightCarHeadR02";
				direction = "LightCarHeadR02_end";
				FlareSize = 0.5;
			};
		};
		aggregateReflectors[] = {{"LightCarHeadL01","LightCarHeadL02"},{"LightCarHeadR01","LightCarHeadR02"}};
	};
	class DRPG_09Tahoe_Black: DRPG_09Tahoe_Base
	{
		scope = 2;
		scopeCurator = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (Black)";
		hiddenSelectionsTextures[] = {"DRPG_VehicleData\common\black.paa"};
	};
	class DRPG_09Tahoe_White: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (White)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\white.paa","","","","","","","","","",""};
	};
	class DRPG_09Tahoe_Red: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (Red)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\Red.paa","","","","","","","","","",""};
	};
	class DRPG_09Tahoe_blue: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (Blue)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\blue.paa","","","","","","","","","",""};
	};
	class DRPG_09Tahoe_Green: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (Green)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\green.paa","","","","","","","","","",""};
	};
	class DRPG_09Tahoe_Orange: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (Green)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\orange.paa","","","","","","","","","",""};
	};
	class DRPG_09Tahoe_Pink: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (Pink)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\pink.paa","","","","","","","","","",""};
	};
	class DRPG_09Tahoe_Purple: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (Purple)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\purple.paa","","","","","","","","","",""};
	};
	class DRPG_09Tahoe_Yellow: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (Yellow)";
		hiddenSelectionsTextures[] = {"\DRPG_VehicleData\common\green.paa","","","","","","","","","",""};
	};
	class DRPG_09Tahoe_LAC: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (LAC)";
		hiddenSelectionsTextures[] = {"\DRPG_Wheeled\CHEVROLET\Tahoe_09\LIVERY\09TAHOE_LAC.paa"};
	};
	class DRPG_09Tahoe_DOJ: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "2009 Chevrolet Tahoe (Justice)";
		hiddenSelectionsTextures[] = {"\DRPG_Wheeled\CHEVROLET\Tahoe_09\LIVERY\09TAHOE_DOJ.paa"};
	};
	class DRPG_09Tahoe_P_P: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		vehicleClass = "DRPG_Police";
		displayName = "2009 Chevrolet Tahoe PPV";
		model = "\DRPG_Wheeled\CHEVROLET\Tahoe_09\DRPG_Tahoe_09_P_P";
		hiddenSelections[] = {"camo1","plate1","plate2","plate3","plate4","plate5","plate6","plate7","SPD_1","SPD_2","SPD_3","LF_1","LF_2","LF_3","UNIT_1","UNIT_2","UNIT_3"};
		hiddenSelectionsTextures[] = {"\DRPG_Wheeled\CHEVROLET\Tahoe_09\LIVERY\09Tahoe_POLICE.paa"};
		weapons[] = {"airhorn","Yelp","Whelen_Manual","Whelen_Howler","Whelen_Takedown","takedown2"};
		class eventhandlers
		{
			init = "_this execVM ""\PRPG_Data\Scripts\VehicleInit.sqf""; (this select 0) setHit [""SPL"",1]; (_this select 0) execVM ""\PRPG_Data\Scripts\Plate_cop.sqf""";
		};
		class UserActions
		{
			class beacons_start
			{
				userActionID = 50;
				displayName = "<t color='#0000ff'>Code 2</t>";
				displayNameDefault = "<t color='#0000ff'>Code 2</t>";
				position = "drivewheel_axis";
				priority = 1.5;
				radius = 1.8;
				animPeriod = 2;
				onlyForPlayer = 0;
				condition = "this animationPhase ""BeaconsStart"" !=1 AND Alive(this) AND driver this == player";
				statement = "this animate [""BeaconsStart"",1], this setVariable ['prpg_siren',0,true];";
			};
			class beacons_stop: beacons_start
			{
				userActionID = 51;
				displayName = "<t color='#0000ff'>Code 1</t>";
				displayNameDefault = "<t color='#0000ff'>Code 1</t>";
				condition = "this animationPhase ""BeaconsStart"" > 0.5 AND Alive(this) AND driver this == player";
				statement = "this animate [""BeaconsStart"",0], this setVariable ['prpg_siren',0,true];";
			};
			class beacons_start2
			{
				userActionID = 50;
				displayName = "<t color='#0000ff'>Code 2</t>";
				displayNameDefault = "<t color='#0000ff'>Code 2</t>";
				position = "drivewheel_axis";
				priority = 1.5;
				radius = 1.8;
				animPeriod = 2;
				onlyForPlayer = 0;
				condition = "driver this == player && (this getVariable 'prpg_siren' > 0)";
				statement = "this animate [""BeaconsStart"",1], this setVariable ['prpg_siren',0,true];";
			};
			class sirenon
			{
				displayName = "<t color='#ff0000'>Code 3</t>";
				position = "drivewheel";
				radius = 10;
				condition = "driver this == player && (this animationPhase 'prpg_siren' == 0)";
				statement = "this animate [""BeaconsStart"",1], this setVariable ['prpg_siren',0.2,true];";
				onlyForplayer = 1;
			};
		};
	};
	class DRPG_09Tahoe_P_FBI: DRPG_09Tahoe_P_P
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "Chevrolet Tahoe (FBI)";
		hiddenSelectionsTextures[] = {"\DRPG_Wheeled\CHEVROLET\Tahoe_09\LIVERY\09TAHOE_FBI.paa"};
	};
	class DRPG_09Tahoe_P_LVPD: DRPG_09Tahoe_P_P
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "Chevrolet Tahoe (LVPD)";
		hiddenSelectionsTextures[] = {"\DRPG_Wheeled\CHEVROLET\Tahoe_09\LIVERY\09TAHOE_LVPD.paa"};
	};
	class DRPG_09Tahoe_P_Sheriff: DRPG_09Tahoe_P_P
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "Chevrolet Tahoe (Sheriff)";
		hiddenSelectionsTextures[] = {"\DRPG_Wheeled\CHEVROLET\Tahoe_09\LIVERY\09TAHOE_Sheriff.paa"};
	};
	class prpg_09Tahoe_slfd: DRPG_09Tahoe_P_P
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "Chevrolet Tahoe SLFD";
		hiddenSelectionsTextures[] = {"\DRPG_Wheeled\CHEVROLET\Tahoe_09\LIVERY\09TAHOE_EMS.paa"};
	};
	class prpg_chevy09_slpd_sp: DRPG_09Tahoe_P_P
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		displayName = "Chevy 09 State Police";
		hiddenSelectionsTextures[] = {"\DRPG_Wheeled\CHEVROLET\Tahoe_09\LIVERY\09TAHOE_State.paa"};
	};
	class DRPG_09Tahoe_EMS: DRPG_09Tahoe_Base
	{
		scope = 2;
		crew = "C_man_1";
		side = 3;
		faction = "CIV_F";
		vehicleClass = "DRPG_Police";
		displayName = "2009 Chevrolet Tahoe EMS";
		model = "\DRPG_Wheeled\CHEVROLET\Tahoe_09\DRPG_Tahoe_09_EMS";
		hiddenSelections[] = {"camo1","plate1","plate2","plate3","plate4","plate5","plate6","plate7","SPD_1","SPD_2","SPD_3","LF_1","LF_2","LF_3","UNIT_1","UNIT_2","UNIT_3"};
		hiddenSelectionsTextures[] = {"\DRPG_Wheeled\CHEVROLET\Tahoe_09\LIVERY\09Tahoe_EMS.paa"};
		weapons[] = {"airhorn","Yelp","Whelen_Manual","Whelen_Howler","Whelen_Takedown","takedown2"};
		class eventhandlers
		{
			init = "_this execVM ""\PRPG_Data\Scripts\VehicleInit.sqf""; (this select 0) setHit [""SPL"",1]; (_this select 0) execVM ""\PRPG_Data\Scripts\Plate_skins.sqf""";
		};
		class UserActions
		{
			class beacons_start
			{
				userActionID = 50;
				displayName = "<t color='#0000ff'>Code 2</t>";
				displayNameDefault = "<t color='#0000ff'>Code 2</t>";
				position = "drivewheel_axis";
				priority = 1.5;
				radius = 1.8;
				animPeriod = 2;
				onlyForPlayer = 0;
				condition = "this animationPhase ""BeaconsStart"" !=1 AND Alive(this) AND driver this == player";
				statement = "this animate [""BeaconsStart"",1], this setVariable ['prpg_siren',0,true];";
			};
			class beacons_stop: beacons_start
			{
				userActionID = 51;
				displayName = "<t color='#0000ff'>Code 1</t>";
				displayNameDefault = "<t color='#0000ff'>Code 1</t>";
				condition = "this animationPhase ""BeaconsStart"" > 0.5 AND Alive(this) AND driver this == player";
				statement = "this animate [""BeaconsStart"",0], this setVariable ['prpg_siren',0,true];";
			};
			class beacons_start2
			{
				userActionID = 50;
				displayName = "<t color='#0000ff'>Code 2</t>";
				displayNameDefault = "<t color='#0000ff'>Code 2</t>";
				position = "drivewheel_axis";
				priority = 1.5;
				radius = 1.8;
				animPeriod = 2;
				onlyForPlayer = 0;
				condition = "driver this == player && (this getVariable 'prpg_siren' > 0)";
				statement = "this animate [""BeaconsStart"",1], this setVariable ['prpg_siren',0,true];";
			};
			class sirenon
			{
				displayName = "<t color='#ff0000'>Code 3</t>";
				position = "drivewheel";
				radius = 10;
				condition = "driver this == player && (this animationPhase 'prpg_siren' == 0)";
				statement = "this animate [""BeaconsStart"",1], this setVariable ['prpg_siren',0.4,true];";
				onlyForplayer = 1;
			};
		};
	};
};
class cfgMods
{
	author = "76561198141517593";
	timepacked = "1461671242";
};
//};
