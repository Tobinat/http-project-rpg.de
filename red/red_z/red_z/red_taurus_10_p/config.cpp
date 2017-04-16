class CfgPatches
{
	class red_taurus_10_p
	{
		units[]=
		{
			"red_taurus_10_p_p"
		};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]=
		{
			"A3_Soft_F"
		};
	};
};
class CfgSounds
{
	sounds[]=
	{
		"Siren1",
		"Siren2",
		"Siren3",
		"ems_siren1",
		"ems_siren2",
		"ems_siren3"
	};
	class Siren1
	{
		name="Siren1";
		sound[]=
		{
			"red_taurus_10_p\sounds\siren.wav",
			1,
			1
		};
		titles[]={};
	};
	class Siren2
	{
		name="Siren2";
		sound[]=
		{
			"red_taurus_10_p\sounds\yelp.wav",
			1,
			1
		};
		titles[]={};
	};
};
class cfgWeapons
{
	class SportCarHorn;
	class red_horn_airhorn: SportCarHorn
	{
		displayname="Airhorn";
		reloadTime=4;
		drySound[]=
		{
			"red_taurus_10_p\sounds\FederalAirhorn.wav",
			1,
			1
		};
		scope=2;
	};
	class red_horn_takedown1: SportCarHorn
	{
		displayName="Takedown 1";
		reloadtime=4;
		drysound[]=
		{
			"red_taurus_10_p\sounds\Takedown1.wav",
			1,
			1
		};
		scope=2;
	};
	class red_horn_takedown2: SportCarHorn
	{
		displayName="Takedown 2";
		reloadtime=4;
		drysound[]=
		{
			"red_taurus_10_p\sounds\Takedown2.wav",
			1,
			1
		};
		scope=2;
	};
	class red_horn_pullover: SportCarHorn
	{
		displayname="Pull Over";
		reloadTime=4;
		drySound[]=
		{
			"red_taurus_10_p\sounds\PullOver.wav",
			2,
			1
		};
		scope=2;
	};
	class red_horn_handsup: SportCarHorn
	{
		displayName="Hands Up";
		reloadtime=4;
		drysound[]=
		{
			"red_taurus_10_p\sounds\HandsUp.wav",
			2,
			1
		};
		scope=2;
	};
	class red_horn_passenger: SportCarHorn
	{
		displayName="Passenger";
		reloadtime=4;
		drysound[]=
		{
			"red_taurus_10_p\sounds\Passenger.wav",
			3,
			1
		};
		scope=2;
	};
	class red_horn_driver: SportCarHorn
	{
		displayName="Driver";
		reloadtime=4;
		drysound[]=
		{
			"red_taurus_10_p\sounds\Driver.wav",
			3,
			1
		};
		scope=2;
	};
};
class DefaultEventhandlers;
class cfgVehicles
{
	class LandVehicle;
	class Car: LandVehicle
	{
		class HitPoints;
		class NewTurret;
	};
	class Car_F: Car
	{
		class Turrets
		{
			class MainTurret: NewTurret
			{
				class ViewOptics;
			};
		};
		class HitPoints
		{
			class HitLFWheel;
			class HitLF2Wheel;
			class HitRFWheel;
			class HitRF2Wheel;
			class HitBody;
			class HitGlass1
			{
			};
			class HitGlass2;
			class HitGlass3;
			class HitGlass4;
			class HitGlass5;
			class HitGlass6;
		};
		class EventHandlers;
		class AnimationSources;
	};
	class red_taurus_10_p_p_base: Car_F
	{
		model="\red_taurus_10_p\red_taurus_10_p_p";
		picture="\red_base\textures\icon.paa";
		Icon="\red_base\textures\icon.paa";
		author="Redhotsteel";
		weapons[]=
		{
			"red_horn_airhorn",
			"red_horn_takedown1",
			"red_horn_takedown2",
			"red_horn_pullover",
			"red_horn_handsup",
			"red_horn_driver",
			"red_horn_passenger"
		};
		hiddenSelections[]=
		{
			"camo1",
			"lb_1_b",
			"lb_2_b",
			"lb_3_b",
			"lb_4_b",
			"lb_1_r",
			"lb_2_r",
			"lb_3_r",
			"lb_4_r",
			"back_light",
			"back_light_1",
			"reverse_light_lb",
			"reverse_light_lb_2",
			"D1",
			"D2",
			"D3",
			"D4",
			"D5",
			"D6",
			"D7",
			"D8",
			"lock1",
			"lock2",
			"lock3",
			"target1",
			"target2",
			"target3",
			"patrol1",
			"patrol2",
			"patrol3"
		};
		hiddenSelectionsTextures[]=
		{
			"\red_taurus_10_p\colours\black.paa"
		};
		terrainCoef=0.5;
		turnCoef=2.5;
		precision=10;
		fireResistance=5;
		armor=32;
		cost=50000;
		transportMaxBackpacks=3;
		transportSoldier=3;
		extCameraPosition[]={0,1,-7.5};
		class eventhandlers
		{
			init="_this execVM ""red_taurus_10_p\scripts\init.sqf"";";
		};
		class UserActions
		{
			class codeone
			{
				displayName="<t color='#0000ff'>Code One</t>";
				position="drivewheel";
				radius=2;
				condition="driver this == player && ((this getVariable ['lights',0]) == 1)";
				statement="this setVariable ['lightbar',0,true]; this setVariable ['siren',0,true]; this setVariable ['lights',0,true]; this setVariable ['directional',0,true]; this setVariable ['directional1',0,true]; this setVariable ['directional2',0,true]; this setVariable ['directional3',0,true]";
				onlyForplayer=0;
			};
			class codetwo
			{
				displayName="<t color='#0000ff'>Code Two</t>";
				position="drivewheel";
				radius=2;
				condition="driver this == player && (this getVariable ['lightbar',0]) == 0 && (this getVariable ['directional3',0]) == 0";
				statement="this setVariable ['lightbar',1,true]; this setVariable ['siren',0,true]; this setVariable ['lights',1,true]; this setVariable ['directional',0,true]; this setVariable ['directional1',0,true]; this setVariable ['directional2',0,true]; this setVariable ['directional3',1,true]";
				onlyForplayer=0;
			};
			class codetwo2
			{
				displayName="<t color='#0000ff'>Code Two</t>";
				position="drivewheel";
				radius=2;
				condition="driver this == player && (this getVariable ['siren',0]) == 1 && (this getVariable ['directional3',0]) == 0";
				statement="this setVariable ['lightbar',1,true]; this setVariable ['siren',0,true]; this setVariable ['lights',1,true]; this setVariable ['directional',0,true]; this setVariable ['directional1',0,true]; this setVariable ['directional2',0,true]; this setVariable ['directional3',1,true]";
				onlyForplayer=0;
			};
			class sirenon
			{
				displayName="<t color='#ff0000'>Code Three</t>";
				position="drivewheel";
				radius=2;
				condition="driver this == player && (this getVariable ['siren',0]) == 0 && (this getVariable ['directional',0]) == 0";
				statement="this setVariable ['lightbar',1,true]; this setVariable ['siren',1,true]; this setVariable ['directional',1,true]; this setVariable ['directional1',0,true]; this setVariable ['directional2',0,true]; this setVariable ['directional3',0,true]";
				onlyForplayer=0;
			};
			class directionalright
			{
				displayName="<t color='#ffff00'>Directional Right</t>";
				position="drivewheel";
				radius=2;
				condition="driver this == player && (this getVariable ['directional1',0]) == 0";
				statement="this setVariable ['directional',0,true]; this setVariable ['directional1',1,true]; this setVariable ['directional2',0,true]; this setVariable ['directional3',0,true]";
				onlyForplayer=0;
			};
			class directionalleft
			{
				displayName="<t color='#ffff00'>Directional Left</t>";
				position="drivewheel";
				radius=2;
				condition="driver this == player && (this getVariable ['directional2',0]) == 0";
				statement="this setVariable ['directional',0,true]; this setVariable ['directional1',0,true]; this setVariable ['directional2',1,true]; this setVariable ['directional3',0,true]";
				onlyForplayer=0;
			};
			class SpotlightOnLeft
			{
				displayName="<t color='#00ff00'>Spotlight On (L)</t>";
				position="drivewheel";
				radius=2;
				onlyForPlayer=0;
				shortcut="LeanLeft";
				condition="driver this == player && (this getVariable ['spotlight_L',0]) == 0";
				statement="this setVariable ['spotlight_L',1,true]";
			};
			class SpotlightOffLeft
			{
				displayName="<t color='#00ff00'>Spotlight Off (L)</t>";
				position="drivewheel";
				radius=2;
				onlyForPlayer=0;
				shortcut="LeanLeft";
				condition="driver this == player && (this getVariable ['spotlight_L',0]) == 1";
				statement="this setVariable ['spotlight_L',0,true]";
			};
			class SpotlightOnRight
			{
				displayName="<t color='#00ff00'>Spotlight On (R)</t>";
				position="drivewheel";
				radius=2;
				onlyForPlayer=0;
				shortcut="LeanRight";
				condition="driver this == player && (this getVariable ['spotlight_R',0]) == 0";
				statement="this setVariable ['spotlight_R',1,true]";
			};
			class SpotlightOffRight
			{
				displayName="<t color='#00ff00'>Spotlight Off (R)</t>";
				position="drivewheel";
				radius=2;
				onlyForPlayer=0;
				shortcut="LeanRight";
				condition="driver this == player && (this getVariable ['spotlight_R',0]) == 1";
				statement="this setVariable ['spotlight_R',0,true]";
			};
			class Reset
			{
				displayName="<t color='#ff0000'>Reset Lock/Fast</t>";
				position="drivewheel";
				radius=10;
				condition="player IN this";
				statement="this setobjecttextureglobal [24,'\red_taurus_10_p\textures\pic0.paa']; this setobjecttextureglobal [25,'\red_taurus_10_p\textures\pic0.paa']; this setobjecttextureglobal [26,'\red_taurus_10_p\textures\pic0.paa']; Prevspeed = 0;";
				onlyForplayer=1;
			};
		};
		class HitPoints2
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
			class HitGlass5;
			class HitGlass6;
		};
		class AnimationSources;
		wheelDamageRadiusCoef=0.89999998;
		wheelDestroyRadiusCoef=0.40000001;
		maxFordingDepth=0.5;
		waterResistance=1;
		crewCrashProtection=0.25;
		driverLeftHandAnimName="drivewheel";
		driverRightHandAnimName="drivewheel";
		class Turrets
		{
		};
		class HitPoints: HitPoints
		{
			class HitLFWheel: HitLFWheel
			{
				armor=0.5;
				passThrough=0;
			};
			class HitLF2Wheel: HitLF2Wheel
			{
				armor=0.5;
				passThrough=0;
			};
			class HitRFWheel: HitRFWheel
			{
				armor=0.5;
				passThrough=0;
			};
			class HitRF2Wheel: HitRF2Wheel
			{
				armor=0.5;
				passThrough=0;
			};
			class HitFuel
			{
				armor=1.5;
				material=-1;
				name="fueltank";
				visual="";
				passThrough=0.2;
			};
			class HitEngine
			{
				armor=1.5;
				material=-1;
				name="engine";
				visual="";
				passThrough=0.2;
			};
			class HitBody: HitBody
			{
				name="body";
				visual="camo1";
				passThrough=1;
			};
			class HitGlass1: HitGlass1
			{
				armor=0.75;
			};
			class HitGlass2: HitGlass2
			{
				armor=0.75;
			};
			class HitGlass3: HitGlass3
			{
				armor=0.75;
			};
			class HitGlass4: HitGlass4
			{
				armor=0.75;
			};
			class HitGlass5: HitGlass5
			{
				armor=0.75;
			};
			class HitGlass6: HitGlass6
			{
				armor=0.75;
			};
		};
		driverAction="driver_offroad01";
		cargoAction[]=
		{
			"passenger_low01",
			"passenger_generic01_leanleft",
			"passenger_generic01_leanright"
		};
		getInAction="GetInLow";
		getOutAction="GetOutLow";
		cargoGetInAction[]=
		{
			"GetInLow"
		};
		cargoGetOutAction[]=
		{
			"GetOutLow"
		};
		driveOnComponent[]=
		{
			"wheel_1_1_damper",
			"wheel_1_2_damper",
			"wheel_2_1_damper",
			"wheel_2_2_damper"
		};
		attenuationEffectType="CarAttenuation";
		soundGetIn[]=
		{
			"A3\Sounds_F\vehicles\soft\SUV_01\SUV_01_door",
			0.56234133,
			1
		};
		soundGetOut[]=
		{
			"A3\Sounds_F\vehicles\soft\SUV_01\SUV_01_door",
			0.56234133,
			1,
			40
		};
		soundDammage[]=
		{
			"",
			0.56234133,
			1
		};
		soundEngineOnInt[]=
		{
			"red_base\sounds\SEDAN_V8\start_int.wss",
			2.2387211,
			1
		};
		soundEngineOnExt[]=
		{
			"red_base\sounds\SEDAN_V8\start.wss",
			5.0118723,
			1,
			200
		};
		soundEngineOffInt[]=
		{
			"red_base\sounds\MUSCLE_V8\v8_int_stop.wss",
			0.39810717,
			1
		};
		soundEngineOffExt[]=
		{
			"red_base\sounds\MUSCLE_V8\v8_ext_stop.wss",
			0.44668359,
			1,
			200
		};
		buildCrash0[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_building_01",
			0.70794576,
			1,
			200
		};
		buildCrash1[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_building_02",
			0.70794576,
			1,
			200
		};
		buildCrash2[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_building_03",
			0.70794576,
			1,
			200
		};
		buildCrash3[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_building_04",
			0.70794576,
			1,
			200
		};
		soundBuildingCrash[]=
		{
			"buildCrash0",
			0.25,
			"buildCrash1",
			0.25,
			"buildCrash2",
			0.25,
			"buildCrash3",
			0.25
		};
		WoodCrash0[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_01",
			0.70794576,
			1,
			200
		};
		WoodCrash1[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_02",
			0.70794576,
			1,
			200
		};
		WoodCrash2[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_03",
			0.70794576,
			1,
			200
		};
		WoodCrash3[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_04",
			0.70794576,
			1,
			200
		};
		WoodCrash4[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_05",
			0.70794576,
			1,
			200
		};
		WoodCrash5[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_mix_wood_06",
			0.70794576,
			1,
			200
		};
		soundWoodCrash[]=
		{
			"woodCrash0",
			0.16599999,
			"woodCrash1",
			0.16599999,
			"woodCrash2",
			0.16599999,
			"woodCrash3",
			0.16599999,
			"woodCrash4",
			0.16599999,
			"woodCrash5",
			0.16599999
		};
		ArmorCrash0[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_01",
			0.70794576,
			1,
			200
		};
		ArmorCrash1[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_02",
			0.70794576,
			1,
			200
		};
		ArmorCrash2[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_03",
			0.70794576,
			1,
			200
		};
		ArmorCrash3[]=
		{
			"A3\Sounds_F\vehicles\soft\noises\crash_vehicle_04",
			0.70794576,
			1,
			200
		};
		soundArmorCrash[]=
		{
			"ArmorCrash0",
			0.25,
			"ArmorCrash1",
			0.25,
			"ArmorCrash2",
			0.25,
			"ArmorCrash3",
			0.25
		};
		class Sounds
		{
			class Idle_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Ext_01520.wav",
					0.2818383,
					1,
					150
				};
				frequency="0.9	+	((rpm/	8000) factor[(400/	8000),(1150/	8000)])*0.2";
				volume="engineOn*camPos*(((rpm/	8000) factor[(400/	8000),(700/	8000)])	*	((rpm/	8000) factor[(1100/	8000),(900/	8000)]))";
			};
			class Engine
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Ext_01635.wav",
					0.31622776,
					1,
					200
				};
				frequency="0.8	+	((rpm/	8000) factor[(900/	8000),(2100/	8000)])*0.2";
				volume="engineOn*camPos*(((rpm/	8000) factor[(870/	8000),(1100/	8000)])	*	((rpm/	8000) factor[(2100/	8000),(1300/	8000)]))";
			};
			class Engine1_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Ext_02188.wav",
					0.3548134,
					1,
					240
				};
				frequency="0.8	+		((rpm/	8000) factor[(1300/	8000),(3100/	8000)])*0.2";
				volume="engineOn*camPos*(((rpm/	8000) factor[(1250/	8000),(2050/	8000)])	*	((rpm/	8000) factor[(3100/	8000),(2300/	8000)]))";
			};
			class Engine2_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Ext_02729.wav",
					0.39810717,
					1,
					280
				};
				frequency="0.8	+	((rpm/	8000) factor[(2200/	8000),(4100/	8000)])*0.2";
				volume="engineOn*camPos*(((rpm/	8000) factor[(2250/	8000),(3050/	8000)])	*	((rpm/	8000) factor[(4100/	8000),(3300/	8000)]))";
			};
			class Engine3_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Ext_03281.wav",
					0.44668359,
					1,
					320
				};
				frequency="0.8	+	((rpm/	8000) factor[(3300/	8000),(4900/	8000)])*0.2";
				volume="engineOn*camPos*(((rpm/	8000) factor[(3250/	8000),(4050/	8000)])	*	((rpm/	8000) factor[(4870/	8000),(4200/	8000)]))";
			};
			class Engine4_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Ext_04362.wav",
					0.50118721,
					1,
					360
				};
				frequency="0.8	+	((rpm/	8000) factor[(4200/	8000),(6200/	8000)])*0.2";
				volume="engineOn*camPos*(((rpm/	8000) factor[(4150/	8000),(4800/	8000)])	*	((rpm/	8000) factor[(5150/	8000),(4150/	8000)]))";
			};
			class Engine5_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Ext_04915.wav",
					0.56234133,
					1,
					420
				};
				frequency="0.95	+	((rpm/	8000) factor[(5100/	8000),(6400/	8000)])*0.2";
				volume="engineOn*camPos*(((rpm/	8000) factor[(5150/	8000),(5800/	8000)])	*	((rpm/	8000) factor[(7150/	8000),(6150/	8000)]))";
			};
			class Engine6_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Ext_05462.wav",
					0.56234133,
					1,
					460
				};
				frequency="0.95	+	((rpm/	8000) factor[(6000/	8000),(7400/	8000)])*0.2";
				volume="engineOn*camPos*(((rpm/	8000) factor[(5150/	8000),(5800/	8000)])	*	((rpm/	8000) factor[(7150/	8000),(6150/	8000)]))";
			};
			class Engine7_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Ext_06003.wav",
					0.56234133,
					1,
					500
				};
				frequency="0.95	+	((rpm/	8000) factor[(6900/	8000),(7900/	8000)])*0.15";
				volume="engineOn*camPos*((rpm/	8000) factor[(6100/	8000),(7100/	8000)])";
			};
			class IdleThrust
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Thrust_00691.wav",
					0.17782794,
					1,
					200
				};
				frequency="0.9	+	((rpm/	8000) factor[(400/	8000),(1150/	8000)])*0.2";
				volume="engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(400/	8000),(700/	8000)])	*	((rpm/	8000) factor[(1100/	8000),(900/	8000)]))";
			};
			class EngineThrust
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Thrust_01056.wav",
					0.19952622,
					1,
					250
				};
				frequency="0.8	+	((rpm/	8000) factor[(900/	8000),(2100/	8000)])*0.2";
				volume="engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(870/	8000),(1100/	8000)])	*	((rpm/	8000) factor[(2100/	8000),(1300/	8000)]))";
			};
			class Engine1_Thrust_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Thrust_01270.wav",
					0.22387211,
					1,
					280
				};
				frequency="0.8	+		((rpm/	8000) factor[(1300/	8000),(3100/	8000)])*0.2";
				volume="engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(1250/	8000),(2050/	8000)])	*	((rpm/	8000) factor[(3100/	8000),(2300/	8000)]))";
			};
			class Engine2_Thrust_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Thrust_01591.wav",
					0.25118864,
					1,
					320
				};
				frequency="0.8	+	((rpm/	8000) factor[(2200/	8000),(4100/	8000)])*0.2";
				volume="engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(2250/	8000),(3050/	8000)])	*	((rpm/	8000) factor[(4100/	8000),(3300/	8000)]))";
			};
			class Engine3_Thrust_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Thrust_01804.wav",
					0.2818383,
					1,
					360
				};
				frequency="0.8	+	((rpm/	8000) factor[(3300/	8000),(4900/	8000)])*0.2";
				volume="engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(3250/	8000),(4050/	8000)])	*	((rpm/	8000) factor[(4870/	8000),(4200/	8000)]))";
			};
			class Engine4_Thrust_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Thrust_02017.wav",
					0.31622776,
					1,
					380
				};
				frequency="0.8	+	((rpm/	8000) factor[(4200/	8000),(6200/	8000)])*0.3";
				volume="engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(4150/	8000),(4800/	8000)])	*	((rpm/	8000) factor[(5150/	8000),(4150/	8000)]))";
			};
			class Engine5_Thrust_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Thrust_02327.wav",
					0.3548134,
					1,
					400
				};
				frequency="0.8	+	((rpm/	8000) factor[(5100/	8000),(6400/	8000)])*0.3";
				volume="engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(4250/	8000),(5050/	8000)])	*	((rpm/	8000) factor[(6870/	8000),(5200/	8000)]))";
			};
			class Engine6_Thrust_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Thrust_02648.wav",
					0.39810717,
					1,
					420
				};
				frequency="0.8	+	((rpm/	8000) factor[(6000/	8000),(7400/	8000)])*0.3";
				volume="engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(5150/	8000),(5800/	8000)])	*	((rpm/	8000) factor[(7150/	8000),(6150/	8000)]))";
			};
			class Engine7_Thrust_ext
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Thrust_03094.wav",
					0.44668359,
					1,
					450
				};
				frequency="0.9	+	((rpm/	8000) factor[(6900/	8000),(7900/	8000)])*0.2";
				volume="engineOn*camPos*(0.4+(0.6*(thrust factor[0.1,1])))*((rpm/	8000) factor[(6100/	8000),(7100/	8000)])";
			};
			class Idle_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_00841.wav",
					0.17782794,
					1
				};
				frequency="0.9	+	((rpm/	8000) factor[(400/	8000),(1150/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(((rpm/	8000) factor[(400/	8000),(700/	8000)])	*	((rpm/	8000) factor[(1100/	8000),(900/	8000)]))";
			};
			class Engine_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_01636.wav",
					0.19952622,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(900/	8000),(2100/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(((rpm/	8000) factor[(870/	8000),(1100/	8000)])	*	((rpm/	8000) factor[(2100/	8000),(1300/	8000)]))";
			};
			class Engine1_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_02174.wav",
					0.22387211,
					1
				};
				frequency="0.8	+		((rpm/	8000) factor[(1300/	8000),(3100/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(((rpm/	8000) factor[(1250/	8000),(2050/	8000)])	*	((rpm/	8000) factor[(3100/	8000),(2300/	8000)]))";
			};
			class Engine2_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_02729.wav",
					0.25118864,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(2200/	8000),(4100/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(((rpm/	8000) factor[(2250/	8000),(3050/	8000)])	*	((rpm/	8000) factor[(4100/	8000),(3300/	8000)]))";
			};
			class Engine3_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_03271.wav",
					0.2818383,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(3300/	8000),(4900/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(((rpm/	8000) factor[(3250/	8000),(4050/	8000)])	*	((rpm/	8000) factor[(4870/	8000),(4200/	8000)]))";
			};
			class Engine4_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_03820.wav",
					0.31622776,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(4200/	8000),(6200/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(((rpm/	8000) factor[(4150/	8000),(4800/	8000)])	*	((rpm/	8000) factor[(5150/	8000),(4150/	8000)]))";
			};
			class Engine5_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_04366.wav",
					0.3548134,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(5100/	8000),(6400/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(((rpm/	8000) factor[(4250/	8000),(5050/	8000)])	*	((rpm/	8000) factor[(6870/	8000),(5200/	8000)]))";
			};
			class Engine6_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_04911.wav",
					0.39810717,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(6000/	8000),(7400/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(((rpm/	8000) factor[(5150/	8000),(5800/	8000)])	*	((rpm/	8000) factor[(7150/	8000),(6150/	8000)]))";
			};
			class Engine7_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_05998.wav",
					0.39810717,
					1
				};
				frequency="0.95	+	((rpm/	8000) factor[(6900/	8000),(7900/	8000)])*0.15";
				volume="engineOn*(1-camPos)*((rpm/	8000) factor[(6100/	8000),(7100/	8000)])";
			};
			class IdleThrust_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_Thrust_00691.wav",
					0.056234129,
					1
				};
				frequency="0.9	+	((rpm/	8000) factor[(400/	8000),(1150/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(400/	8000),(700/	8000)])	*	((rpm/	8000) factor[(1100/	8000),(900/	8000)]))";
			};
			class EngineThrust_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_Thrust_01056.wav",
					0.063095734,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(900/	8000),(2100/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(870/	8000),(1100/	8000)])	*	((rpm/	8000) factor[(2100/	8000),(1300/	8000)]))";
			};
			class Engine1_Thrust_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_Thrust_01270.wav",
					0.070794575,
					1
				};
				frequency="0.8	+		((rpm/	8000) factor[(1300/	8000),(3100/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(1250/	8000),(2050/	8000)])	*	((rpm/	8000) factor[(3100/	8000),(2300/	8000)]))";
			};
			class Engine2_Thrust_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_Thrust_01591.wav",
					0.079432823,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(2200/	8000),(4100/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(2250/	8000),(3050/	8000)])	*	((rpm/	8000) factor[(4100/	8000),(3300/	8000)]))";
			};
			class Engine3_Thrust_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_Thrust_01804.wav",
					0.089125089,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(3300/	8000),(4900/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(3250/	8000),(4050/	8000)])	*	((rpm/	8000) factor[(4870/	8000),(4200/	8000)]))";
			};
			class Engine4_Thrust_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_Thrust_02017.wav",
					0.099999994,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(4200/	8000),(6200/	8000)])*0.3";
				volume="engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(4150/	8000),(4800/	8000)])	*	((rpm/	8000) factor[(5150/	8000),(4150/	8000)]))";
			};
			class Engine5_Thrust_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_Thrust_02327.wav",
					0.11220184,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(5100/	8000),(6400/	8000)])*0.3";
				volume="engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(4250/	8000),(5050/	8000)])	*	((rpm/	8000) factor[(6870/	8000),(5200/	8000)]))";
			};
			class Engine6_Thrust_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_Thrust_02648.wav",
					0.12589253,
					1
				};
				frequency="0.8	+	((rpm/	8000) factor[(6000/	8000),(7400/	8000)])*0.3";
				volume="engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*(((rpm/	8000) factor[(5150/	8000),(5800/	8000)])	*	((rpm/	8000) factor[(7150/	8000),(6150/	8000)]))";
			};
			class Engine7_Thrust_int
			{
				sound[]=
				{
					"red_base\sounds\SEDAN_V8\Int_Thrust_03094.wav",
					0.11220184,
					1
				};
				frequency="0.9	+	((rpm/	8000) factor[(6900/	8000),(7900/	8000)])*0.2";
				volume="engineOn*(1-camPos)*(0.4+(0.6*(thrust factor[0.1,1])))*((rpm/	8000) factor[(6100/	8000),(7100/	8000)])";
			};
			class Movement
			{
				sound="soundEnviron";
				frequency="1";
				volume="0";
			};
			class TiresRockOut
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\ext_tires_dirt_soft_1",
					0.50118721,
					1,
					60
				};
				frequency="1";
				volume="camPos*rock*(speed factor[2, 20])";
			};
			class TiresSandOut
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\ext-tires-sand1",
					0.50118721,
					1,
					60
				};
				frequency="1";
				volume="camPos*sand*(speed factor[2, 20])";
			};
			class TiresGrassOut
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\ext_tires_dirt_soft_2",
					0.50118721,
					1,
					60
				};
				frequency="1";
				volume="camPos*grass*(speed factor[2, 20])";
			};
			class TiresMudOut
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\ext-tires-mud2",
					0.50118721,
					1,
					60
				};
				frequency="1";
				volume="camPos*mud*(speed factor[2, 20])";
			};
			class TiresGravelOut
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\ext_tires_gravel_1",
					0.50118721,
					1,
					60
				};
				frequency="1";
				volume="camPos*gravel*(speed factor[2, 20])";
			};
			class TiresAsphaltOut
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\ext_tires_asfalt_2",
					0.50118721,
					1,
					60
				};
				frequency="1";
				volume="camPos*asphalt*(speed factor[2, 20])";
			};
			class NoiseOut
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\noise_ext_car_3",
					0.39810717,
					1,
					90
				};
				frequency="1";
				volume="camPos*(damper0 max 0.02)*(speed factor[0, 8])";
			};
			class TiresRockIn
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\int_tires_dirt_soft_1",
					0.50118721,
					1
				};
				frequency="1";
				volume="(1-camPos)*rock*(speed factor[2, 20])";
			};
			class TiresSandIn
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\int-tires-sand2",
					0.50118721,
					1
				};
				frequency="1";
				volume="(1-camPos)*sand*(speed factor[2, 20])";
			};
			class TiresGrassIn
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\int_tires_dirt_soft_2",
					0.50118721,
					1
				};
				frequency="1";
				volume="(1-camPos)*grass*(speed factor[2, 20])";
			};
			class TiresMudIn
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\int-tires-mud2",
					0.50118721,
					1
				};
				frequency="1";
				volume="(1-camPos)*mud*(speed factor[2, 20])";
			};
			class TiresGravelIn
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\int_tires_gravel_1",
					0.50118721,
					1
				};
				frequency="1";
				volume="(1-camPos)*gravel*(speed factor[2, 20])";
			};
			class TiresAsphaltIn
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\tires\int_tires_asfalt_2",
					0.50118721,
					1
				};
				frequency="1";
				volume="(1-camPos)*asphalt*(speed factor[2, 20])";
			};
			class NoiseIn
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\noise_int_car_3",
					0.25118864,
					1
				};
				frequency="1";
				volume="(damper0 max 0.1)*(speed factor[0, 8])*(1-camPos)";
			};
			class breaking_ext_road
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_04",
					0.70794576,
					1,
					80
				};
				frequency=1;
				volume="engineOn*camPos*asphalt*(LongSlipDrive Factor[-0.1, -0.4])*(Speed Factor[2, 15])";
			};
			class acceleration_ext_road
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02",
					0.70794576,
					1,
					80
				};
				frequency=1;
				volume="engineOn*camPos*asphalt*(LongSlipDrive Factor[0.1, 0.4])*(Speed Factor[15, 2])";
			};
			class turn_left_ext_road
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02",
					0.70794576,
					1,
					80
				};
				frequency=1;
				volume="engineOn*camPos*asphalt*(latSlipDrive Factor[0.1, 0.4])*(Speed Factor[2, 15])";
			};
			class turn_right_ext_road
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02",
					0.70794576,
					1,
					80
				};
				frequency=1;
				volume="engineOn*camPos*asphalt*(latSlipDrive Factor[-0.1, -0.4])*(Speed Factor[2, 15])";
			};
			class breaking_ext_dirt
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_14_dirt_breaking",
					0.70794576,
					1,
					60
				};
				frequency=1;
				volume="engineOn*camPos*(1-asphalt)*(LongSlipDrive Factor[-0.1, -0.4])*(Speed Factor[1, 15])";
			};
			class acceleration_ext_dirt
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_16_dirt_acceleration",
					0.70794576,
					1,
					60
				};
				frequency=1;
				volume="engineOn*camPos*(1-asphalt)*(LongSlipDrive Factor[0.1, 0.4])*(Speed Factor[15, 1])";
			};
			class turn_left_ext_dirt
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt",
					0.70794576,
					1,
					60
				};
				frequency=1;
				volume="engineOn*camPos*(1-asphalt)*(latSlipDrive Factor[0.1, 0.4])*(Speed Factor[1, 15])";
			};
			class turn_right_ext_dirt
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt",
					0.70794576,
					1,
					60
				};
				frequency=1;
				volume="engineOn*camPos*(1-asphalt)*(latSlipDrive Factor[-0.1, -0.4])*(Speed Factor[1, 15])";
			};
			class breaking_int_road
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_04_int",
					0.31622776,
					1
				};
				frequency=1;
				volume="engineOn*asphalt*(1-camPos)*(LongSlipDrive Factor[-0.1, -0.4])*(Speed Factor[2, 15])";
			};
			class acceleration_int_road
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02_int",
					0.31622776,
					1
				};
				frequency=1;
				volume="engineOn*asphalt*(1-camPos)*(LongSlipDrive Factor[0.1, 0.4])*(Speed Factor[15, 2])";
			};
			class turn_left_int_road
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02_int",
					0.31622776,
					1
				};
				frequency=1;
				volume="engineOn*asphalt*(1-camPos)*(latSlipDrive Factor[0.1, 0.4])*(Speed Factor[2, 15])";
			};
			class turn_right_int_road
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_loop_02_int",
					0.31622776,
					1
				};
				frequency=1;
				volume="engineOn*asphalt*(1-camPos)*(latSlipDrive Factor[-0.1, -0.4])*(Speed Factor[2, 15])";
			};
			class breaking_int_dirt
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_14_dirt_breaking_int",
					0.31622776,
					1
				};
				frequency=1;
				volume="engineOn*(1-asphalt)*(1-camPos)*(LongSlipDrive Factor[-01, -0.4])*(Speed Factor[2, 15])";
			};
			class acceleration_int_dirt
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_16_dirt_acceleration_int",
					0.31622776,
					1
				};
				frequency=1;
				volume="engineOn*(1-asphalt)*(1-camPos)*(LongSlipDrive Factor[0.1, 0.4])*(Speed Factor[15, 2])";
			};
			class turn_left_int_dirt
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt_int",
					0.31622776,
					1
				};
				frequency=1;
				volume="engineOn*(1-asphalt)*(1-camPos)*(latSlipDrive Factor[0.1, 0.4])*(Speed Factor[2, 15])";
			};
			class turn_right_int_dirt
			{
				sound[]=
				{
					"A3\Sounds_F\vehicles\soft\noises\slipping_tires_18_dirt_int",
					0.31622776,
					1
				};
				frequency=1;
				volume="engineOn*(1-asphalt)*(1-camPos)*(latSlipDrive Factor[-0.1, -0.4])*(Speed Factor[2, 15])";
			};
		};
		class RenderTargets
		{
			class LeftMirror
			{
				renderTarget="rendertarget0";
				class CameraView1
				{
					pointPosition="PIP0_pos";
					pointDirection="PIP0_dir";
					renderQuality=2;
					renderVisionMode=0;
					fov=0.69999999;
				};
			};
			class RearCam
			{
				renderTarget="rendertarget1";
				class CameraView1
				{
					pointPosition="PIP1_pos";
					pointDirection="PIP1_dir";
					renderQuality=2;
					renderVisionMode=0;
					fov=0.69999999;
				};
			};
			class FrontCam
			{
				renderTarget="rendertarget2";
				class CameraView1
				{
					pointPosition="PIP2_pos";
					pointDirection="PIP2_dir";
					renderQuality=2;
					renderVisionMode=0;
					fov=0.69999999;
				};
			};
		};
		thrustDelay=0.1;
		brakeIdleSpeed=1.78;
		maxSpeed=325;
		fuelCapacity=45;
		wheelCircumference=2.277;
		antiRollbarForceCoef=2;
		antiRollbarForceLimit=2;
		antiRollbarSpeedMin=20;
		antiRollbarSpeedMax=80;
		idleRpm=900;
		redRpm=5850;
		class complexGearbox
		{
			GearboxRatios[]=
			{
				"R1",
				-3.2309999,
				"N",
				0,
				"D1",
				4.4619999,
				"D2",
				3.5699999,
				"D3",
				2.5710001,
				"D4",
				1.97,
				"D5",
				1.601,
				"D6",
				0.89999998,
				"D7",
				0.64999998
			};
			TransmissionRatios[]=
			{
				"High",
				4.1110001
			};
			gearBoxMode="auto";
			moveOffGear=1;
			driveString="D";
			neutralString="N";
			reverseString="R";
			transmissionDelay=0.0099999998;
		};
		simulation="carx";
		dampersBumpCoef=0.0099999998;
		differentialType="all_open";
		frontRearSplit=0.30000001;
		frontBias=1.5;
		rearBias=1.5;
		centreBias=2.5;
		clutchStrength=55;
		maxOmega=575.96002;
		enginePower=272;
		peakTorque=625;
		dampingRateFullThrottle=0.029999999;
		dampingRateZeroThrottleClutchEngaged=0.34999999;
		dampingRateZeroThrottleClutchDisengaged=0.050000001;
		torqueCurve[]=
		{
			{0,0},
			{0.2,0.64999998},
			{0.30000001,0.80000001},
			{0.40000001,0.94999999},
			{0.60000002,1},
			{0.69999999,0.94999999},
			{0.89999998,0.89999998},
			{1,0.5}
		};
		changeGearMinEffectivity[]={0.94999999,0.15000001,0.98000002,0.98000002,0.98000002,0.98000002,0.97000003,0.94999999,0.94999999};
		switchTime=0.30000001;
		latency=0.80000001;
		class Wheels
		{
			class LF
			{
				boneName="wheel_1_1_damper";
				steering=1;
				side="left";
				center="wheel_1_1_axis";
				boundary="wheel_1_1_bound";
				mass=20;
				MOI=5.3000002;
				maxBrakeTorque=6000;
				suspTravelDirection[]={0,-1,0};
				suspForceAppPointOffset="wheel_1_1_axis";
				tireForceAppPointOffset="wheel_1_1_axis";
				maxCompression=0.15000001;
				mMaxDroop=0.2;
				sprungMass=273;
				springStrength=9813;
				springDamperRate=2500;
				longitudinalStiffnessPerUnitGravity=4800;
				latStiffX=25;
				latStiffY=220;
				frictionVsSlipGraph[]=
				{
					{0,1},
					{0.5,1},
					{1,1}
				};
			};
			class LR: LF
			{
				boneName="wheel_1_2_damper";
				center="wheel_1_2_axis";
				boundary="wheel_1_2_bound";
				suspForceAppPointOffset="wheel_1_2_axis";
				tireForceAppPointOffset="wheel_1_2_axis";
				steering=0;
				side="left";
				latStiffX=25;
				latStiffY=22000;
				maxHandBrakeTorque=3000;
			};
			class RF: LF
			{
				boneName="wheel_2_1_damper";
				center="wheel_2_1_axis";
				boundary="wheel_2_1_bound";
				suspForceAppPointOffset="wheel_2_1_axis";
				tireForceAppPointOffset="wheel_2_1_axis";
				steering=1;
				side="right";
				latStiffX=25;
				latStiffY=220;
			};
			class RR: RF
			{
				boneName="wheel_2_2_damper";
				center="wheel_2_2_axis";
				boundary="wheel_2_2_bound";
				suspForceAppPointOffset="wheel_2_2_axis";
				tireForceAppPointOffset="wheel_2_2_axis";
				maxHandBrakeTorque=3000;
				steering=0;
				side="right";
				latStiffX=25;
				latStiffY=22000;
			};
		};
		memoryPointTrackFLL="TrackFLL";
		memoryPointTrackFLR="TrackFLR";
		memoryPointTrackBLL="TrackBLL";
		memoryPointTrackBLR="TrackBLR";
		memoryPointTrackFRL="TrackFRL";
		memoryPointTrackFRR="TrackFRR";
		memoryPointTrackBRL="TrackBRL";
		memoryPointTrackBRR="TrackBRR";
		class Damage
		{
			tex[]={};
			mat[]=
			{
				"A3\data_f\glass_veh_int.rvmat",
				"A3\data_f\Glass_veh_damage.rvmat",
				"A3\data_f\Glass_veh_damage.rvmat",
				"A3\data_f\glass_veh.rvmat",
				"A3\data_f\Glass_veh_damage.rvmat",
				"A3\data_f\Glass_veh_damage.rvmat"
			};
		};
		class Exhausts
		{
			class Exhaust1
			{
				position="exhaust1_pos";
				direction="exhaust1_dir";
				effect="ExhaustsEffect";
			};
			class Exhaust2
			{
				position="exhaust2_pos";
				direction="exhaust2_dir";
				effect="ExhaustsEffect";
			};
		};
		class Reflectors
		{
			class LightCarHeadL01
			{
				color[]={2000,2000,1700};
				ambient[]={5,5,5};
				position="LightCarHeadL01";
				direction="LightCarHeadL01_end";
				hitpoint="Light_L";
				selection="Light_L";
				size=1;
				innerAngle=100;
				outerAngle=179;
				coneFadeCoef=10;
				intensity=1;
				useFlare="true";
				dayLight="false";
				flareSize=0.5;
				class Attenuation
				{
					start=1;
					constant=0;
					linear=0;
					quadratic=0.25;
					hardLimitStart=30;
					hardLimitEnd=60;
				};
			};
			class LightCarHeadR01: LightCarHeadL01
			{
				position="LightCarHeadR01";
				direction="LightCarHeadR01_end";
				hitpoint="Light_R";
				selection="Light_R";
			};
			class LightCarHeadS01
			{
				color[]={1900,1800,2000};
				ambient[]={5,5,5};
				position="LightCarHeadS01";
				direction="LightCarHeadS01_end";
				hitpoint="Light_S";
				selection="Light_S";
				size=1;
				innerAngle=50;
				outerAngle=80;
				coneFadeCoef=10;
				intensity=4;
				useFlare="true";
				dayLight="false";
				flareSize=1;
			};
			class LightCarHeadS02: LightCarHeadS01
			{
				position="LightCarHeadS02";
				direction="LightCarHeadS02_end";
				hitpoint="Light_S2";
				selection="Light_S2";
			};
		};
		aggregateReflectors[]=
		{
			
			{
				"LightCarHeadL01"
			},
			
			{
				"LightCarHeadR01"
			},
			
			{
				"LightCarHeadS01"
			},
			
			{
				"LightCarHeadS02"
			}
		};
	};
	class red_taurus_10_p_sheriff: red_taurus_10_p_p_base
	{
		scope=0;
		scopeCurator=0;
		displayName="2010 Ford Taurus SHO Sheriff";
		crew="C_man_1";
		side=3;
		faction="CIV_F";
		hiddenSelectionsTextures[]=
		{
			"\red_z\red_taurus_10_p\skins\sheriff.paa"
		};
	};
	class red_taurus_10_p_sert: red_taurus_10_p_p_base
	{
		scope=0;
		scopeCurator=0;
		displayName="2010 Ford Taurus SHO SERT";
		crew="C_man_1";
		side=3;
		faction="CIV_F";
		hiddenSelectionsTextures[]=
		{
			"\red_z\red_taurus_10_p\skins\sert.paa"
		};
	};
	class red_taurus_10_p_trooper: red_taurus_10_p_p_base
	{
		scope=0;
		scopeCurator=0;
		displayName="2010 Ford Taurus SHO State Trooper";
		crew="C_man_1";
		side=3;
		faction="CIV_F";
		hiddenSelectionsTextures[]=
		{
			"\red_z\red_taurus_10_p\skins\StateTrooper.paa"
		};
	};
	class red_taurus_10_p_sheriff_w: red_taurus_10_p_p_base
	{
		scope=2;
		displayName="2010 Ford Taurus SHO Sheriff (Hell)";
		crew="C_man_1";
		side=3;
		faction="CIV_F";
		hiddenSelectionsTextures[]=
		{
			"\red_z\red_taurus_10_p\skins\sheriff_w.paa"
		};
	};
	class red_taurus_10_p_sheriff_b: red_taurus_10_p_p_base
	{
		scope=2;
		displayName="2010 Ford Taurus SHO Sheriff (Dunkel)";
		crew="C_man_1";
		side=3;
		faction="CIV_F";
		hiddenSelectionsTextures[]=
		{
			"\red_z\red_taurus_10_p\skins\sheriff_b.paa"
		};
	};
};
class cfgMods
{
	author="Redhotsteel";
	timepacked="1487309368";
};
