if(callInProgress) exitwith { 
	["You are already in a phone call!", false] spawn domsg; 
	//[] call client_fnc_currentcallMenu; 
};
if(PhonesRinging) exitwith { 
	["Connecting Current Call!", false] spawn domsg;
	CurrentCaller spawn client_fnc_answerCall;
};
if(TryingCall) exitwith { 
	["Please wait til your current call connection ends!", false] spawn domsg; 
};
["You are starting a new call!", false] spawn domsg; 
[] call client_fnc_callMenu; 





