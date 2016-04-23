/*
Charge phone to 200
*/
if(cash_in_hand < 45) exitWith { ["STORE CLERK: Du hast nicht genügend Geld, ich brauche $45.", false] spawn domsg; };

if(life_battery > 199) exitWith { ["STORE CLERK: Dein Handy ist noch voll.", false] spawn domsg; };

["STORE CLERK: Okay, ich lade es dir eben auf.", false] spawn domsg;
uiSleep 3;
["Set",200] call fnc_battery;
_price = 45;

if(life_karma > 100) then {
		["Durch dein Karma-Level hast du %%1 gespart!", false] spawn domsg;
	_price = round(_price * 0.9);
	["cash","take",_price] call life_fnc_handleCash;
} else {
	["cash","take",_price] call life_fnc_handleCash;	
};


playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];
["Bitte sehr, ist aufgeladen!", false] spawn domsg;