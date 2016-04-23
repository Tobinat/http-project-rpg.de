_price = 250;

if(cash_in_hand < _price) exitWith {
	["Du benötigst $250 um mit einer Hure zu schlafen.", false] spawn domsg;
};


if(life_karma < 0) then {
	["Durch dein Karma-Level hast du %%1 gespart!", false] spawn domsg;
	_price = round(_price * 0.9);
	["cash","take",_price] call life_fnc_handleCash;	
} else {
	["cash","take",_price] call life_fnc_handleCash;
};


_chance = round (random 100);

if(life_std == 0) then {
	if(_chance > 96) then {
		player setVariable ["diseaseon",(round (random 7)),true];
		["Du fühlst dich krank.", false] spawn domsg;
		player setfatigue 1;
	};	
};

["Du fühlst dich nach dem Sex super AWESOME - Du kannst deine Waffe nun für 90 Minuten besser kontrollieren.", false] spawn domsg;
life_num = 0;
uiSleep 1;
life_num = 5400;
player setCustomAimCoef 0.35;
player setAnimSpeedCoef 1.1;
player enableFatigue false;
while{life_num > 0} do {
	life_num = life_num - 1;
	uiSleep 1;
	if(deadPlayer) exitWith {
		life_num = 0;
	};
};
player enableFatigue true;
["Dein super AWESOME Gefühl lässt nach.", false] spawn domsg;
player setAnimSpeedCoef 1;
player setCustomAimCoef 1;