closedialog 0;
uisleep 0.15;
createdialog "np_ticketcivilian";
uisleep 0.15;
disableSerialization;
_amount = _this select 0;
_officerSignature = _this select 1;
_reason = _this select 2;
_cop = _this select 3;

_display = findDisplay 1333; 

_text = _display displayCtrl 1400;
_text ctrlSetStructuredText parseText format["%1",_amount];

_text = _display displayCtrl 1401;
_text ctrlSetStructuredText parseText format["%1",_officerSignature];

_text = _display displayCtrl 1402;
_text ctrlSetStructuredText parseText format["%1",_reason];

_text = _display displayCtrl 1403;
_text ctrlSetStructuredText parseText format["%1",str(_cop)];
