disableSerialization;


_display = findDisplay 5111;
_Btn4 = _display displayCtrl 1119;

_status = lbData[911,lbCurSel (911)];
_status = call compile format["%1", _status];



_ID = _status select 0;
_wantedlevel = _status select 1;
_criminal = _status select 2;
_crime = _status select 3;
_officer = _status select 4;


_Btn4 ctrlSetStructuredText parsetext format["CASE ID: %1 - Wanted Level: %2  <br/> Suspect: %3 - %4  <br/> Crime: %5  <br/> Officer: %6 - %7 ", _ID, _wantedlevel, _criminal select 0, _criminal select 1, _crime, _officer select 0, _officer select 1];
_btn4 ctrlCommit 0;