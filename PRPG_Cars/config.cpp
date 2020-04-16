#define _ARMA_

class cfgPatches
{
	class PRPG_Cars
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_data_f","vvv_policia"};
		version = 1;
	};
};



class CfgVehicles {
	class All{};
	class Static: All{};
	class Building: Static{};
	class vvv_dodge_charger_police;
	class vvv_DodgeDurango;
	class ivory_wrx_marked;
	
	class PRPG_Charger_Sheriff_01: vvv_dodge_charger_police 
	{
		displayname = "PRPG Sheriff Charger";
		author = "projec-rpg.de";
		hiddenSelectionsTextures[]=
		{
			"PRPG_Cars\data\sheriff\prpg_charger_sheriff.paa"
		};
	};
	
	class PRPG_Charger_DOC_01: vvv_dodge_charger_police 
	{
		displayname = "PRPG DOC Charger";
		author = "projec-rpg.de";
		hiddenSelectionsTextures[]=
		{
			"PRPG_Cars\data\sheriff\prpg_charger_doc.paa"
		};
	};
	
	/* Andere möglichkeit den Skin ingame zu nutzen verwendet.
	class PRPG_WRX_Sheriff_01: ivory_wrx_marked
	{
		displayname = "PRPG DOC WRX";
		author = "projec-rpg.de";
		hiddenSelectionsTextures[]=
		{
			"PRPG_Cars\data\sheriff\prpg_wrx_sheriff.paa"
		};
	};
	*/

	class PRPG_durango_Sheriff_01: vvv_DodgeDurango 
	{
		displayname = "PRPG Sheriff Durango";
		author = "projec-rpg.de";
		hiddenSelectionsTextures[]=
		{
			"PRPG_Cars\data\sheriff\prpg_rango_sheriff.paa"
		};
	};
	
	class PRPG_Charger_EMS_01: vvv_dodge_charger_police 
	{
		displayname = "PRPG EMS Charger";
		author = "projec-rpg.de";
		hiddenSelectionsTextures[]=
		{
			"PRPG_Cars\data\ems\prpg_charger_ems.paa"
		};
	};
	
	class PRPG_Durango_EMS_01: vvv_DodgeDurango 
	{
		displayname = "PRPG EMS Durango";
		author = "projec-rpg.de";
		hiddenSelectionsTextures[]=
		{
			"PRPG_Cars\data\ems\prpg_rango_ems.paa"
		};
	};
	
};
