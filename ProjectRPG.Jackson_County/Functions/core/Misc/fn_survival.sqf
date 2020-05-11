/*
Survival Koil
*/
if(isNil "paycheck") then { paycheck = 0; };
//[] spawn client_fnc_unHaxMe;
//[] spawn client_fnc_randomCheck; -- dopoki nie ma tu wszystkich poprawnych zmiennych to jest to tylko bezuzyteczny spam. oddalam do setVariable.txt
if(paycheck > 450) then { paycheck = 450; };

paycheck = paycheck * mav_ttm_var_paycheckMultiplier;

if(!taskrunning) then {
	_str = format["Du hast $35 erhalten plus $%1 an Boni.",paycheck];
	[_str, true] spawn domsg;
	paycheck = paycheck + 35;
	["Paycheck"] spawn mav_ttm_fnc_addExp;
} else {
	if(myJob == "Fire") then { _addition = player getvariable "Fire"; paycheck = paycheck + (35*_addition); };
	if(myJob == "EMS") then { _addition = player getvariable "EMS"; paycheck = paycheck + (35*_addition); };
	if(myJob == "Cop") then { _addition = player getvariable "Cop"; paycheck = paycheck + (30*_addition); };
	if(myJob == "Judge") then { _addition = player getVariable "legal"; paycheck = paycheck + (40*_addition); };
	_str = format["Du hast $75 erhalten plus %1 an Boni.",paycheck];
	["Paycheck"] spawn mav_ttm_fnc_addExp;
	[_str, true] spawn domsg;
	paycheck = paycheck + 75;
};



[paycheck] call Client_fnc_sl_addBank_secure;
paycheck = 0;

if(client_marijuana > 0 || client_cocaine > 0 || client_meth > 0 || client_heroin > 0  || client_energy > 0) then { ["Remove","drug",1] call client_fnc_sustain; };

if( client_hunger < 2 || client_thirst < 2 ) exitwith {
	[7] spawn client_fnc_HudElements;
	//["Remove",0.05] call client_fnc_doHealth;
	["Remove","Drink",2] call client_fnc_sustain;
	["Remove","Food",2] call client_fnc_sustain;
	//playSound3D ["PRPG_data\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];
};

if( client_hunger < 15 || client_thirst < 15 ) then {
	[7] spawn client_fnc_HudElements;
	if( client_hunger < 15 || client_thirst < 15 ) then {
		//playSound3D ["PRPG_data\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
	};
	if( client_poop > 80 ) then {
		//playSound3D ["PRPG_data\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
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
	if(_chance > 75 && vehicle player != player) then {
		["Add","battery",5] call client_fnc_sustain;
	};
};
if(client_intox > 0.6) then {
	//["Add",10] spawn client_fnc_dohealth;
	["Du hast zu viel Gesoffen und hast ein Blackout.",false] spawn domsg;
	[player, true, 60, true] call ace_medical_fnc_setUnconscious;
	client_intox = client_intox - 0.2
};


if (!paintballing) then {
	[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];
};