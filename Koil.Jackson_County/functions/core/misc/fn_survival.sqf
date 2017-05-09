/*
Survival Koil
*/
if(isNil "paycheck") then { paycheck = 0; };
	
	if(paycheck > 280) then { paycheck = 280; };

if(!taskrunning) then {
	hint format["You just got paid a welfare check of $35 with %1 in bonuses",paycheck];	
	paycheck = paycheck + 35;
} else {
	if(myJob == "Fire") then { _addition = player getvariable "Fire"; _addition = _addition + 2; paycheck = paycheck + (25*_addition); };
	if(myJob == "EMS") then { _addition = player getvariable "EMS"; _addition = _addition + 2; paycheck = paycheck + (25*_addition); };
	if(myJob == "Cop") then { _addition = player getvariable "Cop"; _addition = _addition + 2; paycheck = paycheck + (25*_addition); };	
	if(myJob == "Mafia") then { _addition = player getvariable "Mafia"; _addition = _addition + 2; paycheck = paycheck + (5*_addition); };	
	hint format["You just got paid $75 with %1 in bonuses",paycheck];
	paycheck = paycheck + 75;
};



[paycheck] call Client_fnc_addBank;
paycheck = 0;

if(client_marijuana > 0 || client_cocaine > 0 || client_meth > 0 || client_heroin > 0  || client_energy > 0) then { ["Remove","drug",1] call client_fnc_sustain; };

if( client_hunger < 2 || client_thirst < 2 ) exitwith { 
	[7] spawn client_fnc_HudElements;		
	["Remove",0.05] call client_fnc_doHealth; 
	["Remove","Drink",2] call client_fnc_sustain; 
	["Remove","Food",2] call client_fnc_sustain;
	playSound3D ["cg_sndimg\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45]; 
};

if( client_hunger < 15 || client_thirst < 15 ) then { 
	[7] spawn client_fnc_HudElements;	
	if( client_hunger < 15 || client_thirst < 15 ) then { 
		playSound3D ["cg_sndimg\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
	};
	if( client_poop > 80 ) then { 
		playSound3D ["cg_sndimg\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
	};	
};	

if(!ClientArrested) then { 
	_chance = round (random 100);
	if(_chance > 35) then {
		["Add","Karma",1] call client_fnc_sustain;
	}
;	_chance = round (random 100);
	if(_chance > 35) then {	
		["Remove","Drink",2] call client_fnc_sustain; 
	};
	_chance = round (random 100);
	if(_chance > 35) then {		
		["Remove","Food",2] call client_fnc_sustain;
	};
	_chance = round (random 100);
	if(_chance > 25 && vehicle player == player) then {		
		["Remove","battery",5] call client_fnc_sustain;
	};
};

if (!paintballing) then {
	[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];
};