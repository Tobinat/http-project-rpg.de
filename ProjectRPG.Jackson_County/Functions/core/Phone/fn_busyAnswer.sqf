	tryingcall = false;
	playSound "cgphone_hangup";
	["Die Person ist nicht erreichbar.", false] spawn domsg;
	[] call client_fnc_resetcall;