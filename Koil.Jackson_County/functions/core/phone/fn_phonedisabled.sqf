	if(PhoneDisabled) then {
		PhoneDisabled = false;
		["Your calls are enabled!", false] spawn domsg; 
	} else {
		PhoneDisabled = true;
		["Your calls are disabled!", false] spawn domsg; 
	};	