/*
	Author: PRPG
	Date: 22.01.2017 (Non-retard Units)

	Params:
		1 - Object - weed plant object
	Description: Function that checks state of plant
	Return: nothing
*/

params["_object"];
_checkFinish = _object getVariable["checkFinish",false];
_requiredAction = _object getVariable ["requiredOutput",""];

if(_checkFinish) exitWith {["Die Pflanze sieht gut aus.", false] spawn domsg;};

_waterArray = ["Hinweis: Die Erde ist Trocken!","Hinweis: Die Pflanze welkt!","Hinweis: Die blätter hängen runter!"];
_pruneArray = ["Hinweis: Da sind einige Kranke Blätter!","Hinweis: Einige Blätter verwelken!","Hinweis: Die Pflanze hat sehr viele Seitenzweige!"];
_coolArray = ["Hinweis: Die Pflanze stinkt!","Hinweis: Es sind 32°C","Hinweis: Es wird heiß!"];
_heatArray = ["Hinweis: Es ist recht Kalt!","Hinweis: Es sind 14°C!","Hinweis: Die Pflanze verrfärbt ihre Blätter!"];
_turnoverArray = ["Hinweis: Die Erde hat wenige Nährstoffe!","Hinweis: Die Erde ist verdichtet!","Hinweis: Perlite währen ganz gut!"];
_message = "";

switch(_requiredAction) do {
	case "Water": { _message = _waterArray call BIS_fnc_selectRandom; };
	case "Prune": { _message = _pruneArray call BIS_fnc_selectRandom; };
	case "Cool": { _message = _coolArray call BIS_fnc_selectRandom; };
	case "Heat": { _message = _heatArray call BIS_fnc_selectRandom; };
	case "Turnover": { _message = _turnoverArray call BIS_fnc_selectRandom; };
};
[_message, false] spawn domsg;
