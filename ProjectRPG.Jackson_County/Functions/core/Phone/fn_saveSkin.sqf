disableSerialization;

if (typeof currentcursortarget != "Land_Market_DED_Market_03_F") exitwith { ["Musisz to zrobic w sklepie Verizon!", false] spawn domsg;  };
_selectedBG = lbData[912,lbCurSel (912)];
_selectedBG = call compile format["%1", _selectedBG];

if(isNil "trackedby") then { trackedby = []; };
if(count trackedby > 0) then {
	["Zaplaciles $50! Pluskwa została znaleziona w Twoim telefonie.", true] spawn domsg; 
} else {
	["Zaplaciles $50 za swój nowy telefon!", true] spawn domsg; 
};
trackedby = [];

phoneSkin = _selectedBG;

if(isNil "phoneSkin") exitwith { hint "Błąd zapisu"; };

_bg = [phoneBackground,phoneskin];

[player, "phoneBackground", [phoneBackground,phoneskin]] remoteExec ["Server_fnc_setVariable",2];
[_bg, getPlayerUID player] remoteExec ["Server_fnc_PhoneBackgroundSync", 2];

[50] call Client_fnc_sl_removeBank_secure;
