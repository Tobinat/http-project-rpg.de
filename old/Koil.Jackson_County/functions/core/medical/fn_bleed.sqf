params["_newParam"];

if(isNil "bleedingEffect") then { bleedingEffect = 0; };

if(bleedingEffect < 0) then { bleedingEffect = 0};

if(bleedingEffect > 0) exitwith { bleedingEffect = bleedingEffect + _newParam; };
bleedingEffect = _newParam;
while {bleedingEffect > 0} do {
	999 cutRsc ["HUDbleed","PLAIN"]; 
	uisleep 3;
	["Remove",0.05] call Client_Fnc_DoHealth;
	bleedingEffect = bleedingEffect - 3;
};