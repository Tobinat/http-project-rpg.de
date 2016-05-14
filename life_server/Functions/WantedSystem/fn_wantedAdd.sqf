/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_index","_data","_crimes","_val"];

_uid 			= param [0,"",[""]];
_name 			= param [1,"",[""]];
_type 			= param [2,"",[""]];
_customBounty 	= param [3,"",[""]];
_text 			= param [4,"Vergehen",[""]];

if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
    case "187V": {_type = ["Überfahren mit Todesfolge",6500]};
    case "187": {_type = ["Mord",60000]};
    case "901": {_type = ["Gefängnisflucht",4500]};
    case "261": {_type = ["Raub",5000]};
    case "261A": {_type = ["Versuchter Raub",3000]};
    case "215": {_type = ["Versuchter Autodiebstahl",2000]};
    case "213": {_type = ["Verwenden illegaler Sprengstoff",10000]};
    case "211": {_type = ["Raub/Diebstahl",1000]};
    case "207": {_type = ["Entführung",3500]};
    case "207A": {_type = ["Versuchte Entführung",2000]};
    case "487": {_type = ["Autodiebstahl",1500]};
    case "488": {_type = ["Diebstahl",700]};
    case "480": {_type = ["Fahrerflucht",1300]};
    case "481": {_type = ["Drogenbesitz",1000]};
    case "482": {_type = ["Versuchter Drogenhandel",5000]};
    case "483": {_type = ["Drogenhandel",9500]};
    case "503": {_type = ["Handel mit exotischen Gütern",25000]};
	case "customtype": {_type = [_text,_customBounty]};           //Geschwindigkeit
    
	case "100": {_type = ["Fahren ohne LKW Führerschein",7250]};
    case "101": {_type = ["Führen eines Wasserfahrzeugs ohne Lizenz",7500]};
    case "102": {_type = ["Behindern des Verkehrs (Land)",5000]};
    case "103": {_type = ["Falsches Parken/ Behindern eines Fahrzeugspawns",2500]};
    case "104": {_type = ["Fahren ohne Beleuchtung (Nachts)",2500]};
    case "105": {_type = ["Rücksichtsloses Fahren (Gefährliche Fahrweise)",15000]};
    case "106": {_type = ["Missachtung der Höchstgeschwindigkeit (innerorts)",5000]};
    case "107": {_type = ["Missachtung der Höchstgeschwindigkeit (außerorts)",2500]};
    case "108": {_type = ["Falschparken",2500]};
    case "109": {_type = ["Wenden auf Öffentlichen Straßen",3750]};
    case "110": {_type = ["Permanentes Rückwärtsfahren",5000]};
    case "111": {_type = ["Fahren in eine Einbahnstraße",2500]};
    case "112": {_type = ["Fahren unter Alkoholeinfluss ab 0.1-0.2 Promille",25000]};
    case "113": {_type = ["Polizeiabsperrungen ignorieren",15000]};
    case "114": {_type = ["Fliegen ohne Flugschein",20000]};
    case "115": {_type = ["Landen im Polizei HQ, Medic HQ, THW HQ o. Stadt",25000]};
    case "116": {_type = ["Fliegen über einer Stadt / Hovern",5000]};
	case "117": {_type = ["Fallschirmspringen über einer Stadt",5000]};     
	case "118": {_type = ["Führen eines Karts außerhalb der Rennstrecke",7500]};
    case "119": {_type = ["Führen eines Karts in der Nacht",7500]};
    case "120": {_type = ["Gepanzerte Fahrzeuge",25000]};
    case "121": {_type = ["Drogenbesitz >>LKW 50% d. Inhalts + 600.000$",600000]};
    case "122": {_type = ["Drogenbesitz >>PKW, Helikopter 50% d. Inhalts + 300.000$",300000]};
    case "123": {_type = ["Drogenbesitz >> Boot/ Wasserfahrzeugen 50% d. Inhalts + 152.000$",125000]};
    case "124": {_type = ["Drogenbesitz >> Im Rucksack (An der Person)",250000]};
    case "125": {_type = ["Drogenhandel Verkauf",200000]};
    case "126": {_type = ["Drogenhandel Ankauf",125000]};
    case "127": {_type = ["Anbau von Drogen",95000]};
    case "128": {_type = ["Versuchter Diebstahl",17500]};
    case "129": {_type = ["Diebstahl",42500]};
    case "130": {_type = ["Versuchter Diebstahl eines KfZ / Heli / Flugzeug / Boot",25000]};
    case "131": {_type = ["Diebstahl eines KfZ / Heli / Flugzeug / Boot",65000]};
    case "132": {_type = ["Hehlerei",30000]};
    case "133": {_type = ["Raub",25000]};
    case "134": {_type = ["Schwerer Raub",40000]};
	case "135": {_type = ["Bestechung",17500]};     
	case "136": {_type = ["Räuberische Erpressung",20000]};
    case "137": {_type = ["Bankraub",75000]};
    case "138": {_type = ["Erpressung",26500]};
    case "139": {_type = ["Menschenhandel",65000]};
    case "140": {_type = ["Besitz von Schildkröten",75000]};
    case "141": {_type = ["Besitz von Schildkröten >> LKW / Helikopter 50% d. Inhalts + 600.000$",600000]};
    case "142": {_type = ["Besitz von Schildkröten >> PKWs + Quadbikes 50% d. Inhalts + 300.000$",300000]};
    case "143": {_type = ["Besitz von Schildkröten >> Boot/ Wasserfahrzeugen 50% d. Inhalts + 152.000$",152000]};
    case "144": {_type = ["Besitz von Schildkröten >> Im Rucksack (An der Person) 250.000$",250000]};
    case "145": {_type = ["Führen einer Waffe ohne Lizenz",45000]};
    case "146": {_type = ["Mit gezogener Waffe durch Städte laufen",18500]};
    case "147": {_type = ["Besitz einer illegalen Waffe",55000]};
    case "148": {_type = ["Schusswaffengebrauch innerorts",75000]};
    case "149": {_type = ["Waffenhandel aktiv betreiben (Verkaufen)",125000]};
    case "150": {_type = ["Versuchte Körperverletzung",4500]};
    case "151": {_type = ["Körperverletzung (z. B. Niederschlagen)",7500]};
    case "152": {_type = ["Gefährliche Körperverletzung",8500]};
	case "153": {_type = ["Freiheitsberaubung",55000]};     
	case "154": {_type = ["Belästigung",12500]};
    case "155": {_type = ["Geiselnahme",75000]};
    case "156": {_type = ["Psychologische Verletzung",15000]};
    case "157": {_type = ["Beleidigung",7500]};
    case "158": {_type = ["Drohung",7500]};
    case "159": {_type = ["Versuchter Mord",35000]};
    case "160": {_type = ["Mord",125000]};
    case "161": {_type = ["Prostitution",10000]};
	case "162": {_type = ["Annahme von Prostitution",7500]};     
	case "163": {_type = ["Entziehung polizeilicher Maßnahmen",25000]};
	case "164": {_type = ["Widerstand gegen Vollstreckungsbeamte",15000]};     
	case "165": {_type = ["Behinderung eines Beamten bei der Ausführung seiner Arbeit",25000]};
	case "166": {_type = ["Belästigung/Beleidigung eines Beamten",15000]};     
	case "167": {_type = ["Fahrerflucht nach Unfall",20000]};
	case "168": {_type = ["Fahren unter Alkoholeinfluss ab 0.2 Promille",45000]};     
	case "169": {_type = ["Betreten von Sperrzonen (Polizei HQ, Drogenfelder)",15000]};
	case "170": {_type = ["Durchbrechen von Absperrungen",25000]};     
	case "171": {_type = ["Vermummungsverbot (50% des Gesichts verdeckt)",15000]};
	case "172": {_type = ["Unangemeldete Versammlung für eine Sache (Demonstration)",7500]};     
	case "173": {_type = ["Amtsanmaßung (Als Beamter ausgeben)",75000]};     
	
    case "1": {_type = ["Fahren ohne Führerschein",1500]};
    case "2": {_type = ["Versuchter Diebstahl Fahrzeugs",3500]};
    case "3": {_type = ["Diebstahl/Führen e.fremden Zivilfahrzeugs",5000]};
    case "4": {_type = ["Fahren ohne Licht",350]};
    case "5": {_type = ["Überhöhte Geschwindigkeit",3500]};
    case "6": {_type = ["Gefährliche Fahrweise",2500]};
    case "7": {_type = ["Versuchter Diebstahl e.Polizeifahrzeugs",7500]};
    case "8": {_type = ["Diebstahl von Polizeifahrzeugen",20000]};
    case "9": {_type = ["Landen in einer Flugverbotszone",2500]};
    case "10": {_type = ["Fahren von illegalen Fahrzeugen",10000]};
    case "11": {_type = ["Unfallverursacher/Fahrerflucht nach Unfall",5000]};
    case "12": {_type = ["Fahrerflucht vor der Polizei",7500]};
    case "13": {_type = ["Überfahren eines anderen Spielers",25000]};
    case "14": {_type = ["Illegale Strassensperren",5000]};
    case "15": {_type = ["Widerstand gegen die Staatsgewalt",15000]};
    case "16": {_type = ["Nicht befolgen e.pol.Anordnung",5000]};
    case "17": {_type = ["Beamtenbeleidigung",2500]};
    case "18": {_type = ["Belästigung eines Polizisten",8000]};
    case "19": {_type = ["Betreten der pol.Sperrzone",5000]};
    case "20": {_type = ["Töten eines Polizisten",25000]};
    case "21": {_type = ["Beschuss auf Polizei/Beamte/Eigentum",15000]};
    case "22": {_type = ["Zerstörung von Polizeieigentum",15000]};
    case "23": {_type = ["Drogendelikte",12000]};
    case "24": {_type = ["Waffenbesitz ohne Lizenz",5000]};
    case "25": {_type = ["Mit gez.Waffe durch Stadt",2500]};
    case "26": {_type = ["Besitz einer verbotenen Waffe",10000]};
    case "27": {_type = ["Schusswaffengebrauch innerhalb Stadt",10000]};
    case "28": {_type = ["Geiselnahme",30000]};
    case "29": {_type = ["Überfall auf Personen/Fahrzeuge",10000]};
    case "30": {_type = ["Bankraub",200000]};
    case "31": {_type = ["Mord",60000]};
    case "32": {_type = ["Aufstand",35000]};
    case "33": {_type = ["Angriff durch Rebellen",35000]};
    case "34": {_type = ["Angriff/Belagerung von Hauptstädten",25000]};
    case "35": {_type = ["Vers.Landung in einer Flugverbotszone",1500]};
    case "36": {_type = ["Fliegen/Schweben unterhalb 150m ü.Stadt",2000]};
    case "37": {_type = ["Ausbruch aus dem Gefaengnis",25000]};
    case "38": {_type = ["Fliegen ohne Fluglizenz",1200]};
    case "39": {_type = ["Dauerhaft störendes Hupen",1000]};
    case "40": {_type = ["Handel mit exotischen Gütern",25000]};
	case "490": {_type = ["Autodiebstahl",25000]};
	case "1002": {_type = ["Hacking",150000]};
	case "1003": {_type = ["Vers. Hacking",50000]};
	case "500": {_type = ["5 - 15 Km/h Geschwindigkeitsüberschreitung",2500]}; //ist das Kopfgeld
	case "501": {_type = ["15 - 25 Km/h Geschwindigkeitsüberschreitung",7500]}; 
	case "502": {_type = ["25+ Km/h Geschwindigkeitsüberschreitung",15000]};
	case "503": {_type = ["50+ Km/h Geschwindigkeitsüberschreitung",25000]};
	
    default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...

if(_customBounty != -1) then {_type set[1,_customBounty];};

_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};
diag_log format["WANTED_LIST = %1", life_wanted_list];
_gesuchter = [life_wanted_list] call DB_fnc_mresArray;
_query = format["UPDATE wanted set list = '%1'", _gesuchter];

_queryResult = [_query,1] call DB_fnc_asyncCall;


