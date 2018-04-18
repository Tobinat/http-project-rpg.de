//SUSPECTID / OFFICERID / CHARGES / STATUS / EVIDENCE / activate


_currentitemindex = lbCurSel 911;
if (_currentitemindex == -1) exitWith {};
_status = lbData [911, _currentitemindex];
_charges = ctrlText 1116;
currentcursortarget = call compile format ["%1",currentcursortarget];
_suspectID = [name currentcursortarget, getplayeruid currentcursortarget];
_officerID = [name player, getplayeruid player];
_evidence = []; // lodged later.
_active = 1; // enabled instantly

[_suspectID,_officerID,_charges,_status,_evidence,_active] remoteexec ["server_fnc_addcriminal",2];

closedialog 0;