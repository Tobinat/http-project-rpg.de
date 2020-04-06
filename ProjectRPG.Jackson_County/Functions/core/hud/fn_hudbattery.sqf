disableSerialization;
	425 cutfadeout 1; 
if(client_battery < 70) then {

	425 cutRsc ["HUDBattery","PLAIN"]; 
	if(client_battery < 10) exitwith {};
	_severity = 100 - client_battery;
	_severity = round(_severity / 10);
	uisleep _severity; 
	425 cutfadeout 1; 
};