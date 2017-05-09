	CurrentCaller = _this select 0;
	_type = _this select 1;
	_haltphone = false;
	_radios = player call TFAR_fnc_radiosList;
	if(count _radios > 0) then {
		if(_type == 1) then {
			if( phoneDisabled ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["A call from %1 went to your message bank! (Phone Disabled)","Anonymous"], false] spawn domsg; };	
			if( callInProgress || PhonesRinging ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["A call from %1 went to your message bank! (In a Call) ","Anonymous"], false] spawn domsg; };	
			if( client_battery < 5 ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["A call from %1 went to your message bank! (Low Battery) ","Anonymous"], false] spawn domsg; };
		} else {
			if( phoneDisabled ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["A call from %1 went to your message bank! (Phone Disabled)",name CurrentCaller], false] spawn domsg; };	
			if( callInProgress || PhonesRinging ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["A call from %1 went to your message bank! (In a Call) ",name CurrentCaller], false] spawn domsg; };	
			if( client_battery < 5 ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["A call from %1 went to your message bank! (Low Battery) ",name CurrentCaller], false] spawn domsg; };
		};
		PhonesRinging = true;
		_endme = 0;
		if(_haltphone) exitwith {};
		while{PhonesRinging} do {
			playSound "cgphone_call";
			if(_type == 1) then {
				[format["You are being called by %1!","Anonymous"], false] spawn domsg; 
			} else {
				[format["You are being called by %1!",name currentcaller], false] spawn domsg; 
			};
			sleep 5;
			_endme = _endme + 5;
			if(_endme > 20) exitwith { ["You missed a call!", false] spawn domsg;  };
		};

		PhonesRinging = false;		
	} else {
		currentCaller remoteExec ["fnc_busyAnswer",currentCaller];
		["You missed a call!", false] spawn domsg; 
	};