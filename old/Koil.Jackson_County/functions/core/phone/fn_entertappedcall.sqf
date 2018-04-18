myCallOwner = _this select 0;
myPhoneCall = getPlayerUID myCallOwner;

player setvariable["PhoneID",myPhoneCall,true];
player setVariable ["tf_unable_to_use_radio", false];

_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
_channel = _channel + 1;

[(call TFAR_fnc_activeSwRadio), _channel, myPhoneCall] call TFAR_fnc_SetChannelFrequency;
call TFAR_fnc_HideHint;

_total = myCallOwner getVariable "PhonecallNumber";
_total = _total + 1;	
myCallOwner setvariable["PhoneCallNumber",_total,true];

[] spawn client_fnc_callProgress;