#define _ARMA_

class CfgPatches
{
	class prpg
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Characters_F","A3_Characters_F_Beta","A3_Characters_F_Gamma","A3_Characters_F_EPA","A3_Characters_F_EPB"};
	};
};

class CfgVehicles
{
	class B_Competitor_F;
	class C_man_polo_1_F;
	class C_man_1;
	class B_Soldier_base_F;
	class B_helicrew_F;

// Uniformen //

// Sheriff //

	class PRPG_Official: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_P_Official1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\13_Official.paa"};
		displayName = "PRPG Official Uniform";
		author = "PRPG";
	};
	
	class PRPG_P_Deputy: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_P_Deputy1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\12_P_Deputy.paa"};
		displayName = "PRPG Probationary Deputy";
		author = "PRPG";
	};

	class PRPG_Deputy: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_Deputy1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\11_DEPUTY.paa"};
		displayName = "PRPG Deputy";
		author = "PRPG";
	};

	class PRPG_Senior_Deputy: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_Senior_Deputy1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\10_S_DEPUTY.paa"};
		displayName = "PRPG Senior Deputy";
		author = "PRPG";
	};

	class PRPG_Detective: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_Detective1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\9_DETECTIVE.paa"};
		displayName = "PRPG Detective";
		author = "PRPG";
	};


	class PRPG_Sergeant: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_Sergeant1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\8_Sergeant.paa"};
		displayName = "PRPG Sergeant";
		author = "PRPG";
	};

	class PRPG_S_Sergeant: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_S_Sergeant1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\7_S_Sergeant.paa"};
		displayName = "PRPG Senior Sergeant";
		author = "PRPG";
	};

	class PRPG_Lieutenant: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_Lieutenant1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\6_Lieutenant.paa"};
		displayName = "PRPG Lieutenant";
		author = "PRPG";
	};

	class PRPG_Captain: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_Captain1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\5_Captain.paa"};
		displayName = "PRPG Captain";
		author = "PRPG";
	};

	class PRPG_D_Chief: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_D_Chief1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\4_Division_Chief.paa"};
		displayName = "PRPG Division Chief";
		author = "PRPG";
	};

	class PRPG_Superintendent: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_Superintendent1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\3_Superintendent.paa"};
		displayName = "PRPG Superintendent";
		author = "PRPG";
	};

	class PRPG_A_Sheriff: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_A_Sheriff1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\2_A_Sheriff.paa"};
		displayName = "PRPG Assistant Sheriff";
		author = "PRPG";
	};

	class PRPG_Sheriff: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_Sheriff1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\1_Sheriff.paa"};
		displayName = "PRPG Sheriff";
		author = "PRPG";
	};

	class PRPG_A_Deputy: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_A_Deputy1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\0_A_Deputy.paa"};
		displayName = "PRPG Auxiliary Deputy";
		author = "PRPG";
	};
	
	/* class PRPG_Sheriff_Shorts: C_man_polo_1_F
	{
		_generalMacro = "C_man_polo_1_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_Sheriff_Shorts1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\PRPG_Sheriff_Shorts.paa"};
		displayName = "PRPG Sheriff Shorts";
		author = "PRPG";
	}; */
	
	// State Police //

	class PRPG_State_Trooper: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_State_Trooper1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\state\PRPG_State_trooper.paa"};
		displayName = "PRPG SP Trooper";
		author = "PRPG";
	};
	class PRPG_State_Corporal: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_State_Corporal1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\state\PRPG_State_corporal.paa"};
		displayName = "PRPG SP Corporal";
		author = "PRPG";
	};
	class PRPG_State_Sergeant: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_State_Sergeant1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\state\PRPG_State_Sergeant.paa"};
		displayName = "PRPG SP Sergeant";
		author = "PRPG";
	};
	class PRPG_State_Sergeant_1st: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_State_Sergeant_1st1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\state\PRPG_State_sergeant_first_class.paa"};
		displayName = "PRPG SP Sergeant 1st Class";
		author = "PRPG";
	};
	class PRPG_State_Lieutenant: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_State_Lieutenant1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\state\PRPG_State_lieutenant.paa"};
		displayName = "PRPG SP Lieutenant";
		author = "PRPG";
	};
	class PRPG_State_Captain: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_State_Captain1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\state\PRPG_State_Captain.paa"};
		displayName = "PRPG SP Captain";
		author = "PRPG";
	};
	class PRPG_State_Chief: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_State_Chief1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Police\state\PRPG_State_Chief.paa"};
		displayName = "PRPG SP Chief";
		author = "PRPG";
	};

