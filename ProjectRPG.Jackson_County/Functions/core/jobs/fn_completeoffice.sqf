hint "Wynająłeś biuro!";

player setvariable ["office",currentcursortarget,false];
myoffice = getpos currentcursortarget;
[250] call Client_fnc_sl_removeCash_secure;
closedialog 0;