	if(PhoneDisabled) then {
		PhoneDisabled = false;
		["Polaczenia aktywne!", false] spawn domsg; 
	} else {
		PhoneDisabled = true;
		["Polaczenia nieaktywne!", false] spawn domsg; 
	};	