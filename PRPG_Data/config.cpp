#define _ARMA_

class cfgPatches
{
	class PRPG_Data
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_data_f"};
		version = 1;
	};
};
class cfgMods
{
	author = "76561198141517593";
	timepacked = "1461584614";
};

class CfgMagazines
{
	class InventoryItem_Base_F;
	class BoxItem: InventoryItem_Base_F
	{
		type=620;
		allowedSlots[]={901};
		mass=16;
	};
	class Default;
	class ItemCore: Default
	{
		type=131072;
		model="\A3\weapons_F\ammo\mag_univ.p3d";
		picture="\A3\Weapons_F\Data\clear_empty.paa";
		muzzles[]={};
		class Armory
		{
			disabled=1;
		};
	};
	#include "\PRPG_Data\cfgItems.hpp"
};



class CfgVehicles {
	class All{};
	class Static: All{};
	class Building: Static{};
	class ReammoBox;
	class ThingX;
	class B_Competitor_F;
	class kif_chest_base: ThingX
	{
		animated=0;
		scope=0;
		scopeCurator=0;
		editorCategory="EdCat_Supplies";
		editorSubcategory="EdSubcat_Storage";
		icon="iconCrate";
		model="\A3\Weapons_f\dummyweapon.p3d";
		accuracy=0.2;
		typicalCargo[]={};
		vehicleClass="plp_containers";
		destrType="DestructNo";
		class DestructionEffects
		{
		};
		maximumLoad=500;
		transportMaxWeapons=5;
		transportMaxMagazines=100;
		transportMaxBackpacks=2;
		transportAmmo=0;
		transportRepair=0;
		transportFuel=0;
		supplyRadius=1.4;
		cost=0;
		armor=200;
		mapSize=2;
		waterLinearDampingCoefY=1;
		waterAngularDampingCoef=0.1;
	};
	class Land_Workbench_01_F;
	class Billboard_04_base_F;
    #include "\PRPG_Data\cfgHouseStorages.hpp"
	#include "\PRPG_Data\cfgBuildings.hpp"
	#include "\PRPG_Data\cfgBillboards.hpp"
};

#include "\PRPG_Data\cfgSounds.hpp"
//#include "\PRPG_Data\cfgMainMenu.hpp"

class cfgWeapons {
	class ItemCore;
	class ItemInfo;
	class ItemRadio;
	#include "\PRPG_Data\cfgItemsWeapons.hpp"
	#include "\PRPG_Data\CfgRadio.hpp"
};
