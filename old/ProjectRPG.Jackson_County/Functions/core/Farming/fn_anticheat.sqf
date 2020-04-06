






_detection = _this select 0;
_information = _this select 1;





//spam detection for selling etc.
if(_detection == 1) exitwith {

	if(isNil "faultcount") exitwith { 
		faultcount = 1; 
	};

	faultcount = faultcount + 1;

	if(faultcount > 5) then { format["ANTICHEAT: %4 - %1 - %2 - %3",faultcount,name player, getplayeruid player,_information] remoteExec ["diag_log", 2];  };
};