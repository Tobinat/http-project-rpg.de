
if (cursorTarget != "PRPG_WorkBench_Weapon_01_F") exitWith {};

deletevehicle cursorTarget;
player additem "PRPG_WorkBench_Weapon_item";
