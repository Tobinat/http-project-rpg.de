disableSerialization;
421 cutfadeout 1; 

if(myhealth > 0) then {
	if(myhealth > 0.8) exitwith { 421 cutRsc ["HUDHealth3","PLAIN"]; };
	if(myhealth > 0.5) exitwith { 421 cutRsc ["HUDHealth2","PLAIN"]; };
	if(myhealth > 0.2) exitwith { 421 cutRsc ["HUDHealth1","PLAIN"]; };
};