
if !(typeof cursorObject == "prpg_workbench_normal") exitWith {};

deletevehicle cursorTarget;
player additem "prpg_workbench_normal_kit";
