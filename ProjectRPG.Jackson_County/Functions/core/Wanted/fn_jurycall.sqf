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


["Sie wurden in den Jruydienst gerufen. Wenn Sie teilnehmen erhalten Sie 2.000$ aber nur wenn Sie bis zum Ende der Verhandlung bleiben. Stimmen Sie zu?"] call client_fnc_questionPlayer;

uisleep 30;
closedialog 0;
_failed = true;

if(JuryDuty) then { 

	[_location] call client_fnc_jobMarker;
	["Sie haben den Dienst als Jury angenommen, der Standort wurde auf der Karte markiert.", false] spawn domsg;
	[format["Der Name des Police Officers ist %1, Sie erhalten eine Zahlung in der Höhe von 2.000$",_policeOfficerName], false] spawn domsg;	
	[format["%1 wird sich der Jury anschließen.",name player]] remoteexec ["domsg",_officer];

};
_n = 0;
while{JuryDuty} do {

	if( clientarrested || imRestrained || myJob != "None" ) exitwith {};

	if(player distance _location < 20) exitwith { _failed = false; ["Dotarłes do sadu", false] spawn doquickmsg; }; 
	uisleep 1;
	_n = _n + 1;
	if(_n > 600) exitwith { [format["%1 ist nicht aufgetaucht,obwohl er sich Angemeldet hat.",name player]] remoteexec ["domsg",_officer]; };
};

if(!_failed) then {
	
	[getpos _officer] call client_fnc_jobMarker;

	[format["Der Name des Police Officers ist %1, von Ihm bekommen Sie die 2.000$.",_policeOfficerName], false] spawn domsg;
	while{JuryDuty} do {
		if( clientarrested || imRestrained || myJob != "None" ) exitwith {};
		if(player distance _officer < 5) exitwith { ["Dotarles do sadu", false] spawn doquickmsg; [2000] call Client_fnc_sl_addCash_secure; }; 
		uisleep 1;
		mypositionJob = getpos _officer;
		[getpos _officer] call client_fnc_jobMarker;
	};

	["Die Jury wird sich versammeln und Abstimmen.", false] spawn doquickmsg;
	[] call client_fnc_jobEnd;

} else {

	["Als Jury müssen sie eine entscheidung fällen.", false] spawn doquickmsg;
	
};

