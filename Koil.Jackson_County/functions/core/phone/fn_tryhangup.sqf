if(PhonesRinging) exitwith { 
	PhonesRinging = false;
	["Sent busy dial tone.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};
if(tryingCall) exitwith {
	tryingcall = FALSE;
	["Stopping Current Connection.", false] spawn domsg; 
	[] call client_fnc_resetcall;
};
if(myCallOwner == player) exitwith {
	["Stopping Current Connection.", false] spawn domsg; 
	[] call client_fnc_resetcall;	
};
if(callInProgress) exitwith { 
	["Leaving Current Call.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};

["Resetting call list.", false] spawn domsg; 
[] call client_fnc_resetcall; 