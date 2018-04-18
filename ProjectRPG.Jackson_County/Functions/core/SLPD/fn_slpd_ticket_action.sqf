/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params:
		Description: Reads personal data and display it on computer screen.
		Return: none
*/
_type = _this select 0;
_data = kruk_slpd_ticket_data select 0;
_officer = kruk_slpd_ticket_data select 1;
_uid_officer = getPlayerUID _officer;
_uid_player = getPlayerUID player;
_name = name player;
_amount = _data select 0;
_points = _data select 1;
_reason = _data select 2;
kruk_slpd_ticket_data = nil;

_check = [2, _amount] call Client_fnc_sl_checkMoney_secure;
if(!_check) exitWith { [format["%1 nie zapłacił mandatu, gdyż nie ma wystarczająco pieniędzy.", _name]] remoteExec ["domsg", _officer]; };

if(_type == "accept") then {
	[_amount] call Client_fnc_sl_removeBank_secure;
	[format["%1 zapłacił mandat w wysokości $%2", _name, _amount]] remoteExec ["domsg", _officer];
	[_uid_player, _uid_officer, _amount, _reason, _points] remoteExec ["server_fnc_slpdTicketAdd", 2];
	_veh_points = player getVariable["veh_points",0];
	_veh_points = _veh_points + _points;
	player setVariable["veh_points",_veh_points,false];
	player playmove "vvv_anim_ticket";
} else {
	[format["%1 odmówił zapłacenia mandatu.", _name]] remoteExec ["domsg", _officer];
};
closeDialog 0;