// DOJ //
	
	class DOJ_Jacket_1: B_Soldier_base_F
	{
		_generalMacro = "B_Soldier_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		model = "\tryk_unit\data\PCUs_G.p3d";
		uniformClass = "DOJ_Jacket_11";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","PRPG_Clothing\Data\doj\prpg_doj_co.paa"};
		displayName = "DOJ Jacke - Schlüter";
		author = "PRPG";
	};
	class DOJ_Jacket_2: B_Soldier_base_F
	{
		_generalMacro = "B_Soldier_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		model = "\tryk_unit\data\PCUs_G.p3d";
		uniformClass = "DOJ_Jacket_22";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","PRPG_Clothing\Data\doj\prpg_doj2_co.paa"};
		displayName = "DOJ Jacke";
		author = "PRPG";
	};

// EMS //

	class PRPG_EMS_Paramedic: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_EMS_Paramedic1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Medic\PRPG_paramedic_polo.paa"};
		displayName = "PRPG EMS Paramedic (Polo)";
		author = "PRPG";
	};

	class PRPG_EMS_Paramedic_2: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "PRPG_EMS_Paramedic_21";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Medic\PRPG_paramedic_polo_2.paa"};
		displayName = "PRPG EMS Paramedic (Polo) 2";
		author = "PRPG";
	};

	class PRPG_EMS_Overall_1: B_Soldier_base_F
	{
		scope=1;
		nakedUniform = "U_BasicBody";
		model="\A3\Characters_F_Beta\INDEP\ia_soldier_02.p3d";
		hiddenSelections[]={"camo","insignia"};
		uniformClass = "PRPG_EMS_Overall_11";
		hiddenSelectionsTextures[]={"PRPG_Clothing\Data\Medic\PRPG_EMS_Overall_1.paa"};
		author = "PRPG";
		displayName = "PRPG EMS Overall";
	};

	class PRPG_EMS_Overall_2: B_Soldier_base_F
	{
		scope=1;
		nakedUniform = "U_BasicBody";
		model="\A3\Characters_F_Beta\INDEP\ia_soldier_02.p3d";
		hiddenSelections[]={"camo","insignia"};
		uniformClass = "PRPG_EMS_Overall_21";
		hiddenSelectionsTextures[]={"PRPG_Clothing\Data\Medic\PRPG_EMS_Overall_2.paa"};
		author = "PRPG";
		displayName = "PRPG EMS Overall 2";
	};

	class PRPG_EMS_Overall_3: B_Soldier_base_F
	{
		scope=1;
		nakedUniform = "U_BasicBody";
		model="\A3\Characters_F_Beta\INDEP\ia_soldier_02.p3d";
		hiddenSelections[]={"camo","insignia"};
		uniformClass = "PRPG_EMS_Overall_31";
		hiddenSelectionsTextures[]={"PRPG_Clothing\Data\Medic\PRPG_EMS_Overall_3.paa"};
		author = "PRPG";
		displayName = "PRPG EMS Overall 3";
	};

	class PRPG_FD_Uniform_Firefighter: B_Soldier_base_F
	{
		scope=1;
		author="PRPG";
		displayName="PRPG FD Firefighter ";
		model="\A3\characters_F\BLUFOR\b_soldier_01.p3d";
		hiddenSelections[]=
		{
			"camo",
			"insignia"
		};
		hiddenSelectionsTextures[]=
		{
			"PRPG_Clothing\Data\Medic\PRPG_FD_Firefighter.paa",
			""
		};
	};

	class PRPG_FD_Uniform_Lieutenant: B_Soldier_base_F
	{
		scope=1;
		author="PRPG";
		displayName="PRPG FD Lieutenant ";
		model="\A3\characters_F\BLUFOR\b_soldier_01.p3d";
		hiddenSelections[]=
		{
			"camo",
			"insignia"
		};
		hiddenSelectionsTextures[]=
		{
			"PRPG_Clothing\Data\Medic\PRPG_FD_Lieutenant.paa",
			""
		};
	};

	class PRPG_FD_Uniform_Captain: B_Soldier_base_F
	{
		scope=1;
		author="PRPG";
		displayName="PRPG FD Captain ";
		model="\A3\characters_F\BLUFOR\b_soldier_01.p3d";
		hiddenSelections[]=
		{
			"camo",
			"insignia"
		};
		hiddenSelectionsTextures[]=
		{
			"PRPG_Clothing\Data\Medic\PRPG_FD_Captain.paa",
			""
		};
	};

	class PRPG_FD_Uniform_BattalionChief: B_Soldier_base_F
	{
		scope=1;
		author="PRPG";
		displayName="PRPG FD Battalion Chief ";
		model="\A3\characters_F\BLUFOR\b_soldier_01.p3d";
		hiddenSelections[]=
		{
			"camo",
			"insignia"
		};
		hiddenSelectionsTextures[]=
		{
			"PRPG_Clothing\Data\Medic\PRPG_FD_BattalionChief.paa",
			""
		};
	};

	class PRPG_FD_Uniform_DivisionChief: B_Soldier_base_F
	{
		scope=1;
		author="PRPG";
		displayName="PRPG FD Division Chief ";
		model="\A3\characters_F\BLUFOR\b_soldier_01.p3d";
		hiddenSelections[]=
		{
			"camo",
			"insignia"
		};
		hiddenSelectionsTextures[]=
		{
			"PRPG_Clothing\Data\Medic\PRPG_FD_DivisionChief.paa",
			""
		};
	};

	class PRPG_FD_Uniform_AssistantChief: B_Soldier_base_F
	{
		scope=1;
		author="PRPG";
		displayName="PRPG FD Assistant Chief ";
		model="\A3\characters_F\BLUFOR\b_soldier_01.p3d";
		hiddenSelections[]=
		{
			"camo",
			"insignia"
		};
		hiddenSelectionsTextures[]=
		{
			"PRPG_Clothing\Data\Medic\PRPG_FD_AssistantChief.paa",
			""
		};
	};

	class PRPG_FD_Uniform_Chief: B_Soldier_base_F
	{
		scope=1;
		author="PRPG";
		displayName="PRPG FD Chief ";
		model="\A3\characters_F\BLUFOR\b_soldier_01.p3d";
		hiddenSelections[]=
		{
			"camo",
			"insignia"
		};
		hiddenSelectionsTextures[]=
		{
			"PRPG_Clothing\Data\Medic\PRPG_FD_Chief.paa",
			""
		};
	};
	
	class PRPG_FD_Pilot: B_helicrew_F
	{
		_generalMacro = "B_helicrew_F";
		scope = 2;
		displayName = "ASU Pilot";
		nakedUniform = "U_BasicBody";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		uniformClass = "PRPG_FD_Pilot1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Medic\prpg_EMS_Pilot.paa"};
	};
};


