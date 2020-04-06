/*
fn_poop.sqf
Written PRPG

Scheißen.....
*/


if (client_poop > 80) then {
			_pooplord = getFatigue player;
			if (!deadPlayer && _pooplord < 1) then {
				player setFatigue _pooplord + 0.01;
				_chance = round (random 95);
   			 	if(_chance == 19) then {
   				  	player say"fart1";
   				};
   				if(_chance == 20) then {
   				  	player say"fart2";
   				};
   				if(_chance == 21) then {
   				  	player say"fart3";
   				};
   				if(_chance == 22 || _chance == 23) then {
   				  	player say"fart4";
   				};
   				if(_chance == 24) then {
   				  	player say"fart5";
   				};
   				if(_chance == 25) then {
   				  	player say"fart6";
   				};
			};
		};
		if (client_poop > 90) then {
			_pooplord = getFatigue player;
			if(!deadPlayer && _pooplord < 1) then {
				player setFatigue _pooplord + 0.01;
			};
		};