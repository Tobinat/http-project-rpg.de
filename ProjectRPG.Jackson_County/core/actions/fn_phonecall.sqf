/*
phone call
phonecall
*/
if(cash_in_bank < 50) exitWith { ["Ihr aktuelles Guthaben befindet sich unter 50$", false] spawn domsg; };

["bank","take", 50] call life_fnc_handleCash;
[] call fnc_opentablet;