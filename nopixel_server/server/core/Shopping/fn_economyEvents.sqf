/*
    Author: PRPG

    Params: None
    Description: Custom economy events about selling ore's every 1 hour.
    Return: None
    
    _barArray = ["np_copperbar1","np_ironbar1","np_silverbar1","NP_Wood","CG_OilCanister"];
    priceArrayOre = [30,45,75,10,115];

*/

private["_numbers","_selected","_debug"];

diag_log "Wirtschaftsereignisse gestartet!";
_debug = 0;

if (_debug == 1) then {diag_log "Udało mi się wykonać while {true}!";};
        
sleep 180;
if (_debug == 1) then {diag_log " (fn_economyEvents.sqf)";};
        
_numbers = ["0","1","2","3","4","5","6","7","8"];
_selected = _numbers call BIS_fnc_selectRandom;
if (_debug == 1) then {diag_log "Ich habe kein Problem gefunden"; diag_log format["Die gezeichnete Nummer ist: %1", _selected]; };

switch (_selected) do {
    case "0": {priceArrayOre = [110,80,130,20,200,50,60,30,220]; publicVariable "priceArrayOre"; ["Wirtschaft","Bergleute machen einen Streik, in Fabriken fehlt Kupfer für die Produktion!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2];};
    case "1": {priceArrayOre = [50,140,130,20,200,50,60,30,220]; publicVariable "priceArrayOre"; ["Wirtschaft","Wissenschaftler haben herausgefunden, dass die Verfügbarkeit von Eisen um 10% Fallen wird!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2];};
    case "2": {priceArrayOre = [50,80,160,20,200,50,60,30,220]; publicVariable "priceArrayOre"; ["Wirtschaft","Schmuckhersteller kaufen große Mengen Silber!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2];};
    case "3": {priceArrayOre = [50,80,130,80,200,50,60,30,220]; publicVariable "priceArrayOre"; ["Wirtschaft","Die Nachfrage nach Möbeln hat zugenommen! Produktionsunternehmen haben ein Problem mit der Verfügbarkeit von Holz!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2];};
    case "4": {priceArrayOre = [50,80,130,20,600,50,60,30,220]; publicVariable "priceArrayOre"; ["Wirtschaft","Investoren Kaufen größe mengen an Öl. Der Preis pro Barrel Öl verdreifacht sich!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2];};
    case "5": {priceArrayOre = [50,80,130,20,200,50,60,30,220]; publicVariable "priceArrayOre"; ["Wirtschaft","Die Marktpreise sind zum Standard zurückgekehrt!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2];};
    case "6": {priceArrayOre = [50,80,130,20,200,50,60,50,220]; publicVariable "priceArrayOre"; ["Wirtschaft","Chinesische Firmen kaufen große mengen Glas!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2];};
    case "7": {priceArrayOre = [50,80,130,20,200,50,95,30,220]; publicVariable "priceArrayOre"; ["Wirtschaft","In Colorado wird ein neues Atomkraftwerk gebaut. Dies benötigt Blei.",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2];};
    case "8": {priceArrayOre = [50,80,130,20,200,90,60,30,220]; publicVariable "priceArrayOre"; ["Wirtschaft","Fahrzeughersteller haben eine große Nachfrage an Aluminium!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2];};
    default {priceArrayOre = [50,80,130,20,200,50,60,30,220]; publicVariable "priceArrayOre";};
};
if (_debug == 1) then {diag_log "Ich habe kein Problem gefunden";};