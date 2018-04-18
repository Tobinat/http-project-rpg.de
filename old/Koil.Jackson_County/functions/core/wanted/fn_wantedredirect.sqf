//SUSPECTID / OFFICERID / CHARGES / STATUS / EVIDENCE / activate


_currentitemindex = lbCurSel 1120;
if (_currentitemindex == -1) exitWith {};
_status2 = lbData [1120, _currentitemindex];
currentcursortarget = _status2;

closedialog 0;
sleep 0.15;
createdialog "insertCriminal";