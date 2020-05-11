if(PhonesRinging) exitwith {
	PhonesRinging = false;
	["Du wirst angerufen.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};
if(tryingCall) exitwith {
	tryingcall = FALSE;
	["Aufgelegt.", false] spawn domsg; 
	[] call client_fnc_resetcall;
};
if(myCallOwner == player) exitwith {
	["Aufgelegt.", false] spawn domsg;
	[] remoteexec ["client_fnc_resetcall",calledplayer];
	[] call client_fnc_resetcall;
	calledplayer = nil;
};
if(callInProgress) exitwith { 
	["Aufgelegt.", false] spawn domsg; 
	//[] call client_fnc_hangup;
	[] call client_fnc_resetcall;
	[] remoteexec ["client_fnc_resetcall",myCallOwner];
};

["Aufgelegt.", false] spawn domsg; 
[] call client_fnc_resetcall;