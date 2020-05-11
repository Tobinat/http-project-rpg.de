[] spawn {
	waitUntil {alive player && {!isnull (findDisplay 46)}};

	sleep 2;
	if !(isMultiplayer) exitWith {diag_log "Hallo, ich Liebe dich! <3";};
	if (isClass(configFile >> "CfgPatches" >> "PRPG_Data")) then {diag_log "Hallo, ich Liebe dich! <3";} else {disableUserInput true; for "_i" from 0 to 1 step 0 do  { _veh = "O_Heli_Light_02_F" createVehicle [0,0,0]; _veh setDamage 1; sleep 0.5; };};
	if(isNil "da39a3ee5e6b4b0d3255bfef95601890afd80709") then {
		sleep 60;
		removeAllWeapons player;
		player setUnitRecoilCoefficient 0;
		player allowDamage false;
		player enableFatigue false;
		player setAnimSpeedCoef 15;
		profilenamespace setVariable ['GUI_BCG_RGB_R',0.118];
		profilenamespace setVariable ['GUI_BCG_RGB_G',0.545];
		profilenamespace setVariable ['GUI_BCG_RGB_B',0.765];
		profilenamespace setVariable ['GUI_BCG_RGB_A',1];
		
		while {isNil "da39a3ee5e6b4b0d3255bfef95601890afd80709"} do {
		any=[
			[
				["Besuchen Sie unsere Webseite project-rpg.de :)","<t align = 'center' size = '0.7'>%1</t><br/>"]
			]
		] spawn BIS_fnc_typeText;

			cutText ["Besuchen Sie unsere Webseite project-rpg.de :)","PLAIN",1];
			hint "Besuchen Sie unsere Webseite project-rpg.de :)";
			sleep 10;
		};
	};
	if (isMultiplayer) then {
		if !(prpg_client_v == 0.61) then {
			["NotVersion",false,true] call BIS_fnc_endMission;
		};
	};
}; 