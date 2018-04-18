playSound "cgphone_click";
["Osoba dolaczyla do rozmowy!", false] spawn domsg; 

if(myJob IN ["Cop","EMS","Fire"]) then {

	myPhoneCall = getPlayerUID player;
	player setvariable["PhoneID",myPhoneCall,true];
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, myPhoneCall] call TFAR_fnc_SetChannelFrequency;
	call TFAR_fnc_HideHint;		

};