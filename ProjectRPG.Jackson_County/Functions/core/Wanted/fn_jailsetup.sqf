_time = _this select 0;
_time = call compile format["%1",_time];

if(isNil "secondsLeft") then {
	secondsLeft = _time * 60;
} else {
	secondsLeft = secondsleft + (_time * 60);
	hint "Zusätzliche Zeit wegen frührem Fluchtversuch.";
};
//convert _time from seconds to minutes.
_reason = _this select 1;

player setpos [5618.46,6335.5,0.00143433];
removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;
removeuniform player;

player adduniform "noRP_Jail";
player addbackpack "";
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
	hint "Sie haben ihre Zeit abgesessen.";
	player setpos [5538.63,6258.06,0.00143433];
	_clothingarray = ["np_shirt_1","np_shirt_2","np_shirt_3","np_shirt_4","np_shirt_5","np_shirt_6","np_shirt_7","np_shirt_8","vvv_ropa_comun_f_1","vvv_ropa_comun_f_2","vvv_ropa_comun_f_4","vvv_ropa_comun_f_5","vvv_ropa_comun_f_6","vvv_ropa_comun_f_7","vvv_ropa_comun_f_8","vvv_ropa_comun_f_9","vvv_ropa_comun_f_10"];
	_clothing = _clothingarray call BIS_FNC_SELECTRANDOM;
	removeuniform player;
	player adduniform _clothing; 
	[player] remoteExec ["server_fnc_wantedRemove2",2];
} else {
	hint "Du bist aus dem Gefängnis entkommen!";
	
//_suspectID = name player;
_Suid = getplayeruid player;
//_officerID = "Departament of Corrections";
_charges = format["Flucht aus dem Gefängnis,verbleibende Zeit: %1 Monat/e", (secondsLeft/60)];
_status = 5;
//_evidence = []; // lodged later.
//_active = 1; // enabled instantly

	_data = [_Suid, "911", _charges, _status];
	["personal", _data] remoteExec ["server_fnc_slpdCaseAdd", 2];
//[_suspectID, _Suid, _officerID, "", _charges, _status, _evidence, _active] remoteexec ["server_fnc_addcriminal",2];
//[_suspectID,_Suid,_officerID,_charges,_status,_evidence,_active] remoteexec ["server_fnc_addcriminal",2];
};

