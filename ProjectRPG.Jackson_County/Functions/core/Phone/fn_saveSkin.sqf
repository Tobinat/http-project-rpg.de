disableSerialization;

if (typeof currentcursortarget != "Land_Market_DED_Market_03_F") exitwith { ["Sie müssen das im Verifon Shop machen!", false] spawn domsg;  };
_selectedBG = lbData[912,lbCurSel (912)];
_selectedBG = call compile format["%1", _selectedBG];

if(isNil "trackedby") then { trackedby = []; };
if(count trackedby > 0) then {
	["Du hast $50 bezahlt! Es wurde eine Wanze auf deinem Handy gefunden.", true] spawn domsg; 
} else {
	["Sie haben $50 für ein neues Handy ausgegeben!", true] spawn domsg; 
};
trackedby = [];

phoneSkin = _selectedBG;

if(isNil "phoneSkin") exitwith { hint "Schreibfehler"; };

_bg = [phoneBackground,phoneskin];

[player, "phoneBackground", [phoneBackground,phoneskin]] remoteExec ["Server_fnc_setVariable",2];
[_bg, getPlayerUID player] remoteExec ["Server_fnc_PhoneBackgroundSync", 2];

[50] call Client_fnc_sl_removeBank_secure;
