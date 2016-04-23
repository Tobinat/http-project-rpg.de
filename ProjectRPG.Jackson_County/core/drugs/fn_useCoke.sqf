/*
	File: fn_useCoke.sqf
	@Deo	
	Description:
	Use Coke Effect
*/

#include <macro.h>
 
closeDialog 0;
sleep 0.5;
drugs_used = true;
["Du fühlst dich unverwundbar!", false] spawn domsg;
life_crazy = life_crazy + 1000;
life_rip = 1;
sleep 1;
drugs_used = false;

player setAnimSpeedCoef 1.3;

while {!drugs_used} do {
	sleep 5;

	_chance = round (random 100);
	if(_chance < 1) then {
		["Fuck, dieses Zeug ist richtiger Scheiß!", false] spawn domsg;
		[] spawn KK_fnc_forceRagdoll;
	};

	life_crazy = life_crazy - 5;
	if(getAnimSpeedCoef player < 1.2) then { player setAnimSpeedCoef 1.2; };
	if(life_crazy == 30) then { ["Dein Rausch endet in 30 Sekunden!", false] spawn domsg; };
	if(life_crazy == 0) exitwith { ["Dein Rausch ist beendet!", false] spawn domsg; };
};

player setAnimSpeedCoef 0.9;

