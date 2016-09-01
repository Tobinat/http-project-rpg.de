/*
Search Words: 
RechargeStand
Recharge Stand
*/
_myposy = getPos player;

["Handy laden...", false] spawn domsg;

if(life_charging == 1) exitwith { 
["Bereits aufgeladen...", false] spawn domsg;
};
life_charging = 1;
while {life_charging == 1} do {
	uiSleep 0.2;
	if(life_battery > 99) exitwith { 
	life_charging = 2;
	["Sie können nicht mehr aufladen...", false] spawn domsg;
	};
	if( player distance _myposy > 1 ) exitwith { 
			["Sie sind zu weit von der Ladestation entfernt", false] spawn domsg;
			life_charging = 2;
	};
	["Add",2] call fnc_battery;
};
