tryingcall = true;
private["_total","_endme","_newTotal"];
_endme = 0;
_total = myCallOwner getVariable "PhonecallNumber";
_newTotal = _total + 1;
if(_total == 0) then {
	while{tryingCall} do {
		playSound "cgphone_call";
		sleep 5;
		_endme = _endme + 5;
		_total = myCallOwner getVariable "PhonecallNumber";
		if(_total == 1) exitwith { [] call client_fnc_answered; player call client_fnc_answercall; playSound "cgphone_static"; };
		if(_endme > 20) exitwith { [] call client_fnc_noanswer; };
	};
} else {
	while{tryingCall} do {
		playSound "cgphone_call";
		sleep 5;
		_endme = _endme + 5;
		_total = myCallOwner getVariable "PhonecallNumber";
		if(_total == _newTotal) exitwith { [] call client_fnc_answered; };
		if(_endme > 20) exitwith { [] call client_fnc_noanswer; };
	};	
};
tryingcall = false;