////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 5.24
//Produced on Sat Dec 19 18:19:20 2015 : Created on Sat Dec 19 18:19:20 2015
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class Smill_VHO : config.bin{
class defaultUserActions;
class DefaultEventhandlers;
class CfgPatches
{
	class Smill_VHO
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Weapons_F","a3_weapons_f_beta","A3_Weapons_F_gamma","A3_Characters_F","A3_Characters_F_beta","A3_Characters_F_gamma","A3_Soft_F","A3_air_f","A3_Air_F_beta"};
	};
};
class cfgWeapons
{
	class ItemCore;
	class iteminfo;
	class Uniform_Base;
	class UniformItem;
	class Vest_Camo_Base;
	class vest_base;
	class VestItem;
	class HeadgearItem;
	class SportCarHorn;
	class InventoryItem_Base_F;
	class V_HarnessO_brn;
	class H_Booniehat_khk;
	class H_HelmetB;
	class H_Beret_02;
	class arifle_Katiba_C_F;
	class S_VHO_PB_1: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Belt CS95";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_pistolbelt.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95.paa"};
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
	class S_VHO_PB_2: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Belt OD";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_pistolbelt.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_OD.paa"};
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
	class S_VHO_PB_3: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Belt Black";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_pistolbelt.p3d";
		author = "Smill";
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
	class S_VHO_PV_MTP: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill MTP J";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_pv_holster.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_MTP.paa","Smill_VHO\Data\S_OV_MTP_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_pv_holster.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_PV_95: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill CS95 J";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_pv_holster.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95.paa","Smill_VHO\Data\S_OV_95_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_pv_holster.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_PV_OD: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill OD J";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_pv_holster.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_OD.paa","Smill_VHO\Data\S_OV_OD_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_pv_holster.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_OV_95_1: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill CS95 A";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95.paa"};
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
	class S_VHO_OV_95_2: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill CS95 B";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95.paa"};
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
	class S_VHO_OV_95_3: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill CS95 C";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest.p3d";
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
	class S_VHO_OV_95_4: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill CS95 D";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest.p3d";
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
	class S_VHO_OV_95_5: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill CS95 E";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_pouch.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95P.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_pouch.p3d";
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
	class S_VHO_OV_95_6: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill CS95 F";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_ftl.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95.paa","Smill_VHO\Data\S_OV_95_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_ftl.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_OV_95_7: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill CS95 G";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_ftl_pradio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95.paa","Smill_VHO\Data\S_OV_95_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_ftl_pradio.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_OV_95_8: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill CS95 H";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_hl.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95.paa","Smill_VHO\Data\S_OV_95_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_hl.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_OV_95_9: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill CS95 I";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_mg.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1","camo2"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_95.paa","Smill_VHO\Data\S_OV_95_HP.paa","Smill_VHO\Data\S_OV_95_MG.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_mg.p3d";
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
			hiddenSelections[] = {"camo","camo1","camo2"};
		};
	};
	class S_VHO_OV_MTP_1: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill MTP A";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_MTP.paa"};
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
	class S_VHO_OV_MTP_2: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill MTP B";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_MTP.paa"};
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
	class S_VHO_OV_MTP_3: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill MTP C";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_MTP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest.p3d";
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
	class S_VHO_OV_MTP_4: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill MTP D";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_MTP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest.p3d";
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
	class S_VHO_OV_MTP_5: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill MTP E";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_pouch.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_MTPP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_pouch.p3d";
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
	class S_VHO_OV_MTP_6: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill MTP F";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_ftl.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_MTPP.paa","Smill_VHO\Data\S_OV_MTP_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_ftl.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_OV_MTP_7: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill MTP G";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_ftl_pradio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_MTP.paa","Smill_VHO\Data\S_OV_MTP_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_ftl_pradio.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_OV_MTP_8: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill MTP H";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_hl.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_MTP.paa","Smill_VHO\Data\S_OV_MTP_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_hl.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_OV_MTP_9: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill MTP I";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_mg.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1","camo2"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_MTP.paa","Smill_VHO\Data\S_OV_MTP_HP.paa","Smill_VHO\Data\S_OV_MTP_MG.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_mg.p3d";
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
			hiddenSelections[] = {"camo","camo1","camo2"};
		};
	};
	class S_VHO_OV_OD_1: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill OD A";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_OD.paa"};
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
	class S_VHO_OV_OD_2: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill OD B";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_OD.paa"};
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
	class S_VHO_OV_OD_3: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill OD C";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_OD.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest.p3d";
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
	class S_VHO_OV_OD_4: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill OD D";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_OD.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest.p3d";
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
	class S_VHO_OV_OD_5: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill OD E ";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_pouch.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_ODP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_pouch.p3d";
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
	class S_VHO_OV_OD_6: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill OD F";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_ftl.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_OD.paa","Smill_VHO\Data\S_OV_OD_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_ftl.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_OV_OD_7: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill OD G";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_ftl_pradio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_OD.paa","Smill_VHO\Data\S_OV_OD_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_ftl_pradio.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_OV_OD_8: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill OD H";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_hl.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_OD.paa","Smill_VHO\Data\S_OV_OD_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_hl.p3d";
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
			hiddenSelections[] = {"camo","camo1"};
		};
	};
	class S_VHO_OV_OD_9: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill OD I";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest_mg.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo","camo1","camo2"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_OD.paa","Smill_VHO\Data\S_OV_OD_HP.paa","Smill_VHO\Data\S_OV_OD_MG.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest_mg.p3d";
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
			hiddenSelections[] = {"camo","camo1","camo2"};
		};
	};
	class S_VHO_OV_BLK_1: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Black 1";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest_beltradio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_BLK.paa"};
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
	class S_VHO_OV_BLK_2: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Black 2";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest_radio.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_BLK.paa"};
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
	class S_VHO_OV_BLK_3: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Black 3";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_pistolvest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_BLK.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_pistolvest.p3d";
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
	class S_VHO_OV_BLK_4: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Black 4";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_os_vest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_OV_BLK.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_os_vest.p3d";
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
	class S_VHO_LV_MTP1: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Light MTP";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_L_Vest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_LV_MTP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_L_Vest.p3d";
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
			hiddenSelections[] = {"camo1"};
		};
	};
	class S_VHO_LV_MTP2: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Light MTP";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_L_Vest2.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo1","camo2"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_LV_MTP.paa","Smill_VHO\Data\S_OV_MTP_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_L_Vest2.p3d";
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
			hiddenSelections[] = {"camo1","camo2"};
		};
	};
	class S_VHO_LV_951: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Light CS95";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_L_Vest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_LV_95.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_L_Vest.p3d";
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
			hiddenSelections[] = {"camo1"};
		};
	};
	class S_VHO_LV_952: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Light CS95";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_L_Vest2.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo1","camo2"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_LV_95.paa","Smill_VHO\Data\S_OV_95_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_L_Vest2.p3d";
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
			hiddenSelections[] = {"camo1","camo2"};
		};
	};
	class S_VHO_LV_OD1: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Light OD";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_L_Vest.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo1"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_LV_OD.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_L_Vest.p3d";
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
			hiddenSelections[] = {"camo1"};
		};
	};
	class S_VHO_LV_OD2: V_HarnessO_brn
	{
		scope = 2;
		displayName = "Smill Light OD";
		picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_1_CA.paa";
		model = "Smill_VHO\S_L_Vest2.p3d";
		author = "Smill";
		hiddenSelections[] = {"camo1","camo2"};
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_LV_OD.paa","Smill_VHO\Data\S_OV_OD_HP.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "Smill_VHO\S_L_Vest2.p3d";
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
			hiddenSelections[] = {"camo1","camo2"};
		};
	};
	class S_VHO_H_MK7_MTP: ItemCore
	{
		scope = 2;
		weaponPoolAvailable = 1;
		displayName = "Smill Helmet MK7 MTP ";
		picture = "\A3\characters_F_Beta\Data\UI\icon_H_I_Helmet_canvas_ca.paa";
		model = "Smill_VHO\S_H_MK7.p3d";
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_H_MK7_MTP.paa"};
		hiddenSelections[] = {"Camo"};
		author = "Smill";
		class ItemInfo: HeadgearItem
		{
			mass = 60;
			uniformmodel = "Smill_VHO\S_H_MK7.p3d";
			modelSides[] = {3,1};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName = "HitHead";
					armor = 6;
					passThrough = 0.1;
				};
			};
			hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_H_MK7_MTP.paa"};
			hiddenSelections[] = {"Camo"};
		};
	};
	class S_VHO_H_MK7_CS95: ItemCore
	{
		scope = 2;
		weaponPoolAvailable = 1;
		displayName = "Smill Helmet MK7 CS95 ";
		picture = "\A3\characters_F_Beta\Data\UI\icon_H_I_Helmet_canvas_ca.paa";
		model = "Smill_VHO\S_H_MK7.p3d";
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_H_MK7_CS95.paa"};
		hiddenSelections[] = {"Camo"};
		author = "Smill";
		class ItemInfo: HeadgearItem
		{
			mass = 60;
			uniformmodel = "Smill_VHO\S_H_MK7.p3d";
			modelSides[] = {3,1};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName = "HitHead";
					armor = 6;
					passThrough = 0.1;
				};
			};
			hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_H_MK7_CS95.paa"};
			hiddenSelections[] = {"Camo"};
		};
	};
	class S_VHO_H_MK7_OD: ItemCore
	{
		scope = 2;
		weaponPoolAvailable = 1;
		displayName = "Smill Helmet MK7 OD ";
		picture = "\A3\characters_F_Beta\Data\UI\icon_H_I_Helmet_canvas_ca.paa";
		model = "Smill_VHO\S_H_MK7.p3d";
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_H_MK7_OD.paa"};
		hiddenSelections[] = {"Camo"};
		author = "Smill";
		class ItemInfo: HeadgearItem
		{
			mass = 60;
			uniformmodel = "Smill_VHO\S_H_MK7.p3d";
			modelSides[] = {3,1};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName = "HitHead";
					armor = 6;
					passThrough = 0.1;
				};
			};
			hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_H_MK7_OD.paa"};
			hiddenSelections[] = {"Camo"};
		};
	};
	class S_VHO_H_MK7_Blk: ItemCore
	{
		scope = 2;
		weaponPoolAvailable = 1;
		displayName = "Smill Helmet MK7 Black ";
		picture = "\A3\characters_F_Beta\Data\UI\icon_H_I_Helmet_canvas_ca.paa";
		model = "Smill_VHO\S_H_MK7.p3d";
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_H_MK7_Blk.paa"};
		hiddenSelections[] = {"Camo"};
		author = "Smill";
		class ItemInfo: HeadgearItem
		{
			mass = 60;
			uniformmodel = "Smill_VHO\S_H_MK7.p3d";
			modelSides[] = {3,1};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName = "HitHead";
					armor = 6;
					passThrough = 0.1;
				};
			};
			hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_H_MK7_Blk.paa"};
			hiddenSelections[] = {"Camo"};
		};
	};
	class S_VHO_H_MK7_Blu: ItemCore
	{
		scope = 2;
		weaponPoolAvailable = 1;
		displayName = "Smill Helmet MK7 Blue ";
		picture = "\A3\characters_F_Beta\Data\UI\icon_H_I_Helmet_canvas_ca.paa";
		model = "Smill_VHO\S_H_MK7.p3d";
		hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_H_MK7_Blu.paa"};
		hiddenSelections[] = {"Camo"};
		author = "Smill";
		class ItemInfo: HeadgearItem
		{
			mass = 60;
			uniformmodel = "Smill_VHO\S_H_MK7.p3d";
			modelSides[] = {3,1};
			class HitpointsProtectionInfo
			{
				class Head
				{
					hitpointName = "HitHead";
					armor = 6;
					passThrough = 0.1;
				};
			};
			hiddenSelectionsTextures[] = {"Smill_VHO\Data\S_H_MK7_Blu.paa"};
			hiddenSelections[] = {"Camo"};
		};
	};
};
class cfgMods
{
	author = "76561197972079921";
	timepacked = "1450545560";
};
//};