class CfgWeapons
{
	class ItemCore;
	class Uniform_Base;
	class U_B_HeliPilotCoveralls;
	class UniformItem;
	class ItemInfo;
	class HeadgearItem;
	class Vest_Camo_Base;
	class vest_base;
	class VestItem;
	class V_HarnessO_brn;
	class H_HelmetB: ItemCore
	{
		armor="3";
		passThrough=0;
	};

// Uniformen //

// Sheriff //

	class PRPG_Official1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Official Uniform";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Official";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};
	
	class PRPG_P_Deputy1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Probationary Deputy";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_P_Deputy";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

		class PRPG_Deputy1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Deputy";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Deputy";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_Senior_Deputy1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Senior Deputy";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Senior_Deputy";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_Detective1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Detective";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Detective";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};


	class PRPG_Sergeant1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Sergeant";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Sergeant";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_S_Sergeant1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Senior Sergeant";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_S_Sergeant";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_Lieutenant1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Lieutenant";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Lieutenant";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_Captain1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Captain";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Captain";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_D_Chief1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Division Chief";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_D_Chief";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_Superintendent1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Superintendent";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Superintendent";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_A_Sheriff1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Assistant Sheriff";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_A_Sheriff";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_Sheriff1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SO Sheriff";
		author = "PRPG";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Sheriff";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_A_Deputy1: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG SO Auxiliary Deputy";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_A_Deputy";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_Sheriff_Shorts1: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG SO Sheriff Shorts";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_civilian_F.p3d";
		hiddenSelections[]={"camo","insignia"};
		hiddenSelectionsTextures[]={"PRPG_Clothing\Data\Medic\PRPG_FD_Firefighter.paa",""};
		hiddenSelectionsMaterials[]=
		{
			"tryk_unit\data\clothing1.rvmat",
			""
		};
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_Sheriff_Shorts";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};
	
