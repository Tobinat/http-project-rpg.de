if(PhonesRinging) exitwith { 
	PhonesRinging = false;
	["Wyslano gluchy sygnal.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};
if(tryingCall) exitwith {
	tryingcall = FALSE;
	["Koncze polaczenie.", false] spawn domsg; 
	[] call client_fnc_resetcall;
};
if(myCallOwner == player) exitwith {
	["Koncze polaczenie.", false] spawn domsg; 
	[] call client_fnc_resetcall;	
};
if(callInProgress) exitwith { 
	["Opuszczanie polaczenia.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};

["Resetowanie listy rozmow.", false] spawn domsg; 
[] call client_fnc_resetcall; 