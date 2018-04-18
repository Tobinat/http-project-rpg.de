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


["Zostales wyznaczony do lawy przysieglych, otrzymasz $2000 jeśli proces dobiegnie końca. Czy sie zgadzasz?"] call client_fnc_questionPlayer;

uisleep 30;
closedialog 0;
_failed = true;

if(JuryDuty) then { 

	[_location] call client_fnc_jobMarker;
	["Zostales wyznaczony do lawy przysieglych, lokacja zostala oznaczona na mapie!", false] spawn domsg;
	[format["Nazwisko Twojego oficera to %1, dostaniesz wypłatę w wysokości $2000",_policeOfficerName], false] spawn domsg;	
	[format["%1 będzie przystępował do lawy przysieglych.",name player]] remoteexec ["domsg",_officer];

};
_n = 0;
while{JuryDuty} do {

	if( clientarrested || imRestrained || myJob != "None" ) exitwith {};

	if(player distance _location < 20) exitwith { _failed = false; ["Dotarłes do sadu", false] spawn doquickmsg; }; 
	uisleep 1;
	_n = _n + 1;
	if(_n > 600) exitwith { [format["%1 nie zjawił się mimo bycia lawnikiem.",name player]] remoteexec ["domsg",_officer]; };
};

if(!_failed) then {
	
	[getpos _officer] call client_fnc_jobMarker;

	[format["Nazwisko Twojego oficera to %1, odbierz od niego $2000.",_policeOfficerName], false] spawn domsg;
	while{JuryDuty} do {
		if( clientarrested || imRestrained || myJob != "None" ) exitwith {};
		if(player distance _officer < 5) exitwith { ["Dotarles do sadu", false] spawn doquickmsg; [2000] call Client_fnc_sl_addCash_secure; }; 
		uisleep 1;
		mypositionJob = getpos _officer;
		[getpos _officer] call client_fnc_jobMarker;
	};

	["Lawa przysieglych zaraz sie zbierze, zapytaj swojego oficera o wskazówki.", false] spawn doquickmsg;
	[] call client_fnc_jobEnd;

} else {

	["Jako lawnik nie stawiles sie w sadzie.", false] spawn doquickmsg;
	
};

