/*
	fn_carSalesman.sqf
*/

if(has_job) exitwith { ["Sie haben bereits einen Job! Drücke Shift + 4 um diesen zu beenden!", false] spawn domsg;};
if(side player != civilian) exitwith {
	["Civilians Only!", false] spawn domsg;
};
if(life_carSalesman) exitWith {
	["Du bist bereits ein Autoverkäufer.", false] spawn domsg; 
};
if(uniform player find "KAEL_SUITS" isEqualTo -1) exitwith {
	["Du benötigst einen Anzug.", false] spawn domsg; 
};

has_job = true;
life_carSalesman = true;
carSalesmanList pushBack player;
publicVariable "carSalesmanList";
player setVariable["Salesman", true, true];
["Du wirst dafür bezalht, dass du innerhalb des Shops dich befindest und erhälst 10% Provision pro Verkauf!", false] spawn domsg; 

_fkit = 45;
while{_fkit > 0 && life_carSalesman && !deadPlayer} do {
	uiSleep 60;

	if(player distance showRoom < 35 || (!isNull objectParent player && life_onTestDrive)) then {
		if(uniform player find "KAEL_SUITS" != -1) then {
			["bank","add", 120] call life_fnc_handleCash;
			["Du wurdest bezahlt: $120", false] spawn domsg; 
		};
	};
	if(player distance showRoom > 35 && !life_onTestDrive) exitwith {
		["Du hast dich zu weit vom Shop entfernt, du wurdest gekündigt.", false] spawn domsg;
	};
	_fkit = _fkit - 1;
	if(_fkit == 5) then {
		["Deine Zahlungen werden in 5 Minuten eingestellt!", false] spawn domsg; 
	};
};

has_job = false;
life_carSalesman = false;
carSalesmanList deleteAt (carSalesmanList find player);
publicVariable "carSalesmanList";
player setVariable["Salesman", nil, true];
["Deine Zahlungen wurden eingestellt.", false] spawn domsg; 
