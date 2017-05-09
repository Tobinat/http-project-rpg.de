disableSerialization;
	422 cutfadeout 1; 
if(client_hunger < 70) then {
	422 cutRsc ["HUDFood","PLAIN"]; 
	if(client_hunger < 10) exitwith {};
	_severity = 130 - client_hunger;
	_severity = round(_severity / 10);
	uisleep _severity; 
	422 cutfadeout 1; 
};

