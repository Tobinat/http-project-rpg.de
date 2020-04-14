_patient = _this select 0;
_myInjuries = _patient getVariable "playerInjuries";

if ( (_myInjuries select 10) == 5 ) then {
	["Der Test auf SARS-CoV-2 (COVID-19) ist Positiv.", false] spawn domsg;
} else {
	["Der Test auf SARS-CoV-2 (COVID-19) ist negativ.", false] spawn domsg;
};

closedialog 0;
sleep 3;