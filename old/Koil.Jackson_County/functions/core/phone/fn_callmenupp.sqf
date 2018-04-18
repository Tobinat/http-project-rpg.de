private["_display","_list","_side"];
disableSerialization;


createdialog "client_PhoneCallPP_Menu";

uisleep 0.05;
_display = findDisplay 5337;
_list = _display displayCtrl 5338;
lbClear _list;
{
	if(_x != player) then {
		_list lbAdd format["%1", name _x];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	};
} foreach playableUnits;

if(myjob != "Cop" && myjob != "EMS" && myjob != "Fire") then {
		player setvariable["PhoneCallNumber",0,true];
		player setvariable["PhoneID",0,true];
		callInProgress = false;
		myCallOwner = player;
		_mynumber = getPlayerUID player;
		_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
		_channel = _channel + 1;
		[(call TFAR_fnc_activeSwRadio), _channel, _mynumber] call TFAR_fnc_SetChannelFrequency;
		call TFAR_fnc_HideHint;
};