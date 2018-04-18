// set variable candidates to
// CANDIDATES = [];
// CANDIDATES PUSHBACK [player name,0];
disableserialization;
if(isNil "candidates") exitwith { hint "Wybory nie są obecnie przeprowadzane"; closedialog 0; };

_votenumber = call compile format["%1",(lbData[9001,(lbCurSel 9001)])];

_voteUpdate = (candidates select _votenumber) select 1;
_voteupdate = _voteupdate + 1;

(candidates select _votenumber) SET [1, _voteupdate];

publicvariable "candidates";
closedialog 0;