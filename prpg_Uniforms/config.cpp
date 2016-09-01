////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 5.24
//Produced on Mon Nov 30 05:03:05 2015 : Created on Mon Nov 30 05:03:05 2015
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class prpg_uniforms : config.bin{
class BIS_AddonInfo
{
	author = "76561197995364867";
	timepacked = "1443044289";
};
class defaultUserActions;
class DefaultEventhandlers;
class CfgPatches
{
	class prpg_uniforms
	{
		units[] = {"pRPG_Praktikant","pRPG_FireCaptain","pRPG_SquadCommand","pRPG_DepCommand","pRPG_Lieutenant","pRPG_Lieutenant_O","pRPG_Command","pRPG_Command_O","pRPG_M_Chief","pRPG_M_Chief_O","pRPG_Employee","pRPG_Candidate","LS_Marshal_Jacket1","LS_Marshal_Jacket2","DOJ_Jacket1","DOJ_Jacket2","RF_EMS_1","RF_ASU_2","RF_WING_3","RF_EMSWING_4"};
		weapons[] = {"pRPG_Employee1","pRPG_FireCaptain1","pRPG_SquadCommand1","pRPG_DepCommand1","prpg_twitch_cap","pRPG_Lieutenant1","pRPG_Lieutenant2","pRPG_Command1","pRPG_Command2","pRPG_M_Chief1","pRPG_M_Chief2","pRPG_Praktikant1","pRPG_Candidate1","LS_Marshal_Jacket","DOJ_Jacket_1","DOJ_Jacket_2","LS_Marshal_Jacket3","LSMS_cap_blk","LSMS_cap_blue","ACE_helmet","wing_helmet","RF_EMS_1","RF_ASU_2","RF_WING_3","RF_EMSWING_4"};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Characters_F","A3_Characters_F_Beta","A3_Characters_F_Gamma","A3_Characters_F_EPA","A3_Characters_F_EPB"};
	};
};
class CfgVehicles
{
	class B_Competitor_F;
	class B_Soldier_base_F;
	class B_helicrew_F;
	class LS_Marshal_Jacket1: B_Soldier_base_F
	{
		_generalMacro = "B_Soldier_F";
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "LS Marshal Jacket";
		nakedUniform = "U_BasicBody";
		model = "\tryk_unit\data\PCUs_G.p3d";
		uniformClass = "LS_Marshal_Jacket Blue";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","prpg_uniforms\data\lsms_co.paa"};
	};
	class LS_Marshal_Jacket2: B_Soldier_base_F
	{
		_generalMacro = "B_Soldier_F";
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "LS Marshal Jacket Black";
		nakedUniform = "U_BasicBody";
		model = "\tryk_unit\data\PCUs_G.p3d";
		uniformClass = "LS_Marshal_Jacket3";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","prpg_uniforms\data\lsmsblk_co.paa"};
	};
	class DOJ_Jacket1: B_Soldier_base_F
	{
		_generalMacro = "B_Soldier_F";
		scope = 2;
		author = "Philipp Schlueter @PRPG";
		displayName = "DOJ Jacket Schlüddah";
		nakedUniform = "U_BasicBody";
		model = "\tryk_unit\data\PCUs_G.p3d";
		uniformClass = "DOJ_Jacket_1";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","prpg_uniforms\data\doj_co.paa"};
	};
	class DOJ_Jacket2: B_Soldier_base_F
	{
		_generalMacro = "B_Soldier_F";
		scope = 2;
		author = "Philipp Schlueter @PRPG";
		displayName = "DOJ Jacket Black";
		nakedUniform = "U_BasicBody";
		model = "\tryk_unit\data\PCUs_G.p3d";
		uniformClass = "DOJ_Jacket_2";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","prpg_uniforms\data\doj2_co.paa"};
	};
	class RF_EMS_1: B_helicrew_F
	{
		_generalMacro = "B_helicrew_F";
		scope = 2;
		displayName = "ASU Pilot";
		nakedUniform = "U_BasicBody";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		uniformClass = "RF_EMS_1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\EMS_Pilot.paa"};
	};
	class RF_ASU_2: B_helicrew_F
	{
		_generalMacro = "B_helicrew_F";
		scope = 2;
		displayName = "ASU Pilot";
		nakedUniform = "U_BasicBody";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		uniformClass = "RF_ASU_2";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\ASU_Pilot.paa"};
	};
	class RF_WING_3: B_helicrew_F
	{
		_generalMacro = "B_helicrew_F";
		scope = 2;
		displayName = "ASU Wing Commander Pilot";
		nakedUniform = "U_BasicBody";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		uniformClass = "RF_WING_3";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\WING_Pilot.paa"};
	};
	class RF_EMSWING_4: B_helicrew_F
	{
		_generalMacro = "B_helicrew_F";
		scope = 2;
		displayName = "EMS Wing Commander Pilot";
		nakedUniform = "U_BasicBody";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		uniformClass = "RF_WING_3";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\EMS_Wing.paa"};
	};
	class pRPG_Praktikant: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Praktikant1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_praktikant_polo.paa"};
		displayName = "R.F.A Praktikant Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Candidate: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Candidate1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_candidate_polo.paa"};
		displayName = "R.F.A Candidate Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Employee: B_helicrew_F
	{
		_generalMacro = "B_helicrew_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		uniformClass = "pRPG_Employee1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_employee_overall.paa"};
		displayName = "R.F.A Employee Overall";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Lieutenant: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Lieutenant1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_lieutenant_polo.paa"};
		displayName = "R.F.A Lieutenant Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_DepCommand: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_DepCommand1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_depcommand_polo.paa"};
		displayName = "pRPG SLFD Dep. Commander";
		author = "ProjectRPG/PhilippSchlueter & Zottel";
	};
	class pRPG_SquadCommand: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_SquadCommand1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_squadcommand_polo.paa"};
		displayName = "pRPG SLFD Squad Commander";
		author = "ProjectRPG/PhilippSchlueter & Zottel";
	};
	class pRPG_FireCaptain: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_FireCaptain1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_fdcaptain_polo.paa"};
		displayName = "pRPG SLFD Captain";
		author = "ProjectRPG/PhilippSchlueter & Zottel";
	};
		class pRPG_Lieutenant_O: B_helicrew_F
	{
		_generalMacro = "B_helicrew_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		uniformClass = "pRPG_Lieutenant2";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_lieutenant_overall.paa"};
		displayName = "R.F.A Lieutenant Overall";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_Command: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_Command1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_chief_command_polo.paa"};
		displayName = "R.F.A Command Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
		class pRPG_Command_O: B_helicrew_F
	{
		_generalMacro = "B_helicrew_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		uniformClass = "pRPG_Command2";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_chief_command_overall.paa"};
		displayName = "R.F.A Command Overall";
		author = "ProjectRPG/PhilippSchlueter";
	};
	class pRPG_M_Chief: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "pRPG_M_Chief1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_chief_polo.paa"};
		displayName = "R.F.A Chief Uniform";
		author = "ProjectRPG/PhilippSchlueter";
	};
		class pRPG_M_Chief_O: B_helicrew_F
	{
		_generalMacro = "B_helicrew_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		uniformClass = "pRPG_M_Chief2";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\prpg_chief_overall.paa"};
		displayName = "R.F.A Command Overall";
		author = "ProjectRPG/PhilippSchlueter";
	};
};
class cfgWeapons
{
	class Uniform_Base;
	class U_B_HeliPilotCoveralls;
	class InventoryItem_Base_F;
	class UniformItem;
	class ItemInfo;
	class ItemCore;
	class HeadgearItem;
	class B_Competitor_F;
	class LS_Marshal_Jacket: Uniform_Base
	{
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "LS Marshal Jacket Blue";
		picture = "\A3\characters_f\data\ui\icon_U_C_miller_ca.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","prpg_uniforms\data\lsms_co.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "LS_Marshal_Jacket1";
			containerClass = "Supply100";
			mass = 0;
		};
	};
		class DOJ_Jacket_1: Uniform_Base
	{
		scope = 2;
		author = "Philipp Schlueter @PRPG";
		displayName = "DOJ Jacket Schlüddah";
		picture = "\A3\characters_f\data\ui\icon_U_C_miller_ca.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","prpg_uniforms\data\doj_co.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "DOJ_Jacket1";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	
		class DOJ_Jacket_2: Uniform_Base
	{
		scope = 2;
		author = "Philipp Schlueter @PRPG";
		displayName = "DOJ Jacket Black";
		picture = "\A3\characters_f\data\ui\icon_U_C_miller_ca.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","prpg_uniforms\data\doj2_co.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "DOJ_Jacket2";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class LS_Marshal_Jacket3: Uniform_Base
	{
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "LS Marshal Jacket Black";
		picture = "\A3\characters_f\data\ui\icon_U_C_miller_ca.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		hiddenSelections[] = {"camo","camo3"};
		hiddenSelectionsTextures[] = {"tryk_unit\data\fr\tan_co.paa","prpg_uniforms\data\lsmsblk_co.paa"};
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "LS_Marshal_Jacket2";
			containerClass = "Supply100";
			mass = 0;
		};
	};
	class LSMS_cap_blk: ItemCore
	{
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "LS Marshal Cap Black";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\LSMScap_blk.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};
	class LSMS_cap_blue: ItemCore
	{
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "LS Marshal Cap Blue";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\LSMScap_blue.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};
	class ACE_helmet: ItemCore
	{
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "Police ACE helmet";
		model = "\a3\characters_f\Common\headgear_helmet_heli_shield.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\ASQHelmet.paa"};
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
		displayName = "Police Wing Commander helmet";
		model = "\a3\characters_f\Common\headgear_helmet_heli.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\ASQHelmet2.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 30;
			uniformModel = "\a3\characters_f\Common\headgear_helmet_heli.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};
	class RF_EMS_1: U_B_HeliPilotCoveralls
	{
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "EMS Pilot";
		picture = "-";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "RF_EMS_1";
			containerClass = "Supply120";
			mass = 0;
		};
	};
	class RF_ASU_2: U_B_HeliPilotCoveralls
	{
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "ASU Pilot";
		picture = "-";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "RF_ASU_2";
			containerClass = "Supply120";
			mass = 0;
		};
	};
	class RF_WING_3: U_B_HeliPilotCoveralls
	{
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "ASU Wing Commander Pilot";
		picture = "-";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "RF_WING_3";
			containerClass = "Supply120";
			mass = 0;
		};
	};
	class RF_EMSWING_4: U_B_HeliPilotCoveralls
	{
		scope = 2;
		author = "Rory Flannigan For CG";
		displayName = "EMS Wing Commander Pilot";
		picture = "-";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "RF_EMSWING_4";
			containerClass = "Supply120";
			mass = 0;
		};
	};
	class pRPG_Candidate1: Uniform_Base
	{
		scope = 2;
		displayName = "R.F.A Candidate Uniform";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Candidate";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_Praktikant1: Uniform_Base
	{
		scope = 2;
		displayName = "R.F.A Praktikant Uniform";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Praktikant";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_Employee1: Uniform_Base
	{
		scope = 2;
		displayName = "R.F.A Employee Uniform";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Employee";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_Lieutenant1: Uniform_Base
	{
		scope = 2;
		displayName = "R.F.A Lieutenant Uniform";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Lieutenant";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_Lieutenant2: Uniform_Base
	{
		scope = 2;
		displayName = "R.F.A Lieutenant Overall";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Lieutenant_O";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_Command1: Uniform_Base
	{
		scope = 2;
		displayName = "R.F.A Command Uniform";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Command";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_SquadCommand1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SLFD Squad Commander";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_SquadCommand";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_DepCommand1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SLFD Dep. Commander";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_DepCommand";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_FireCaptain1: Uniform_Base
	{
		scope = 2;
		displayName = "PRPG SLFD Captain";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_FireCaptain";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_Command2: Uniform_Base
	{
		scope = 2;
		displayName = "R.F.A Command Overall";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_Command_O";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_M_Chief1: Uniform_Base
	{
		scope = 2;
		displayName = "R.F.A Chief Uniform";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_M_Chief";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
	class pRPG_M_Chief2: Uniform_Base
	{
		scope = 2;
		displayName = "R.F.A Chief Overall";
		picture = "prpg_uniforms\ui\prpg_logo.paa";
		model = "\A3\Characters_F\Common\coveralls.p3d";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "pRPG_M_Chief_O";
			containerClass = "Supply100";
			mass = 0;
			armor = 40;
		};
	}
		class prpg_twitch_cap: ItemCore
	{
		scope = 2;
		author = "Alex McClaine @PRPG";
		displayName = "PRPG Twitch Cap";
		model = "\a3\characters_f\Common\capb.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"prpg_uniforms\data\twitch.paa"};
		class ItemInfo: HeadgearItem
		{
			mass = 20;
			armor = 10;
			uniformModel = "\a3\characters_f\Common\capb.p3d";
			modelSides[] = {3,1};
			hiddenSelections[] = {"camo"};
		};
	};
	
};
//};





