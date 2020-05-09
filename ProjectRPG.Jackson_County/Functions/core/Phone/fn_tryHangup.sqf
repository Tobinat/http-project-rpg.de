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
	[] call client_fnc_resetcall;
	cidhu = player getVariable "PhoneID";
	{
		_phonetargetid = _x getVariable "PhoneID";
		if (_phonetargetid == cidhu) then {
			[] remoteexec ["client_fnc_hangup",_x];
		};
	} foreach playableUnits;
	cidhu = nil;
};
if(callInProgress) exitwith { 
	["Aufgelegt.", false] spawn domsg; 
	[] call client_fnc_hangup;
	[] remoteexec ["client_fnc_resetcall",myCallOwner];
};

["Aufgelegt.", false] spawn domsg; 
[] call client_fnc_resetcall;