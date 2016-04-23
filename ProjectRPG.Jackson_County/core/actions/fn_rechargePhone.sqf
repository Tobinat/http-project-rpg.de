/*
Charge phone to 3 for free
*/
["STORE CLERK: Okay, lass mich das kurz aufladen.", false] spawn domsg;
if(life_battery > 34) exitWith {["STORE CLERK: Dein Akku ist noch voll.", false] spawn domsg; };
uiSleep 3;
["Set",35] call fnc_battery;
playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];
["Dein Handy ist jetzt aufgeladen - Kommen Sie bald wieder!", false] spawn domsg;
