
	playSound "cgphone_hangup";
	if(player == myCallOwner) exitwith {
		[] call client_fnc_resetcall;
		callInProgress = false;
	};
	_total = myCallOwner getVariable "PhonecallNumber";
	_total = _total - 1;
	myCallOwner setvariable["PhoneCallNumber",_total,true];
	[] call client_fnc_resetcall;
	callInProgress = false;
