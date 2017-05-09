if(isNil "basket") exitwith {};
if(ropelength myrope < 1.3) exitwith { [] spawn client_fnc_loadbasket; };
ropeUnwind [myrope, 0.5, -3, true];	
