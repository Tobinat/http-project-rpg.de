disableSerialization;

if (typeof currentcursortarget != "Land_Market_DED_Market_03_F") exitwith { ["You must do this at a Verizon Store!", false] spawn domsg;  };
_selectedBG = lbData[912,lbCurSel (912)];
_selectedBG = call compile format["%1", _selectedBG];

if(isNil "trackedby") then { trackedby = []; };
if(count trackedby > 0) then {
	["You were charged $50! A phone tracing device was found in your phone.", true] spawn domsg; 
} else {
	["You were charged $50 for your new phone!", true] spawn domsg; 
};
trackedby = [];

phoneSkin = _selectedBG;

if(isNil "phoneSkin") exitwith { hint "Error saving"; };

[player, "phoneBackground", [phoneBackground,phoneskin]] remoteExec ["Server_fnc_setVariable",2];

[50] call Client_fnc_removeBank;
