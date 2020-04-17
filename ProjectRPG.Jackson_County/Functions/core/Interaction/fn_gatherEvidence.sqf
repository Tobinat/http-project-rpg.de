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
		_messageArray = ["Auf den überwachungsvideos erkennst du "];
	};
	case "bankDrill": {
		_messageArray = ["Es gibt Fingerabdrücke auf der Bohrmaschine, sie passen zu: "];
	};
	case "vaultBreach": {
		_messageArray = ["Auf dem Safe sind Fingerabdrücke, sie passen zu: "];
	};
	case "blowDoor": {
		_messageArray = ["An dem Tor befinden sich Texitlfetzen mit DNA von: "];
	};
	case "hackDoor": {
		_messageArray = ["An der Tür sind Fingerabdrücke, sie passen zu: "];
	};
	case "storeRobbery": {
		_messageArray = ["Der Ladenbesitzer sagt, der Angreifer sieht aus wie: "];
	};
	case "personRobbery": {
		_messageArray = ["Das Opfer behauptet, der Angreifer sieht aus wie: "];
	};
	case "carRobbery": {
		_messageArray = ["Im Fahrzeug befinden sich Haare, sie gehören zu: "];
	};
	case "killAtempt": {
		_messageArray = ["Auf dem Körper befindet sich DNA von: "];
	};
	case "kill": {
		_messageArray = ["Auf dem Leiche befindet sich DNA von: "];
	};
	case "vehicleKill": {
		_messageArray = ["Auf der Haut ist ein Kennzeichen abdruck, das Auto gehört: "];
	};
};
_msg = _messageArray call BIS_fnc_selectRandom;

_evidence deleteAt _index;
_curTarget setVariable ["evidence", _evidence, true];
_chance = round (random 100);
if (_chance > 30) then {
	[_msg + _scrambledUID, false] spawn domsg;
	["EvidencePicked"] spawn mav_ttm_fnc_addExp;
	[player,objNull,8,format ["%1 Sammelt beweise ein(%2 %3)", name player, _msg, _scrambledUID],""] remoteExec ["server_fnc_copLog", 2];
};