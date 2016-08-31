////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 5.24
//Produced on Sat Oct 17 20:35:20 2015 : Created on Sat Oct 17 20:35:20 2015
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class prpg_police_uni : config.bin{
class CfgPatches
{
	class prpg
	{
		units[] = {"B_Competitor_F"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Characters_F"};
	};
};
class CfgVehicles
{
	class B_Competitor_F;
	class pRPG_Recruit: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Recruit1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\prpg_recruit.paa"};
		displayName = "pRPG Recruit Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Traffic: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Traffic1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\prpg_traffic.paa"};
		displayName = "pRPG Traffic Enforcer";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Officer: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Officer1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_officer.paa"};
		displayName = "pRPG Officer Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Detective: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Detective1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_detective.paa"};
		displayName = "pRPG Detective Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Sergeant: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Sergeant1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_sergeant.paa"};
		displayName = "pRPG Sergeant Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Lieutenant: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pPRG_Lieutenant1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_lieutenant.paa"};
		displayName = "pRPG Lieutenant Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Captain: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Captain1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_captain.paa"};
		displayName = "pRPG Captain Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Commander: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Commander1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_commander.paa"};
		displayName = "pRPG Commander Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_AChief: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_AChief1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_achief.paa"};
		displayName = "pRPG Assitant Chief";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Chief: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Chief1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_chief.paa"};
		displayName = "pRPG Chief Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Justice: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Justice1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_justice.paa"};
		displayName = "pRPG Department Of Justice";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Deputy: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Deputy1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_deputy.paa"};
		displayName = "pRPG Deputy Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Sheriff: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Sheriff1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_Sheriff.paa"};
		displayName = "pRPG Sheriff Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Marshal: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Marshal1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_Marshal.paa"};
		displayName = "pRPG U.S. Marshal Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_State_1: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_State1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_State_officer.paa"};
		displayName = "pRPG State Police Officer";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_State_2: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_State2";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_police_uni\Data\pRPG_State_Sergeant.paa"};
		displayName = "pRPG State Police Sergeant";
		author = "ProjectRPG/PhilippSchlueter";
	};
};
class cfgWeapons
{
	class ItemCore;
	class Uniform_Base;
	class UniformItem;
	class ItemInfo;
	class pRPG_Recruit1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Recruit Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Recruit";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};
	class pRPG_Traffic1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Traffic Enforcer";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "prpg_traffic";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};
	class pRPG_Officer1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Officer Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Officer";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};
	class pRPG_Detective1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Detective Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Detective";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};
	class pRPG_Sergeant1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Sergeant Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Sergeant";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};
	class pPRG_Lieutenant1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Lieutenant Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Lieutenant";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};
	class pRPG_Captain1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Captain Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Captain";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	};
	class pRPG_Commander1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Commander Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Commander";
			containerClass = "Supply100";
			mass = 0;
			armor = 20;
		};
	};
	class pRPG_AChief1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Assitant Chief";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_AChief";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class pRPG_Chief1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Chief Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Chief";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class pRPG_Justice1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Department Of Justice";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Justice";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class pRPG_Deputy1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Deputy Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Deputy";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class pRPG_Sheriff1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG Sheriff Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Sheriff";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class pRPG_Marshal1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG U.S. Marshal Uniform";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Marshal";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class pRPG_State1: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG State Police Officer";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_State_1";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class pRPG_State2: Uniform_Base
	{
		scope = 2;
		displayName = "pRPG State Police Sergeant";
		picture = "prpg_police_uni\Data\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_State_2";
			containerClass = "Supply100";
			mass = 0;
		};
	};
};
class cfgMods
{
	author = "Jeff J. Jefferson";
	timepacked = "1445114120";
};
//};
