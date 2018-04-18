_time = _this select 0;
_time = call compile format["%1",_time];

if(isNil "secondsLeft") then {
	secondsLeft = _time * 60;
} else {
	secondsLeft = secondsleft + (_time * 60);
	hint "You have had extra time added for a previous escape sentence.";
};
//convert _time from seconds to minutes.
_reason = _this select 1;

player setpos [5618.46,6335.5,0.00143433];
removeuniform player;
player adduniform "noRP_Jail";
ClientArrested = true;
_escaped = false;
imRestrained = false;
_update = 0;
while{ClientArrested} do {
	if(getpos player distance [5556.2,6291.29,0.00143433] > 250) exitwith { _escaped = true; };
	uisleep 1;
	secondsLeft = secondsLeft - 1;
	_update = _update + 1;
	if(secondsLeft == 0) exitwith {};
	if(_update == 300) then { 
		_update = 0;
		_time = secondsLeft / 60;
		_time = round(_time);
		[_time, _reason,player,false] remoteExec ["server_fnc_jailsetup",2];
	};
};
[0, _reason,player,false] remoteExec ["server_fnc_jailsetup",2];
ClientArrested = false;
//when jail time ends normally
if(!_escaped) then {
	hint "Your jail time is over, did you learn your lesson?";
	player setpos [5538.63,6258.06,0.00143433];
} else {
	hint "You escaped jail, you criminal!";
};

