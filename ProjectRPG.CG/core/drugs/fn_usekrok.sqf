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
life_crazy = life_crazy + 600;
sleep 1;
drugs_used = false;

player setAnimSpeedCoef 1.3;

while {!drugs_used} do {
	sleep 5;

	_chance = round (random 100);
	if(_chance < 25) then {
		["Fuck, dieses Zeug ist richtiger Scheiß!", false] spawn domsg;
		[] spawn KK_fnc_forceRagdoll;
	};

	life_crazy = life_crazy - 5;
	if(getAnimSpeedCoef player < 1.2) then { player setAnimSpeedCoef 1.2; };
	if(life_crazy == 300) then { ["Dir gehts garnicht Gut, deine Organe und Venen gehen kaputt!", false] spawn domsg; };
	if(life_crazy == 60) then { ["Dein Herz fühlt sich seltsam an!", false] spawn domsg; };
	if(life_crazy == 15) then { ["Dein Herz schlägt Unregelmäßig!", false] spawn domsg; };
	if(life_crazy == 0) exitWith { ["Dein herz ist stehen geblieben!", false] spawn domsg; };
};

player setAnimSpeedCoef 0.9;
player setDamage 1;

