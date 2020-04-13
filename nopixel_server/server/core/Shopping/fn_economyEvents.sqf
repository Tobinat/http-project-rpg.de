/*
    Author: KifKick
    Date: 22.01.2017 (Non-retard Units)

    Params: None
    Description: Custom economy events about selling ore's every 1 hour.
    Return: None
    
    _barArray = ["np_copperbar1","np_ironbar1","np_silverbar1","NP_Wood","CG_OilCanister"];
    priceArrayOre = [30,45,75,10,115];

    ["Informacja","Tekst",[255,69,0,1],""] remoteExec ["Client_fnc_showNotification", -2];

*/

private["_numbers","_selected","_debug"];

diag_log "Uruchomiono economyEvents!";
_debug = 0;

if (_debug == 1) then {diag_log "Udało mi się wykonać while {true}!";};
        
sleep 180;
if (_debug == 1) then {diag_log "Pomyślnie wykonałem sleep 1800 (fn_economyEvents.sqf)";};
        
_numbers = ["0","1","2","3","4","5"];
_selected = _numbers call BIS_fnc_selectRandom;
if (_debug == 1) then {diag_log "Ich habe kein Problem gefunden"; diag_log format["Die gezeichnete Nummer ist: %1", _selected];};

switch (_selected) do {
    case "0": {priceArrayOre = [65,45,75,10,115]; publicVariable "priceArrayOre"; ["Wirtschaft","Bergleute machen einen Streik, in Fabriken fehlt Kupfer für die Produktion!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERVER: Economy Event wurde erfolgreich implementiert: Copper"; };
    case "1": {priceArrayOre = [30,75,75,10,115]; publicVariable "priceArrayOre"; ["Wirtschaft","Wissenschaftler haben herausgefunden, dass die Verfügbarkeit von Eisen um 10% Fallen wird!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERVER: Economy Event wurde erfolgreich implementiert: Iron";};
    case "2": {priceArrayOre = [30,45,90,10,115]; publicVariable "priceArrayOre"; ["Wirtschaft","Schmuckhersteller kaufen große Mengen Silber!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERVER: Economy Event wurde erfolgreich implementiert: Silver";};
    case "3": {priceArrayOre = [30,45,75,40,115]; publicVariable "priceArrayOre"; ["Wirtschaft","Die Nachfrage nach Möbeln hat zugenommen! Produktionsunternehmen haben ein Problem mit der Verfügbarkeit von Holz!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERVER: Economy Event wurde erfolgreich implementiert: Wood";};
    case "4": {priceArrayOre = [30,45,75,10,300]; publicVariable "priceArrayOre"; ["Wirtschaft","Investoren Kaufen größe mengen an Öl. Der Preis pro Barrel Öl verdreifacht sich!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERVER: Economy Event wurde erfolgreich implementiert: Oil";};
    case "5": {priceArrayOre = [30,45,75,10,115]; publicVariable "priceArrayOre"; ["Wirtschaft","Die Marktpreise sind zum Standard zurückgekehrt!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERVER: Economy Event wurde erfolgreich implementiert: resetToNormal";};
    default {priceArrayOre = [30,45,75,10,115]; publicVariable "priceArrayOre"; diag_log "Switch to default [30,45,75,10,115] (fn_economyEvents.sqf)";}
};
if (_debug == 1) then {diag_log "Ich habe kein Problem gefunden";};