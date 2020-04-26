/*
Survival Koil
*/
if(isNil "paycheck") then { paycheck = 0; };
//[] spawn client_fnc_unHaxMe;
//[] spawn client_fnc_randomCheck; -- dopoki nie ma tu wszystkich poprawnych zmiennych to jest to tylko bezuzyteczny spam. oddalam do setVariable.txt
if(paycheck > 300) then { paycheck = 300; };

paycheck = paycheck * mav_ttm_var_paycheckMultiplier;

if(!taskrunning) then {
	_str = format["Du hast $35 erhalten plus $%1 an Boni.",paycheck];
	[_str, true] spawn domsg;
	paycheck = paycheck + 35;
	["Paycheck"] spawn mav_ttm_fnc_addExp;
} else {
	if(myJob == "Fire") then { _addition = player getvariable "Fire"; _addition = _addition + 2; paycheck = paycheck + (40*_addition); };
	if(myJob == "EMS") then { _addition = player getvariable "EMS"; _addition = _addition + 2; paycheck = paycheck + (40*_addition); };
	if(myJob == "Cop") then { _addition = player getvariable "Cop"; _addition = _addition + 2; paycheck = paycheck + (35*_addition); };
	if(myJob == "Mafia") then { _addition = player getvariable "Mafia"; _addition = _addition + 2; paycheck = paycheck + (5*_addition); };
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
	playSound3D ["PRPG_data\sounds\cough1.ogg", player, false, getPosASL player, 3, 1, 45];
};

if( client_hunger < 15 || client_thirst < 15 ) then {
	[7] spawn client_fnc_HudElements;
	if( client_hunger < 15 || client_thirst < 15 ) then {
		playSound3D ["PRPG_data\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
	};
	if( client_poop > 80 ) then {
		playSound3D ["PRPG_data\sounds\cough3.ogg", player, false, getPosASL player, 3, 1, 45];
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
if(client_intox > 0.6) then {
	//["Add",10] spawn client_fnc_dohealth;
	["Du hast zu viel Gesoffen und hast ein Blackout.",false] spawn domsg;
	[player, true, 60, true] call ace_medical_fnc_setUnconscious;
	client_intox = client_intox - 0.2
};


if (!paintballing) then {
	[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];
};

/*
	if(player getVariable  "ACE_isUnconscious" && !life_unconscious) then {

		_action = [
			format["Du bist Ohnmächtig. Mit letzter kraft kannst du dein Handy ziehen. Möchtest du das S.L.F.D. über deine Lage informieren?"],
			"Ohnmächtig",
			"Ja",
			"Nein"
		] call BIS_fnc_guiMessage;

		life_corpse = player;
		if(!isNil "_action" && {_action}) then {

			[] call client_fnc_requestMedic;

			_medicsOnline = {_x != player && {side _x == independent} && {alive _x}} count playableUnits > 0;
			if(!_medicsOnline) then {
				_action = [
				format["Kein Notarzt hat auf deine Nachricht geantwortet."],
				"Niemand da",
				"Ok"
				] call BIS_fnc_guiMessage;
			};

		};
		life_unconscious = true;
	};

	if(!(player getVariable "ACE_isUnconscious") && life_unconscious) then {
		life_unconscious = false;
	};
*/	
