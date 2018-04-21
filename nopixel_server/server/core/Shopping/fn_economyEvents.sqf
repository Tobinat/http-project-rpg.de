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
if (_debug == 1) then {diag_log "Nie napotkałem problemu z wykonaniem BIS_fnc_selectRandom"; diag_log format["Wylosowana liczba to: %1", _selected];};

switch (_selected) do {
    case "0": {priceArrayOre = [65,45,75,10,115]; publicVariable "priceArrayOre"; ["Ekonomia","Górnicy robią strajk, w zakładach brakuje brązu do produkcji!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERWER: Pomyślnie wykonano economyEvent: Copper"; };
    case "1": {priceArrayOre = [30,75,75,10,115]; publicVariable "priceArrayOre"; ["Ekonomia","Naukowcy udowodnili że w ciągu kilku miesięcy dostępność wydobywcza żelaza spadnie do 10%!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERWER: Pomyślnie wykonano economyEvent: Iron";};
    case "2": {priceArrayOre = [30,45,90,10,115]; publicVariable "priceArrayOre"; ["Ekonomia","Kobiety zakochały się w srebnej biżuterii! Producenci biżuterii skupują duże ilości srebra!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERWER: Pomyślnie wykonano economyEvent: Silver";};
    case "3": {priceArrayOre = [30,45,75,40,115]; publicVariable "priceArrayOre"; ["Ekonomia","Wzrósł popyt na meble! Firmy produkcyjne mają problem z dostępnością surowca!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERWER: Pomyślnie wykonano economyEvent: Wood";};
    case "4": {priceArrayOre = [30,45,75,10,300]; publicVariable "priceArrayOre"; ["Ekonomia","Inwestorzy zawachali rynkiem oraz cena za baryłkę oleju wzrosła trzykrotnie!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERWER: Pomyślnie wykonano economyEvent: Oil";};
    case "5": {priceArrayOre = [30,45,75,10,115]; publicVariable "priceArrayOre"; ["Ekonomia","Ceny rynkowe wróciły do norm!",[255,192,203,1],""] remoteExec ["Client_fnc_showNotification", -2]; diag_log "SERWER: Pomyślnie wykonano economyEvent: resetToNormal";};
    default {priceArrayOre = [30,45,75,10,115]; publicVariable "priceArrayOre"; diag_log "Switch to default [30,45,75,10,115] (fn_economyEvents.sqf)";}
};
if (_debug == 1) then {diag_log "Nie napotkałem problemu z wykonaniem switch case";};