#include <macro.h>
/*
	File: fn_wantedMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the Wanted menu and connects to the APD.
*/
private["_display","_list","_name","_crimes","_bounty","_units"];

if( !lrl_copLeitstelle && vehicle player == player) exitWith {hint "Du kannst auf den Fahndungscomputer nur vom Fahrzeug aus zugreifen!"};

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
	["Fahren ohne PKW-Schein","250","1"],
	["Fahren ohne LKW-Schein","350","2"],
	["Fahren ohne Boot-Schein","350","3"],
	
	["Gefährlicher Eingriff in den Straßenverkehr ","1000","4"],
	["Falsches Parken","25","5"],
	["Behindern einer Garagenausfahrt","500","6"],
	["Fahren ohne Beleuchtung (Nachts)","125","7"],
	["Rücksichtsloses Fahren","500","8"],
	["Wenden auf Öffentlichen Straßen","150","9"],
	["Fahren in eine Einbahnstraße","150","10"],
	["Fahren unter Alkoholeinfluss ab 0.2 Promille (Drogen)","500","11"],
	["Ampelsignal ignorieren","250","12"],
	["Nicht Beachten von Sondersignalen / Rettunsfahrzeuge kein Platz","250","13"],
	["Verursachen eines Unfalls","250","14"],
	["Fahrerflucht","500","15"],
	
	["Fliegen ohne Flugschein","300","16"],
	["Landen auf nicht genehmigte Landestellen","750","17"],
	["Fliegen über einer Stadt unter 250m","500","18"],
	["Fallschirmspringen über einer Stadt ohne Genehmigung","500","19"],
	["Fliegen ohne Kollisionsbeleuchtung","250","20"],
	
	["5-15 Km/h Geschwindigkeitsüberschreitung","25","21"],
	["15-25 Km/h Geschwindigkeitsüberschreitung","200","22"],
	["25+Km/h Geschwindigkeitsüberschreitung","500","23"],
	["50+Km/h Geschwindigkeitsüberschreitung","1000","24"],
	
	["Führen eines Karts außerhalb der Rennstrecke","500","25"],
	["Führen eines Rennwagens außerhalb der Rennstrecke[Ariel Atom]","1250","26"],
	
	["Versuchter Diebstahl eines KfZ / Heli / Flugzeug / Boot","750","27"],
	["Diebstahl eines KfZ / Heli / Flugzeug / Boot","1000","28"],
	["Raub","1250","29"],
	["Bestechung","750","30"],
	["Bankraub","4000","31"],
	["Erpressung","750","32"],
	["Tankstellenraub","750","33"],
	["Abhören von Behördenfunk","750","34"],
	["Errichten einer illegalen Straßenblockade","750","35"],
	["Besitz von Polizeimittel","1500","36"],
	["Besitz illegaler Gegenstände","500","37"],
	
	["Führen einer Waffe ohne Lizenz","750","38"],
	["Mit gezogener Waffe durch Städte laufen","250","39"],
	["Besitz einer illegalen Waffe","1750","40"],
	["Besitz einer Langwaffe","2750","41"],
	["Besitz von Magazinen für eine illegale Waffe","50","42"],
	["Schusswaffengebrauch innerorts","250","43"],
	["Waffenhandel aktiv betreiben (Verkaufen)","2500","44"],
	["Waffenhandel passiv betreiben (Kaufen)","2500","45"],
	
	["Körperverletzung","1250","46"],
	["Körperverletzung mit Todesfolge ","2000","47"],
	["Freiheitsberaubung","750","48"],
	["Belästigung","125","49"],
	["Geiselnahme","2500","50"],
	["Beleidigung","150","51"],
	["Drohung","750","52"],
	["versuchter Mord","2500","53"],
	["Mord","7500","54"],
	["Prostitution","1000","55"],
	["Annahme von Prostitution","375","56"],
	["Unterlassene Hilfeleistung","375","57"],
	
	["Entziehung polizeilicher Maßnahmen","750","58"],
	["Widerstand gegen Vollstreckungsbeamte","1000","59"],
	["Behinderung eines Beamten bei der Ausführung seiner Arbeit","250","60"],
	["Belästigung/Beleidigung eines Beamten","375","61"],
	
	["Betreten von Sperrzonen ohne Genehmigung / Nicht Einhalten Platzverweis","750","62"],
	["Durchbrechen von Absperrungen","1250","63"],
	["Vermummungsverbot (innerorts) (50% des Gesichts verdeckt)","250","64"],
	["Unangemeldete Versammlung für eine Sache (Demonstration)","250","65"],
	["Amtsanmaßung (Als Beamter ausgeben)","1500","66"],
	["Missbrauch des Notrufs","750","67"],
	["Sachbeschädigung","125","68"],
	
	["Drogenbesitz-Haus","50","69"],
	["Drogenbesitz-LKW/Heli","3750","70"],
	["Drogenbesitz-Pkw","2500","71"],
	["Drogenbesitz-Boot","1750","72"],
	["Drogenbesitz-Rucksack","1000","73"],
	["Drogenhandel Verkauf","1000","74"],
	["Drogenhandel Ankauf","250","75"],
	["Anbau von Drogen","1500","76"]
];	

{
	_list2 lbAdd format["%1 - $%2",(_x select 0),(_x select 1),(_x select 2)];
	_list2 lbSetData [(lbSize _list2)-1,(_x select 2)];
} foreach _crimes;

ctrlSetText[2404,"Verbinde mit Rechenzentrum..."];

/*if(__GETC__(life_coplevel) < 3 && __GETC__(life_adminlevel) == 0) then
{
	ctrlShow[2405,false];
	ctrlShow[9800,false];
};*/

[player] remoteExec ["life_fnc_wantedFetch",2];