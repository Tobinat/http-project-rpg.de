
if !(cursorTarget == "PRPG_WorkBench_Car_01_F") exitWith {};

deletevehicle cursorTarget;
player additem "PRPG_WorkBench_Car_item";
