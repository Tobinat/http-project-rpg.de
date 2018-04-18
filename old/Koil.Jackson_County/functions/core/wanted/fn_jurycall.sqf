// remove jail / restrained / dead / 
// send this to 7 random people - some might show, some might not.
// 
// [name player, getpos player, player] spawn client_fnc_jurycall;




private["_location","_policeOfficerName","_failed"];

_policeOfficerName = _this select 0;
_location = _this select 1;
_officer = _this select 2;

if(isNil "JuryDuty") then { JuryDuty = false; };
	
if( clientarrested || imRestrained || ( driver ( vehicle player ) == player && vehicle player != player ) || myJob != "None" || JuryDuty ) exitwith {};


["You have been summoned to Jury Duty, you will be paid $2000 upon completion, do you accept?"] call client_fnc_questionPlayer;

uisleep 30;
closedialog 0;
_failed = true;

if(JuryDuty) then { 

	[_location] call client_fnc_jobMarker;
	["You have been summoned to Jury Duty, Location is marked on the map!", false] spawn domsg;
	[format["Your Officer Name is %1, you will be paid $2000",_policeOfficerName], false] spawn domsg;	
	[format["%1 will be attending Jury Duty.",name player]] remoteexec ["domsg",_officer];

};
_n = 0;
while{JuryDuty} do {

	if( clientarrested || imRestrained || myJob != "None" ) exitwith {};

	if(player distance _location < 20) exitwith { _failed = false; ["You have arrived to the Court Location", false] spawn doquickmsg; }; 
	uisleep 1;
	_n = _n + 1;
	if(_n > 600) exitwith { [format["%1 failed to attend Jury Duty after accepting.",name player]] remoteexec ["domsg",_officer]; };
};

if(!_failed) then {
	
	[getpos _officer] call client_fnc_jobMarker;

	[format["Your Officer Name is %1, find him for $2000.",_policeOfficerName], false] spawn domsg;
	while{JuryDuty} do {
		if( clientarrested || imRestrained || myJob != "None" ) exitwith {};
		if(player distance _officer < 5) exitwith { ["You have arrived to the Court Location", false] spawn doquickmsg; [2000] call Client_fnc_addCash; }; 
		uisleep 1;
		mypositionJob = getpos _officer;
		[getpos _officer] call client_fnc_jobMarker;
	};

	["Jury Duty should start soon, please ask your officer for direction.", false] spawn doquickmsg;
	[] call client_fnc_jobEnd;

} else {

	["You skipped Jury Duty.", false] spawn doquickmsg;
	
};

