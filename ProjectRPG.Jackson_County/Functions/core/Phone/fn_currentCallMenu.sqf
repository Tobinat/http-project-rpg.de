if(!callInProgress) exitwith { ["You are not in a call!", false] spawn domsg;  };
closedialog 0;
private["_display","_list","_side"];
disableSerialization;
_myID = player getVariable "PhoneID";
createdialog "client_CurrentPhoneCall_Menu";
uisleep 0.05;
_display = findDisplay 5337;
_list = _display displayCtrl 5338;
lbClear _list;
{
	_userID = _x getvariable "PhoneID";
	if( _userID == _myID && _x != player) then {
		_list lbAdd format["%1 - %2", name _x];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	};
} foreach playableUnits;