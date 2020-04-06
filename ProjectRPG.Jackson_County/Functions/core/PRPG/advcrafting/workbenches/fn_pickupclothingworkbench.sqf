
if !(cursorTarget == "PRPG_WorkBench_Clothing_01_F") exitWith {};

deletevehicle cursorTarget;
player additem "PRPG_WorkBench_Clothing_item";
