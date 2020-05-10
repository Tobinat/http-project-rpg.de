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
	//[] call client_fnc_resetcall;
	{
		_playerphoneid = player getVariable "PhoneID";
		_phonetargetid = _x getVariable "PhoneID";
		if (_phonetargetid == _playerphoneid) then {
			//[] remoteexec ["client_fnc_hangup",_x];
			[] remoteexec ["client_fnc_resetcall",_x];
		};
	} foreach playableUnits;
	cidhu = nil;
};
if(callInProgress) exitwith { 
	["Aufgelegt.", false] spawn domsg; 
	//[] call client_fnc_hangup;
	[] call client_fnc_resetcall;
	[] remoteexec ["client_fnc_resetcall",myCallOwner];
};

["Aufgelegt.", false] spawn domsg; 
[] call client_fnc_resetcall;