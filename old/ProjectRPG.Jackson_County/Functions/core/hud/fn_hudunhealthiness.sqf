disableSerialization;
	424 cutfadeout 1; 
if(client_unhealthiness > 30) then {

	424 cutRsc ["HUDAddiction","PLAIN"]; 
	if(client_unhealthiness > 90) exitwith {};
	_severity = round(client_unhealthiness / 10);
	uisleep _severity; 
	424 cutfadeout 1; 
};