// State Police //

	class PRPG_State_Trooper1: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG SP Trooper";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_State_Trooper";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};
	class PRPG_State_Corporal1: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG SP Corporal";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_State_Corporal";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class PRPG_State_Sergeant1: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG SP Sergeant";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_State_Sergeant";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class PRPG_State_Sergeant_1st1: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG SP Sergeant 1st Class";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_State_Sergeant_1st";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class PRPG_State_Lieutenant1: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG SP Lieutenant";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_State_Lieutenant";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class PRPG_State_Captain1: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG SP Captain";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_State_Captain";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class PRPG_State_Chief1: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG SP Chief";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_State_Chief";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	
// DOJ //

	class DOJ_Jacket_11: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "DOJ Jacke - Schlüter";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","PRPG_Clothing\Data\doj\prpg_doj_co.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "DOJ_Jacket_1";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	
	class DOJ_Jacket_22: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "DOJ Jacke";
		picture = "\PRPG_Clothing\Logos\prpg_shirt_sheriff.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","PRPG_Clothing\Data\doj\prpg_doj2_co.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "DOJ_Jacket_2";
			containerClass = "Supply100";
			mass = 0;
		};
	};

// EMS //

	class PRPG_EMS_Paramedic1: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG EMS Paramedic (Polo)";
		picture = "\PRPG_Clothing\Logos\prpg_shirt.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_EMS_Paramedic";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};

	class PRPG_EMS_Paramedic_21: Uniform_Base
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG EMS Paramedic (Polo) 2";
		picture = "\PRPG_Clothing\Logos\prpg_shirt.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_EMS_Paramedic_2";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};


	class PRPG_EMS_Overall_11: Uniform_Base
	{
		scope=2;
		author = "PRPG";
		displayName="PRPG EMS Overall";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="PRPG_EMS_Overall_1";
			containerClass="Supply120";
			mass=40;
			armor=100;
		};
	};

	class PRPG_EMS_Overall_21: Uniform_Base
	{
		scope=2;
		author = "PRPG";
		displayName="PRPG EMS Overall 2";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="PRPG_EMS_Overall_2";
			containerClass="Supply120";
			mass=40;
			armor=100;
		};
	};

	class PRPG_EMS_Overall_31: Uniform_Base
	{
		scope=2;
		author = "PRPG";
		displayName="PRPG EMS Overall 3";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="PRPG_EMS_Overall_3";
			containerClass="Supply120";
			mass=40;
			armor=100;
		};
	};

	class PRPG_FD_Uniform_Firefighter1: Uniform_Base
	{
		scope=2;
		displayName="PRPG FD Firefighter";
		author="PRPG";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="PRPG_FD_Uniform_Firefighter";
			containerClass="Supply120";
			mass=40;
		};
	};

	class PRPG_FD_Uniform_Lieutenant1: Uniform_Base
	{
		scope=2;
		displayName="PRPG FD Lieutenant";
		author="PRPG";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="PRPG_FD_Uniform_Lieutenant";
			containerClass="Supply120";
			mass=40;
		};
	};

	class PRPG_FD_Uniform_Captain1: Uniform_Base
	{
		scope=2;
		displayName="PRPG FD Captain";
		author="PRPG";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="PRPG_FD_Uniform_Captain";
			containerClass="Supply120";
			mass=40;
		};
	};

	class PRPG_FD_Uniform_BattalionChief1: Uniform_Base
	{
		scope=2;
		displayName="PRPG FD Battalion Chief";
		author="PRPG";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="PRPG_FD_Uniform_BattalionChief";
			containerClass="Supply120";
			mass=40;
		};
	};

	class PRPG_FD_Uniform_DivisionChief1: Uniform_Base
	{
		scope=2;
		displayName="PRPG FD Division Chief";
		author="PRPG";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="PRPG_FD_Uniform_DivisionChief";
			containerClass="Supply120";
			mass=40;
		};
	};

	class PRPG_FD_Uniform_AssistantChief1: Uniform_Base
	{
		scope=2;
		displayName="PRPG FD Assistant Chief";
		author="PRPG";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="PRPG_FD_Uniform_AssistantChief";
			containerClass="Supply120";
			mass=40;
		};
	};

	class PRPG_FD_Uniform_Chief1: Uniform_Base
	{
		scope=2;
		displayName="PRPG FD Chief";
		author="PRPG";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model="\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel="-";
			uniformClass="PRPG_FD_Uniform_Chief";
			containerClass="Supply120";
			mass=40;
		};
	};
	
	class PRPG_FD_Pilot1: U_B_HeliPilotCoveralls
	{
		scope = 2;
		displayName = "PRPG FD Pilot";
		author="PRPG";
		picture="\PRPG_Clothing\Logos\prpg_shirt.paa";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "PRPG_FD_Pilot";
			containerClass = "Supply120";
			mass = 40;
		};
	};



