/*
Charge phone to 100
*/
if(cash_in_hand < 25) exitWith { ["Angestellter: Das kostet dich aber 25$!", false] spawn domsg; };
if(life_battery > 99) exitWith { ["Angestellter: Das ist doch schon geladen!", false] spawn domsg; };
["Angestellter: Komm gib her... Ich lade das auf", false] spawn domsg;
uiSleep 3;
["Set",100] call fnc_battery;
["cash","take",25] call life_fnc_handleCash;
playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];
["Fertig! Hier nimm und komm ruhig wieder!", false] spawn domsg;
