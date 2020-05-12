if(callInProgress) exitwith { 
	["Du Telefonierst doch schon!", false] spawn domsg; 
	//[] call client_fnc_currentcallMenu; 
};
if(PhonesRinging) exitwith { 
	["Verbinde..!", false] spawn domsg;
	[CurrentCaller] spawn client_fnc_answerCall;
};
if(TryingCall) exitwith { 
	["Warten Sie, bis der Anruf beendet ist!", false] spawn domsg; 
};
["Sie starten einen neuen Anruf!", false] spawn domsg; 
[] call client_fnc_callMenu;