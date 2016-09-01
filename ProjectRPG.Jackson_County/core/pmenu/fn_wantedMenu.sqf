#include <macro.h>
/*
	File: fn_wantedMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the Wanted menu and connects to the APD.
*/
private["_display","_list","_name","_crimes","_bounty","_units"];

if(!PRPG_leitstelle && vehicle player == player) exitWith {["Du kannst nur von einem Fahrzeug aus auf den Fahndungscomputer zugreifen!",false] spawn domsg;};

disableSerialization;

createDialog "life_wanted_menu";

_display = findDisplay 2400;
_list = _display displayCtrl 2401;
_players = _display displayCtrl 2406;
lbClear _list;
_units = [];

lbClear _players;

{
	if(side _x == civilian) then {
    //_side = switch(side _x) do {case west: {"LVPD"}; case civilian : {"ZIV"}; case independent : {"EMS"}; case east : {"LAC"}; default {"Unknown"};};
		_players lbAdd format["%1", name _x];
		_players lbSetdata [(lbSize _players)-1,str(_x)];
	};
} foreach playableUnits;
lbSort [_players,"ASC"];

_list2 = getControl(2400,2407);
lbClear _list2; //Purge the list

_crimes = 
[
	["Fahren ohne PKW-Schein","10000","1"],
	["Fahren ohne LKW-Schein","10000","2"],
	["Fahren ohne Boot-Schein","10000","3"],
	
	["Gefährlicher Eingriff in den Straßenverkehr ","5000","4"],
	["Falsches Parken","4000","5"],
	["Behindern einer Garagenausfahrt","5000","6"],
	["Fahren ohne Beleuchtung (Nachts)","5000","7"],
	["Rücksichtsloses Fahren","5000","8"],
	["Wenden auf Öffentlichen Straßen","1500","9"],
	["Fahren in eine Einbahnstraße","5000","10"],
	["Fahren unter Alkoholeinfluss ab 0.2 Promille (Drogen)","6500","11"],
	["Ampelsignal ignorieren","5000","12"],
	["Nicht Beachten von Sondersignalen / Rettunsfahrzeuge kein Platz","10000","13"],
	["Verursachen eines Unfalls","2500","14"],
	["Fahrerflucht","5000","15"],
	
	["Fliegen ohne Flugschein","10000","16"],
	["Landen auf nicht genehmigte Landestellen","10000","17"],
	["Fliegen über einer Stadt unter 250m","20000","18"],
	["Fallschirmspringen über einer Stadt ohne Genehmigung","5000","19"],
	["Fliegen ohne Kollisionsbeleuchtung","2500","20"],
	
	["5-15 Km/h Geschwindigkeitsüberschreitung","5000","21"],
	["15-25 Km/h Geschwindigkeitsüberschreitung","5000","22"],
	["25+Km/h Geschwindigkeitsüberschreitung","5000","23"],
	["50+Km/h Geschwindigkeitsüberschreitung","5000","24"],
	
	["Führen eines Karts außerhalb der Rennstrecke","4000","25"],
	["Führen eines Rennwagens außerhalb der Rennstrecke[Ariel Atom]","4000","26"],
	
	["Versuchter Diebstahl eines KfZ / Heli / Flugzeug / Boot","10000","27"],
	["Diebstahl eines KfZ / Heli / Flugzeug / Boot","10000","28"],
	["Raub","30000","29"],
	["Bestechung","10000","30"],
	["Bankraub","40000","31"],
	["Erpressung","15000","32"],
	["Tankstellenraub","30000","33"],
	["Abhören von Behördenfunk","7500","34"],
	["Errichten einer illegalen Straßenblockade","7500","35"],
	["Besitz von Polizeimittel","10000","36"],
	["Besitz illegaler Gegenstände","16000","37"],
	
	["Führen einer Waffe ohne Lizenz","18000","38"],
	["Mit gezogener Waffe durch Städte laufen","6000","39"],
	["Besitz einer illegalen Waffe","16000","40"],
	["Besitz einer Langwaffe","16000","41"],
	["Besitz von Magazinen für eine illegale Waffe","10000","42"],
	["Schusswaffengebrauch innerorts","8000","43"],
	["Waffenhandel aktiv betreiben (Verkaufen)","18000","44"],
	["Waffenhandel passiv betreiben (Kaufen)","18000","45"],
	
	["Körperverletzung","4000","46"],
	["Körperverletzung mit Todesfolge ","6000","47"],
	["Freiheitsberaubung","7500","48"],
	["Belästigung","7500","49"],
	["Geiselnahme","25000","50"],
	["Beleidigung","1500","51"],
	["Drohung","4000","52"],
	["versuchter Mord","6500","53"],
	["Mord","30000","54"],
	["Prostitution","3000","55"],
	["Annahme von Prostitution","6000","56"],
	["Unterlassene Hilfeleistung","3700","57"],
	
	["Entziehung polizeilicher Maßnahmen","7500","58"],
	["Widerstand gegen Vollstreckungsbeamte","8000","59"],
	["Behinderung eines Beamten bei der Ausführung seiner Arbeit","5000","60"],
	["Belästigung/Beleidigung eines Beamten","5000","61"],
	
	["Betreten von Sperrzonen ohne Genehmigung / Nicht Einhalten Platzverweis","10000","62"],
	["Durchbrechen von Absperrungen","3000","63"],
	["Vermummungsverbot (innerorts) (50% des Gesichts verdeckt)","2000","64"],
	["Unangemeldete Versammlung für eine Sache (Demonstration)","2500","65"],
	["Amtsanmaßung (Als Beamter ausgeben)","8000","66"],
	["Missbrauch des Notrufs","4000","67"],
	["Sachbeschädigung","6500","68"],
	
	["Drogenbesitz-Haus","6000","69"],
	["Drogenbesitz-LKW/Heli","6000","70"],
	["Drogenbesitz-Pkw","6000","71"],
	["Drogenbesitz-Boot","6000","72"],
	["Drogenbesitz-Rucksack","6000","73"],
	["Drogenhandel Verkauf","6000","74"],
	["Drogenhandel Ankauf","6000","75"],
	["Anbau von Drogen","6000","76"]
];	

{
	_list2 lbAdd format["%1 - $%2",(_x select 0),(_x select 1),(_x select 2)];
	_list2 lbSetData [(lbSize _list2)-1,(_x select 2)];
} foreach _crimes;

ctrlSetText[2404,"Verbinde mit Rechenzentrum..."];

if(__GETC__(life_coplevel) < 6) then {ctrlEnable[2405,false];};
if(!PRPG_leitstelle) then {ctrlEnable[9802,false];};

[player] remoteExec ["life_fnc_wantedFetch",2];