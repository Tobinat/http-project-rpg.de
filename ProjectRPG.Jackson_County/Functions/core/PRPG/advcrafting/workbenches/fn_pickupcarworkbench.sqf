
if !(cursorObject == "prpg_workbench_car") exitWith {};

deletevehicle cursorTarget;
player additem "prpg_workbench_car_kit";
