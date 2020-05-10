	if(PhoneDisabled) then {
		PhoneDisabled = false;
		["Klingelton an!", false] spawn domsg; 
	} else {
		PhoneDisabled = true;
		["Lautlos!", false] spawn domsg; 
	};	