/*
	File: fn_useCoke.sqf
	@Deo
	Description:
	Use Coke Effect
*/
closeDialog 0;
sleep 0.5;
["Du fühlst dich unverwundbar!", false] spawn domsg;
_life_crazy = _life_crazy + 1000;
sleep 1;
player setAnimSpeedCoef 1.3;

while {_life_crazy > 0} do {
	sleep 5;
	_life_crazy = _life_crazy - 5;

	_chance = round (random 100);
	if(_chance < 1) then {
		["Shit, diese Scheiße war einfach zu krass!", false] spawn domsg;
		[] spawn KK_fnc_forceRagdoll;
	};

	if(getAnimSpeedCoef player < 1.2) then { player setAnimSpeedCoef 1.2; };
	if(_life_crazy == 30) then { ["Dein Rausch endet in 30 Sekunden!", false] spawn domsg; };
	if(_life_crazy == 0) exitwith { ["Dein Rausch ist beendet!", false] spawn domsg; };
};


player setAnimSpeedCoef 0.9;
