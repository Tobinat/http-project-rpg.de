/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params: 
		Description: Reads personal data and display it on computer screen.
		Return: none
*/
_ticket_data = _this select 0;
_officer = _this select 1;
disableSerialization;
_data = _this select 0;
_ok = createDialog "kruk_slpd_ticket_receive";
if(!_ok) exitWith { hint "Dialog not created"; };
_display = findDisplay 666007;
_edit_amount = _display displayCtrl 1001;
_edit_points = _display displayCtrl 1002;
_edit_reason = _display displayCtrl 1003;
_text_title = _display displayCtrl 1301;

//_edit_amount, _edit_points, _edit_reason
_amount = parseNumber(_ticket_data select 0);
_points = parseNumber(_ticket_data select 1);
_reason = _ticket_data select 2;

_text_title ctrlSetText format["Mandat od: %1", name _officer];

_edit_amount ctrlSetText format["$%1",_amount];
if(_points == 0) then { _edit_points ctrlSetText format["%1 punktów",_points]; };
if(_points == 1) then { _edit_points ctrlSetText format["%1 punkt",_points]; };
if(_points > 1 && _points < 5) then { _edit_points ctrlSetText format["%1 punkty",_points]; };
if(_points >= 5) then { _edit_points ctrlSetText format["%1 punktów",_points]; };
_edit_reason ctrlSetText _reason;
kruk_slpd_ticket_data = [[_amount, _points, _reason], _officer];