/*
File: destroy evidence
*/
private["_curtarget","_unit"];

_curTarget = CurrentCursorTarget;
_evidence = _curTarget getVariable ["evidence",[]];
_index = (count _evidence) - 1;
if(_index == -1) exitWith { ["Du hast die Beweise NICHT zerstört.", false] spawn domsg; };
_selectedEvidence = _evidence select _index;


_evidence deleteAt _index;
_curTarget setVariable ["evidence", _evidence, true];
["Du hast die Beweise zerstört.", false] spawn domsg;