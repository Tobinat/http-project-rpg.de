/*
File: gather evidence
*/
private["_curTarget","_crime","_suspect","_suspectUID","_scrambledUID","_evidence","_index","_lastEvidence","_msg"];
_curTarget = CurrentCursorTarget;
_evidence = _curTarget getVariable ["evidence",[]];
if((count _evidence) == 0) exitWith { ["Nie znalazłeś żadnych dowodów", false] spawn domsg; };
_index = (count _evidence) - 1;
_lastEvidence = _evidence select _index;

_suspect = _lastEvidence select 0;
_suspectUID = _lastEvidence select 1;
_crime = _lastEvidence select 2;
_scrambledUID = _lastEvidence select 3;
_messageArray = [];


switch(_crime) do {
	case "bankRobbery": {
		_messageArray = [""];
	};
	case "bankDrill": {
		_messageArray = ["Na wiertle widać odciski palców, które mogły należeć do: "];
	};
	case "vaultBreach": {
		_messageArray = ["Na sejfie widać odciski palców, które mogły należeć do: "];
	};
	case "blowDoor": {
		_messageArray = ["Na bramie pozostały strzępki ubrań, które mogły należeć do: "];
	};
	case "hackDoor": {
		_messageArray = ["Na drzwiach można dostrzec niewielkie odciski palców, które mogły należeć do: "];
	};
	case "storeRobbery": {
		_messageArray = ["Sprzedawca w sklepie mówi, że napastnik mógł wyglądać jak: "];
	};
	case "personRobbery": {
		_messageArray = ["Poszkodowany twierdzi, że napastnik mógł wyglądać jak: "];
	};
	case "carRobbery": {
		_messageArray = ["Na samochodzie widać dowody, które mogą wskazywać na: "];
	};
	case "killAtempt": {
		_messageArray = ["Na ciele widać dowody, które mogą wskazywać na: "];
	};
	case "kill": {
		_messageArray = ["Na ciele widać dowody, które mogą wskazywać na: "];
	};
	case "vehicleKill": {
		_messageArray = ["Na ciele widać dowody, które mogą wskazywać na: "];
	};
};
_msg = _messageArray call BIS_fnc_selectRandom;


_evidence deleteAt _index;
_curTarget setVariable ["evidence", _evidence, true];
[_msg + _scrambledUID, false] spawn domsg;
["EvidencePicked"] spawn mav_ttm_fnc_addExp;
[player,objNull,8,format ["%1 zebrał dowody(%2 %3)", name player, _msg, _scrambledUID],""] remoteExec ["server_fnc_copLog", 2];