// Westen //

// Sheriff Westen //

	class PRPG_Sheriff_W_1_W: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Sheriff Weste + Holster";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Sheriff_W_W.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Sheriff_W_2_W: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Sheriff Weste + Holster(Funk)";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Sheriff_W_W.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_radio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Sheriff_W_1_Y: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Sheriff Weste + Holster (Y)";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Sheriff_W_Y.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Sheriff_W_2_Y: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Sheriff Weste + Holster(Funk) (Y)";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Sheriff_W_Y.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_radio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Sheriff_W_1_S: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Sheriff Weste + Holster (S)";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Sheriff_W_S.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Sheriff_W_2_S: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Sheriff Weste + Holster(Funk) (S)";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Sheriff_W_S.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_radio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

// Deputy Westen //

	class PRPG_Deputy_W_1_W: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Deputy Weste + Holster";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Deputy_W_W.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Deputy_W_2_W: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Deputy Weste + Holster(Funk)";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Deputy_W_W.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_radio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Deputy_W_1_Y: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Deputy Weste + Holster (Y)";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Deputy_W_Y.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Deputy_W_2_Y: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Deputy Weste + Holster(Funk) (Y)";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Deputy_W_Y.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_radio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Deputy_W_1_S: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Deputy Weste + Holster (S)";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Deputy_W_S.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Deputy_W_2_S: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Deputy Weste + Holster(Funk) (S)";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_Deputy_W_S.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_radio.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 30;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 30;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 30;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Sheriff_Belt: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG Sheriff Belt";
		picture = "\PRPG_Clothing\Logos\prpg_vest_sheriff.paa";
		model = "Smill_VHO\S_pistolbelt.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_BLK.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_pistolbelt.p3d";
			containerClass = "Supply60";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 20;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 20;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 20;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

// EMS Westen //

	class PRPG_EMS_BallistX: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG EMS BallistX";
		picture = "\PRPG_Clothing\Logos\prpg_vest.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_EMS_BallistX.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest_radio.p3d";
			containerClass = "Supply120";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 60;
					passThrough = 0;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 60;
					passThrough = 0;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 60;
					passThrough = 0;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_EMS_Belt: V_HarnessO_brn
	{
		scope = 2;
		displayName = "PRPG EMS Belt";
		picture = "\PRPG_Clothing\Logos\prpg_vest.paa";
		model = "Smill_VHO\S_pistolbelt.p3d";
		author = "Smill (+PRPG)";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\Data\Vests\PRPG_EMS_BallistX.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_pistolbelt.p3d";
			containerClass = "Supply120";
			mass = 20;
			class HitpointsProtectionInfo
			{
				class Chest
				{
					hitpointName = "HitChest";
					armor = 20;
					passThrough = 0.1;
				};
				class Diaphragm
				{
					hitpointName = "HitDiaphragm";
					armor = 20;
					passThrough = 0.1;
				};
				class Abdomen
				{
					hitpointName = "HitAbdomen";
					armor = 20;
					passThrough = 0.1;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.1;
				};
			};
			hiddenSelections[] = {"camo"};
		};
	};


