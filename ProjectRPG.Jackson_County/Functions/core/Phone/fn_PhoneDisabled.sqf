	if(PhoneDisabled) then {
		PhoneDisabled = false;
		["Telefon aktiviert!", false] spawn domsg; 
	} else {
		PhoneDisabled = true;
		["Lautlos!", false] spawn domsg; 
	};	