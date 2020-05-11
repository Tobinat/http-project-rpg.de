params["_channel"];

sleep 2;

if (myCallOwner != player) then { [] remoteexec ["client_fnc_resetcall",myCallOwner]; };
if !(isNil calledplayer) then { [] remoteexec ["client_fnc_resetcall",calledplayer]; calledplayer = nil; };

if (myjob =="EMS") then {
	player setvariable["PhoneCallNumber",33.1,true];
	player setvariable["PhoneID",33.1,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), 1, 33.1] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	tryingcall = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	["Du bist jetzt im FD-Funk!", false] spawn domsg;
};
if (myjob =="Fire") then {
	player setvariable["PhoneCallNumber",33.1,true];
	player setvariable["PhoneID",33.1,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), 1, 33.1] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	tryingcall = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	["Du bist jetzt im FD-Funk!", false] spawn domsg;
};
if (myjob =="Cop") then {
	player setvariable["PhoneCallNumber",33.3,true];
	player setvariable["PhoneID",33.3,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), 1, 33.3] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	tryingcall = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	["Du bist jetzt im Sheriff-Funk!!", false] spawn domsg;
};