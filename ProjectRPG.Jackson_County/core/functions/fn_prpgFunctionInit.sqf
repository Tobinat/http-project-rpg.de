/*
	File:	fn_prpgFunctionInit.sqf
	Author:	Marcel "VariatoX" Koch & PRPG Dev Team
	Server:	prpg.de
	
	Description:
	Initialisiert bestimmte Funktionen weil CG-Flaming hurensöhne sind und meinen
	alles in eine einzige Datei schreiben zu müssen. DANKE IHR HURENSÖHNE!!!!!11elf
*/

//TO-DO:: Adding functions

fnc_doHealth = {
	if(deadPlayer) exitwith {};
	
	params [
		["_adjust", "", [""]],
		["_amount", 0, [0]],
		["_source", objNull, [objNull]]
	];
	if(_adjust isEqualTo "") exitWith {systemChat "_adjust is missing!"};
	
	if(_adjust == "Add") then { 
		myHealth = myHealth - _amount;
		if(myHealth > 0.6 && (damage player) > 0) then { 
			player setdamage 0;
			if(_amount > 0.1) then {
				[6] spawn life_fnc_HudElements;	
			};
		};	
	 };
	if(_adjust == "Remove") then {	
		myHealth = myHealth + _amount; 
		if(myHealth > 0.75 && (damage player) < 0.8) then { 
			player setdamage 0.85; 
		};
		
		if(_amount > 0.1) then {
			[5] spawn life_fnc_HudElements;
		};
	};

	if(_adjust == "Set") then { 
		if((damage player) > 0) then {
			player setdamage 0; 
		};
		[6] spawn life_fnc_HudElements; 
		myHealth = _amount; 
	};

	if(myHealth < 0) then { myHealth = 0; };
	
	if(myHealth > 0.99) then { 
		if(myHealth > 1.8) then { myHealth = 1.8; };
		_damage = myHealth - 1;
		_damage = _damage * 10;
		[player,_source,_damage] spawn life_fnc_onPlayerKilled;
	};
	
	if(player getVariable "playerHealth" != myHealth) then {
		player setVariable["playerHealth", myHealth, true];
	};
};