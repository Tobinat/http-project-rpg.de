/*
	File: fn_wantedCrimes.sqf
	Author: ColinM
	Assistance by: Paronity
	Stress Tests by: Midgetgrimm
	
	Description:
	Grabs a list of crimes committed by a person.
*/
private["_display","_criminal","_tab","_queryResult","_result","_ret","_crimesDb","_crimesArr","_type"];
disableSerialization;
_ret = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_criminal = [_this,1,[],[]] call BIS_fnc_param;

_result = format["SELECT wantedCrimes, wantedBounty FROM wanted WHERE active='1' AND wantedID='%1'",(_criminal select 0)];

_tickTime = diag_tickTime;
_queryResult = [_result,2] call DB_fnc_asyncCall;

_ret = owner _ret;
_crimesArr = [];

_crimesDB = [(_queryResult select 0)] call DB_fnc_mresToArray;
if(typeName _crimesDb == "STRING") then {_crimesDb = call compile _crimesDb;};
_queryResult set[0,_crimesDb];
_type = _queryResult select 0;
{
	switch(_x) do
	{
		case "481": {_x = "Besitz Schmuggelware"};
		case "482": {_x = "Besitz Schmuggelware"};
		case "483": {_x = "Handel Schmuggelware"};
		case "647": {_x = "Rauschlevel über 0.20"};
		case "187V": {_x = "Fahrzeugmord"};
		case "187": {_x = "Manslaughter"};
		case "901": {_x = "Knastausbruch"};
		case "261": {_x = "Vergewaltigung"};
		case "261A": {_x = "Versuchte Vergewaltigung"};
		case "215": {_x = "Versuchter Fahrzeugdiebstahl"};
		case "213": {_x = "Verwendung von Sprengstoffen"};
		case "211": {_x = "Raub"};
		case "207": {_x = "Entführung"};
		case "207A": {_x = "Versuchte Entführung"};
		case "390": {_x = "Öffentlicher Rausch"};
		case "487": {_x = "Grand Theft"};
		case "488": {_x = "Petty Theft"};
		case "480": {_x = "Hit and run"};
		case "459": {_x = "Burglary"};
		case "666": {_x = "Steuer Hinterziehung"};
		case "667": {_x = "Terrorismus"};
		case "668": {_x = "Unlicensed Hunting"};
		case "919": {_x = "Organ Theft"};
		case "919A": {_x = "Attempted Organ Theft"};
		
		case "1": {_x = "Fahren ohne PKW-Schein"};
		case "2": {_x = "Fahren ohne LKW-Schein"};
		case "3": {_x = "Fahren ohne Boot-Schein"};
		
		case "4": {_x = "Gefährlicher Eingriff in den Straßenverkehr"};
		case "5": {_x = "Falschparken"};
		case "6": {_x = "Behindern einer Garagenausfahrt"};
		case "7": {_x = "Fahren ohne Beleuchtung (Nachts)"};
		case "8": {_x = "Rücksichtsloses Fahren"};
		case "9": {_x = "Wenden auf Öffentlichen Straßen"};
		case "10": {_x = "Fahren in eine Einbahnstraße"};
		case "11": {_x = "Fahren unter Alkoholeinfluss ab 0.2 Promille (Drogen)"};
		case "12": {_x = "Ampelsignal ignorieren"};
		case "13": {_x = "Nicht Beachten von Sondersignalen / Rettunsfahrzeuge kein Platz"};
		case "14": {_x = "Verursachen eines Unfalls"};
		case "15": {_x = "Fahrerflucht"};
		
		case "16": {_x = "Fliegen ohne Flugschein"};
		case "17": {_x = "Landen auf nicht genehmigte Landestellen"};
		case "18": {_x = "Fliegen über einer Stadt unter 250m"};
		case "19": {_x = "Fallschirmspringen über einer Stadt ohne Genehmigung"};
		case "20": {_x = "Fliegen ohne Kollisionsbeleuchtung"};
		
		case "21": {_x = "5-15 Km/h Geschwindigkeitsüberschreitung"};
		case "22": {_x = "15-25 Km/h Geschwindigkeitsüberschreitung"};
		case "23": {_x = "25+Km/h Geschwindigkeitsüberschreitung"};
		case "24": {_x = "50+Km/h Geschwindigkeitsüberschreitung"};
		
		case "25": {_x = "Führen eines Karts außerhalb der Rennstrecke"};
		case "26": {_x = "Führen eines Rennwagens außerhalb der Rennstrecke[Ariel Atom]"};
		
		case "27": {_x = "Versuchter Diebstahl eines KfZ / Heli / Flugzeug / Boot"};
		case "28": {_x = "Diebstahl eines KfZ / Heli / Flugzeug / Boot"};
		case "29": {_x = "Raub"};
		case "30": {_x = "Bestechung"};
		case "31": {_x = "Bankraub"};
		case "32": {_x = "Erpressung"};
		case "33": {_x = "Tankstellenraub"};
		case "34": {_x = "Abhören von Behördenfunk"};
		case "35": {_x = "Errichten einer illegalen Straßenblockade"};
		case "36": {_x = "Besitz von Polizeimittel"};
		case "37": {_x = "Besitz illegaler Gegenstände"};
		
		case "38": {_x = "Führen einer Waffe ohne Lizenz"};
		case "39": {_x = "Mit gezogener Waffe durch Städte laufen"};
		case "40": {_x = "Besitz einer illegalen Waffe"};
		case "41": {_x = "Besitz einer Langwaffe"};
		case "42": {_x = "Besitz von Magazinen für eine illegale Waffe"};
		case "43": {_x = "Schusswaffengebrauch innerorts"};
		case "44": {_x = "Waffenhandel aktiv betreiben (Verkaufen)"};
		case "45": {_x = "Waffenhandel passiv betreiben (Kaufen)"};
		
		case "46": {_x = "Körperverletzung"};
		case "47": {_x = "Körperverletzung mit Todesfolge"};
		case "48": {_x = "Freiheitsberaubung"};
		case "49": {_x = "Belästigung"};
		case "50": {_x = "Geiselnahme"};
		case "51": {_x = "Beleidigung"};
		case "52": {_x = "Drohung"};
		case "53": {_x = "versuchter Mord"};
		case "54": {_x = "Mord"};
		case "55": {_x = "Prostitution"};
		case "56": {_x = "Annahme von Prostitution"};
		case "57": {_x = "Unterlassene Hilfeleistung"};
		
		case "58": {_x = "Entziehung polizeilicher Maßnahmen"};
		case "59": {_x = "Widerstand gegen Vollstreckungsbeamte"};
		case "60": {_x = "Behinderung eines Beamten bei der Ausführung seiner Arbeit"};
		case "61": {_x = "Belästigung/Beleidigung eines Beamten"};
		
		case "62": {_x = "Betreten von Sperrzonen ohne Genehmigung / Nicht Einhalten Platzverweis"};
		case "63": {_x = "Durchbrechen von Absperrungen"};
		case "64": {_x = "Vermummungsverbot (innerorts) (50% des Gesichts verdeckt)"};
		case "65": {_x = "Unangemeldete Versammlung für eine Sache (Demonstration)"};
		case "66": {_x = "Amtsanmaßung (Als Beamter ausgeben)"};
		case "67": {_x = "Missbrauch des Notrufs"};
		case "68": {_x = "Sachbeschädigung"};
		
		case "69": {_x = "Drogenbesitz-Haus"};
		case "70": {_x = "Drogenbesitz-Lkw/Heli"};
		case "71": {_x = "Drogenbesitz-Pkw"};
		case "72": {_x = "Drogenbesitz-Boot"};
		case "73": {_x = "Drogenbesitz-Rucksack"};
		case "74": {_x = "Drogenhandel Verkauf"};
		case "75": {_x = "Drogenhandel Ankauf"};
		case "76": {_x = "Anbau von Drogen"};
	};
	_crimesArr pushBack _x;
}forEach _type;
_queryResult set[0,_crimesArr];

diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_result];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

[_queryResult] remoteExec ["life_fnc_wantedInfo",_ret];