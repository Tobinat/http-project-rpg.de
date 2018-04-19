/*
	Author: Kajetan "Kruk" Mruk
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

_waterArray = ["Hinweis: Die Blätter sind gefallen","Hinweis: Die Pflanze ist welk", "Hinweis: Der Boden ist trocken"];
_pruneArray = ["Hinweis: Die Pflanze ist wahrscheinlich zu groß","Hinweis:Die Pflanze sieht überwuchert aus"];
_coolArray = ["Hinweis: Auf den Blättern sind braune Flecken zu sehen","Hinweis: Der Pflanze ist es zu heiß"];
_heatArray = ["Hinweis: Die Pflanze fault", "Hinweis: Der Boden ist zu feucht"];
_turnoverArray = ["Hinweis: Du musst den Boden wechseln", "Hinweis: Sie müssen den Boden belüften"];
_message = "";

switch(_requiredAction) do {
	case "Water": { _message = _waterArray call BIS_fnc_selectRandom; };
	case "Prune": { _message = _pruneArray call BIS_fnc_selectRandom; };
	case "Cool": { _message = _coolArray call BIS_fnc_selectRandom; };
	case "Heat": { _message = _heatArray call BIS_fnc_selectRandom; };
	case "Turnover": { _message = _turnoverArray call BIS_fnc_selectRandom; };
};
[_message, false] spawn domsg;
