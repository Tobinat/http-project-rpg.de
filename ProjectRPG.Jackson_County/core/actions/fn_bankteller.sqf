/*
File: bank teller payments
*/

if(has_job) exitwith { ["Du hast bereits einen Job! Drücke Shift + 4 um diesen zu beenden!", false] spawn domsg;};

if(side player != civilian) exitwith { ["Nur für Zivilisten!", false] spawn domsg;  };
if(life_bankteller) exitWith {
["Du bist bereits ein Bank Angestellter.", false] spawn domsg; 
};
if(uniform player find "KAEL_SUITS" isEqualTo -1) exitwith {
	["Du benötigst einen Anzug!", false] spawn domsg; 
};

has_job = true;
life_bankteller = true;


["Du wurdest dafür bezahlt, dass du innerhalb der Bank dich aufhälst! Du bist nun ein Bankautomat!", false] spawn domsg; 

_fkit = 45;
player setVariable["ATM_MAN", true, true];
while{_fkit > 0 && life_bankteller } do {
	uiSleep 60;

	if(isNull objectParent player && (player distance (getMarkerPos "bank_signup")) < 21) then {
		if(uniform player find "KAEL_SUITS" != -1) then
		{
			["bank","add", 600] call life_fnc_handleCash;
			["Du wurdest extra bezahlt: $600", false] spawn domsg; 
		};
	};
	if((player distance (getMarkerPos "fed_reserve")) > 30) exitwith {

	};
	_fkit = _fkit - 1;
	if(_fkit == 5) then {
		["Deine Bankzahlungen stoppen in 5 Minuten.", false] spawn domsg; 
	};
};
life_bankteller = false;
player setVariable["ATM_MAN", nil, true];


["Deine Bankzahlungen wurden eingestellt!", false] spawn domsg; 

has_job = false;