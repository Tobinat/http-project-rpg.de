/*
Set Current Level // Koil
*/
tryingcall = false;

phonesringing = false;

client_fnc_checkPhone = {

	_radios = player call TFAR_fnc_radiosList;

	if(count _radios > 0) then {
		if([(call TFAR_fnc_activeSwRadio),"cg_tabletd"] call TFAR_fnc_isSameRadio) then {  

		} else {
			_myradio = call TFAR_fnc_ActiveSwRadio;
			player unassignitem _myradio;
			player removeitem _myradio;
			player additem "cg_tabletd";
			player assignitem "cg_tabletd";
		};
	} else {
		player additem "cg_tabletd";
		player assignitem "cg_tabletd";
	};

	call TFAR_fnc_HideHint;

};

client_fnc_resetCallSpawn = {
	player setvariable["PhoneCallNumber",0,true];
	player setvariable["PhoneID",0,true];
	player setVariable ["tf_unable_to_use_radio", true];
	//sleep 5;
	callInProgress = false;
	myCallOwner = player;
	_mynumber = getPlayerUID player;
	_channel = [(call TFAR_fnc_ActiveSwRadio),"cg_tabletd"] call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, _mynumber] call TFAR_fnc_SetChannelFrequency;
	call TFAR_fnc_HideHint;	
};

[] call client_fnc_checkPhone;
[] spawn client_fnc_resetCallSpawn;


if(client_karma > 999) then {
	karma_level = client_karma / 400;
	karma_level = floor (karma_level);
} else {
	karma_level = 0;	
};

if(karma_level > 80) then {
	karma_level = 80;
};

[format["Twój poziom reputacji to: %1",karma_level], true] spawn domsg;

