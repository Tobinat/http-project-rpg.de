	if(PhoneDisabled) then {
		PhoneDisabled = false;
		["Aktive Anrufe!", false] spawn domsg; 
	} else {
		PhoneDisabled = true;
		["Inaktive Verbindung!", false] spawn domsg; 
	};	