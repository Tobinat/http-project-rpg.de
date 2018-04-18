disableSerialization;

_status = lbData[9001,lbCurSel (9001)];
_status = call compile format["%1", _status];

if(!dialog) then {	createdialog "openMail"; };

uisleep 0.05;

_display = findDisplay 9999;


_list = _display displayCtrl 9001;

lbClear _list;


_n = 0;
{
	_list lbAdd format["MAIL: %1", _x select 2];
	_list lbSetdata [(lbSize _list)-1,str(_n)];
	_n = _n + 1;
} foreach mail;


if(isNil "_status") exitwith {};

_selectedmessage = mail select _status;

_Btn4 = _display displayCtrl 9110;
_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'>TITLE: %2 <t color='#ffffff'> <br/><br/> %1 <t color='#33CC33'> <br/><br/> NADAWCA: %3", _selectedmessage select 0, _selectedmessage select 1, _selectedmessage select 2];
_btn4 ctrlCommit 0;









