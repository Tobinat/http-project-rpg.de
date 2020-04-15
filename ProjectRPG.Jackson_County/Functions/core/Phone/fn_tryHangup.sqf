if(PhonesRinging) exitwith { 
	PhonesRinging = false;
	["Du wirst angerufen.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};
if(tryingCall) exitwith {
	tryingcall = FALSE;
	["Verbindung beenden.", false] spawn domsg; 
	[] call client_fnc_resetcall;
};
if(myCallOwner == player) exitwith {
	["Verbindung beenden.", false] spawn domsg; 
	[] call client_fnc_resetcall;	
};
if(callInProgress) exitwith { 
	["Verbindung getrennt.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};

["Konversationen löschen.", false] spawn domsg; 
[] call client_fnc_resetcall; 