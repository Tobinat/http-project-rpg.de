
if !(typeof cursorObject == "prpg_workbench_weapon") exitWith {
	deletevehicle cursorTarget;
	player additem "prpg_workbench_weapon_kit";
};

//deletevehicle cursorTarget;
//player additem "prpg_workbench_weapon_kit";
