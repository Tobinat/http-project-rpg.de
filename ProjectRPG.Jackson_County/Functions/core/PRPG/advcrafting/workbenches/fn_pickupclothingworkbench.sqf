
if !(cursorTarget == "prpg_workbench_clothing") exitWith {};

deletevehicle cursorTarget;
player additem "prpg_workbench_clothing_kit";
