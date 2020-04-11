
if !(cursorTarget == "prpg_workbench_car") exitWith {};

deletevehicle cursorTarget;
player additem "prpg_workbench_car_kit";
