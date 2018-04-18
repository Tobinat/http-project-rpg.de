_time = _this select 0;
_time = call compile format["%1",_time];

if(isNil "secondsLeft") then {
	secondsLeft = _time * 60;
} else {
	secondsLeft = secondsleft + (_time * 60);
	hint "Do wyroku doliczono dodatkowy czas za poprzednia probę ucieczki.";
};
//convert _time from seconds to minutes.
_reason = _this select 1;

player setpos [5618.46,6335.5,0.00143433];
removeuniform player;
player adduniform "noRP_Jail";
ClientArrested = true;
_escaped = false;
imrestrained = false;
player setVariable ["coplevel", 0, false];
_update = 0;
while{ClientArrested} do {
	if(getpos player distance [5556.2,6291.29,0.00143433] > 350) exitwith { _escaped = true; };
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
	hint "Skonczyles odsiadke";
	player setpos [5538.63,6258.06,0.00143433];
	[player] remoteExec ["server_fnc_wantedRemove2",2];
} else {
	hint "Uciekłeś z wiezienia!";
	
//_suspectID = name player;
_Suid = getplayeruid player;
//_officerID = "Departament Więziennictwa";
_charges = format["Ucieczka z wiezienia, pozostało: %1 miesięcy", (secondsLeft/60)];
_status = 5;
//_evidence = []; // lodged later.
//_active = 1; // enabled instantly

	_data = [_Suid, "911", _charges, _status];
	["personal", _data] remoteExec ["server_fnc_slpdCaseAdd", 2];
//[_suspectID, _Suid, _officerID, "", _charges, _status, _evidence, _active] remoteexec ["server_fnc_addcriminal",2];
//[_suspectID,_Suid,_officerID,_charges,_status,_evidence,_active] remoteexec ["server_fnc_addcriminal",2];
};

