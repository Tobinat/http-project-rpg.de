/*
File: gather evidence
*/
private["_curTarget","_crime","_suspect","_suspectUID","_scrambledUID","_evidence","_index","_lastEvidence","_msg"];
_curTarget = CurrentCursorTarget;
_evidence = _curTarget getVariable ["evidence",[]];
if((count _evidence) == 0) exitWith { ["Du hast keine Beweise gefunden", false] spawn domsg; };
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
		_messageArray = ["Es gibt Fingerabdruecke auf der Bohrmaschine, sie passen zu: "];
	};
	case "vaultBreach": {
		_messageArray = ["Auf dem Safe sind Fingerabdruecke, sie passen zu: "];
	};
	case "blowDoor": {
		_messageArray = ["An der Tuer befinden sich Texitlfetzen, sie gehoeren zu: "];
	};
	case "hackDoor": {
		_messageArray = ["An der Tuer sind Fingerabdruecke, sie passen zu: "];
	};
	case "storeRobbery": {
		_messageArray = ["Der Ladenbesitzer sagt, der Angreifer sieht aus wie: "];
	};
	case "personRobbery": {
		_messageArray = ["Das Opfer behauptet, der Angreifer sieht aus wie: "];
	};
	case "carRobbery": {
		_messageArray = ["Im Fahrzeug befinden sich Beweise, sie weisen darauf hin: "];
	};
	case "killAtempt": {
		_messageArray = ["Auf dem Koerper sind Beweise zu finden, sie weisen darauf hin: "];
	};
	case "kill": {
		_messageArray = ["Auf der Leiche sind Beweise zu finden, sie weisen darauf hin: "];
	};
	case "vehicleKill": {
		_messageArray = ["Auf der Leiche sind Beweise zu finden, sie weisen darauf hin: "];
	};
};
_msg = _messageArray call BIS_fnc_selectRandom;


_evidence deleteAt _index;
_curTarget setVariable ["evidence", _evidence, true];
[_msg + _scrambledUID, false] spawn domsg;
["EvidencePicked"] spawn mav_ttm_fnc_addExp;
[player,objNull,8,format ["%1 Sammelt beweise ein(%2 %3)", name player, _msg, _scrambledUID],""] remoteExec ["server_fnc_copLog", 2];
