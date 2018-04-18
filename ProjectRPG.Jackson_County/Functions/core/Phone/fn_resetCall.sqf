//if(myjob == "Cop") exitwith { [] call client_fnc_ChangePolice; };
if(myjob in ["Cop","EMS","Fire"]) exitwith { [] call client_fnc_ChangePolice; };
playSound "cgphone_hangup";
player setvariable["PhoneCallNumber",0,true];
player setvariable["PhoneID",0,true];
callInProgress = false;
myCallOwner = player;
_mynumber = getPlayerUID player;
if(myjob != "Cop" && myjob != "EMS" && myjob != "Fire") then {
	player setVariable ["tf_unable_to_use_radio", true];
};
_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
_channel = _channel + 1;
[(call TFAR_fnc_activeSwRadio), _channel, _mynumber] call TFAR_fnc_SetChannelFrequency;
call TFAR_fnc_HideHint;