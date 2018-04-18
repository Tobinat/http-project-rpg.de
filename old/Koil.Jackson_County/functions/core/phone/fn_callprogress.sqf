callInProgress = true;

if(isNil "trackedby") then { trackedby = []; };

if(count trackedby > 0) then {
	if(str CurrentCursorTarget find "cabinatelefonica" == -1) then {
		[mycallowner,player] remoteexec ["client_fnc_trackedcall",trackedby];
	};
};

[] spawn {
	while{callInProgress} do {
		_total = myCallOwner getVariable "PhonecallNumber";
		playSound "cgphone_static";
		_total = 1;
		[format["You were just charged %1 dollars for this call!",_total], false] spawn domsg;
		[round(_total)] spawn client_fnc_removecash;
		sleep 140;
	};
};

[] spawn {
	sleep 7;
	while{callInProgress} do {
		if( isNull myCallOwner ) exitwith { [] call client_fnc_resetcall; };
		_total = myCallOwner getVariable "PhonecallNumber";	
		if( _total < 2 ) exitwith { [] call client_fnc_resetcall; };
		if( deadPlayer && myCallOwner != player ) exitwith { ["Call Dropped (You were downed)", false] spawn domsg; [] call client_fnc_hangup };	
		if( client_battery < 5 ) exitwith { ["Call Dropped (Low Battery)", false] spawn domsg; [] call client_fnc_hangup };	
		sleep 5;
	};
};