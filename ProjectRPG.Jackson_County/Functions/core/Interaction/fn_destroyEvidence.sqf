/*
File: destroy evidence
*/
private["_curtarget","_unit"];

_curTarget = CurrentCursorTarget;
_evidence = _curTarget getVariable ["evidence",[]];
_index = (count _evidence) - 1;
if(_index == -1) exitWith { ["Nie było czego niszczyć", false] call domsg; };
_selectedEvidence = _evidence select _index;


_evidence deleteAt _index;
_curTarget setVariable ["evidence", _evidence, true];
["Zniszczyłeś dowody.", false] call domsg;