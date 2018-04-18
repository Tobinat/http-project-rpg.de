disableSerialization;
	423 cutfadeout 1; 
if(client_thirst < 70) then {
	423 cutRsc ["HUDThirst","PLAIN"]; 
	if(client_thirst < 10) exitwith {};
	_severity = 130 - client_thirst;
	_severity = round(_severity / 10); 
	uisleep _severity; 
	423 cutfadeout 1; 
};