// Headgear //

	class PRPG_Cap_Sheriff_1: ItemCore
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG Sheriff Cap";
		picture = "\PRPG_Clothing\Logos\prpg_cap_sheriff.paa";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\cap_sheriff.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Cap_Sheriff_2: ItemCore
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG Sheriff Cap (Patch)";
		picture = "\PRPG_Clothing\Logos\prpg_cap_sheriff.paa";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\cap_sheriff_patch.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};
	
	class PRPG_Cap_Sheriff_3: ItemCore
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG Cap (Thin Blue Line)";
		picture = "\PRPG_Clothing\Logos\prpg_cap_sheriff.paa";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\cap_thinblueline.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Cap_PRPG: ItemCore
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG Cap 1";
		picture = "\PRPG_Clothing\Logos\prpg_cap.paa";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\cap_prpg.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Cap_Twitch: ItemCore
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG Twitch Cap";
		picture = "\PRPG_Clothing\Logos\prpg_cap.paa";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\cap_twitch.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Cap_pizza: ItemCore
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG Pizza Cap";
		picture = "\PRPG_Clothing\Logos\prpg_cap.paa";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\cap_pizza.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Cap_ems_1: ItemCore
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG EMS Cap 1";
		picture = "\PRPG_Clothing\Logos\prpg_cap.paa";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\cap_ems_1.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Cap_ems_2: ItemCore
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG EMS Cap 2";
		picture = "\PRPG_Clothing\Logos\prpg_cap.paa";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\cap_ems_2.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Cap_doj_1: ItemCore
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG Doj Cap 1";
		picture = "\PRPG_Clothing\Logos\prpg_cap.paa";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\cap_doj_1.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Cap_doj_2: ItemCore
	{
		scope = 2;
		author = "PRPG";
		displayName = "PRPG Doj Cap 2";
		picture = "\PRPG_Clothing\Logos\prpg_cap.paa";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\cap_doj_2.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};

	class PRPG_Beanie_Sheriff: H_HelmetB
	{
		scope=2;
		displayName="PRPG Sheriff Beanie";
		author = "TRYK (+PRPG)";
		picture="\PRPG_Clothing\Logos\prpg_cap_sheriff.paa";
		model="tryk_unit\data\woolhat.p3d";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]={"PRPG_Clothing\data\Headgear\beanie_sheriff.paa"};
		class ItemInfo: HeadgearItem
		{
			mass=5;
			allowedSlots[]={901,605};
			uniformModel="tryk_unit\data\woolhat.p3d";
			hiddenSelections[]={"camo"};
			modelSides[]={2,3};
			armor=0.5;
			passThrough=0.5;
			explosionShielding=0.2;
		};
	};

	class PRPG_Helmet_Sheriff: H_HelmetB
	{
		scope=2;
		displayName="PRPG Sheriff Ballistic Helmet";
		picture="\PRPG_Clothing\Logos\prpg_cap_sheriff.paa";
		model="\tryk_unit\PASGT\PASGT";
		hiddenSelections[]={"camo"};
		hiddenSelectionsTextures[]=	{"PRPG_Clothing\data\Headgear\helmet_sheriff.paa"};
		class ItemInfo: HeadgearItem
		{
			mass=40;
			allowedSlots[]={901,605};
			uniformModel="\tryk_unit\PASGT\PASGT";
			hiddenSelections[]={"camo"};
			modelSides[]={2,3};
			armor=10;
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName="HitHead";
					armor=10;
					passThrough=0.3;
				};
			};
		};
	};
	
	class PRPG_ACE_Helmet: ItemCore
	{
		scope = 2;
		author = "PRPG ACE Pilot Helmet";
		displayName = "Police ACE helmet";
		model = "\a3\characters_f\Common\headgear_helmet_heli_shield.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\ASQHelmet.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 30;
			uniformModel = "\a3\characters_f\Common\headgear_helmet_heli_shield.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};
	class wing_helmet: ItemCore
	{
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "PRPG Police Pilot Helmet";
		model = "\a3\characters_f\Common\headgear_helmet_heli.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"PRPG_Clothing\data\Headgear\ASQHelmet2.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 30;
			uniformModel = "\a3\characters_f\Common\headgear_helmet_heli.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};

};

class cfgMods
{
	author = "PRPG";
	timepacked = "040520202227";
};
