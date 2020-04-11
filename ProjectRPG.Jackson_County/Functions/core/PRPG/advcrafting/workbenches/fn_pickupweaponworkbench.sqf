
if !(cursorTarget == "prpg_workbench_weapon") exitWith {};

deletevehicle cursorTarget;
player additem "prpg_workbench_weapon_kit";
