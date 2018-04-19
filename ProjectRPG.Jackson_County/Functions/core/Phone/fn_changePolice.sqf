/*
player setvariable["PhoneCallNumber",33.3,true];
player setvariable["PhoneID",33.3,true];
_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
_channel = _channel + 1;
[(call TFAR_fnc_activeSwRadio), _channel, 33.3] call TFAR_fnc_SetChannelFrequency;
callInProgress = false;
myCallOwner = player;
player setVariable ["tf_unable_to_use_radio", false];
call TFAR_fnc_HideHint;
["Sie sind verbunden mit der Notrufzentralle des SLPD!", false] spawn domsg;
*/

if (myjob =="EMS") then {
	player setvariable["PhoneCallNumber",33.1,true];
	player setvariable["PhoneID",33.1,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, 33.1] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	["Sie sind verbunden mit der Notrufzentrale des SLMD!", false] spawn domsg;
};
if (myjob =="Fire") then {
	player setvariable["PhoneCallNumber",33.1,true];
	player setvariable["PhoneID",33.1,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, 33.1] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	["Sie sind verbunden mit der Notrufzentrale des SLFD!", false] spawn domsg;
};
if (myjob =="Cop") then {
	player setvariable["PhoneCallNumber",33.3,true];
	player setvariable["PhoneID",33.3,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, 33.3] call TFAR_fnc_SetChannelFrequency;
	callInProgress = false;
	myCallOwner = player;
	player setVariable ["tf_unable_to_use_radio", false];
	call TFAR_fnc_HideHint;
	["Sie sind verbunden mit der Notrufeinsatz-Zentrale!", false] spawn domsg;
};