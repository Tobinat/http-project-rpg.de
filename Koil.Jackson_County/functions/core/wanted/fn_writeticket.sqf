player playmove "vvv_anim_ticket";

disableSerialization;
_display = findDisplay 1333;

_ctrl = _display displayCtrl 1400;
_amount = ctrlText _ctrl; 

_ctrl = _display displayCtrl 1401;
_officerSignature = ctrlText _ctrl; 

_ctrl = _display displayCtrl 1402;
_reason = ctrlText _ctrl; 

[_amount, _officerSignature, _reason,player] remoteExec ["client_fnc_taketicket",CurrentCursorTarget];
closedialog 0;