client_kacCamera  = "CAMERA" camCreate (getPos player);  
showCinemaBorder true;   
client_kacCamera cameraEffect ["EXTERNAL", "BACK"];                              
client_kacCamera camSetFOV 1.2;  
client_kacCamera camSettarget player; 
client_kacCamera camCommit 5;

disableSerialization;
_display = findDisplay 1444;

_list = _display displayCtrl 1500;

lbClear _list;

{
	_list lbAdd format["%1", name _x];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach allplayers;

_list = _display displayCtrl 1501;

lbClear _list;

if (kif_admin == 1) then {

_list lbAdd format["%1", "Invisible On"];
_list lbSetdata [(lbSize _list)-1,str(5)];

_list lbAdd format["%1", "Invisible Off"];
_list lbSetdata [(lbSize _list)-1,str(6)];

_list lbAdd format["%1", "Ghost Spectate"];
_list lbSetdata [(lbSize _list)-1,str(24)];

_list lbAdd format["%1", "Teleport To"];
_list lbSetdata [(lbSize _list)-1,str(1)];
};

if (kif_admin == 2) then {

_list lbAdd format["%1", "Invisible On"];
_list lbSetdata [(lbSize _list)-1,str(5)];

_list lbAdd format["%1", "Invisible Off"];
_list lbSetdata [(lbSize _list)-1,str(6)];

_list lbAdd format["%1", "God Mode On"];
_list lbSetdata [(lbSize _list)-1,str(3)];

_list lbAdd format["%1", "God Mode Off"];
_list lbSetdata [(lbSize _list)-1,str(4)];

_list lbAdd format["%1", "Sync Player"];
_list lbSetdata [(lbSize _list)-1,str(39)];

_list lbAdd format["%1", "Sync All Players"];
_list lbSetdata [(lbSize _list)-1,str(8)];

_list lbAdd format["%1", "Ghost Spectate"];
_list lbSetdata [(lbSize _list)-1,str(24)];

_list lbAdd format["%1", "Toggle TP"];
_list lbSetdata [(lbSize _list)-1,str(26)];

_list lbAdd format["%1", "Teleport To"];
_list lbSetdata [(lbSize _list)-1,str(1)];

_list lbAdd format["%1", "Teleport To Me"];
_list lbSetdata [(lbSize _list)-1,str(2)];

};


if (kif_admin == 3) then {

_list lbAdd format["%1", "Invisible On"];
_list lbSetdata [(lbSize _list)-1,str(5)];

_list lbAdd format["%1", "Invisible Off"];
_list lbSetdata [(lbSize _list)-1,str(6)];

_list lbAdd format["%1", "God Mode On"];
_list lbSetdata [(lbSize _list)-1,str(3)];

_list lbAdd format["%1", "God Mode Off"];
_list lbSetdata [(lbSize _list)-1,str(4)];

_list lbAdd format["%1", "Sync Player"];
_list lbSetdata [(lbSize _list)-1,str(39)];

_list lbAdd format["%1", "Sync All Players"];
_list lbSetdata [(lbSize _list)-1,str(8)];

_list lbAdd format["%1", "Ghost Spectate"];
_list lbSetdata [(lbSize _list)-1,str(24)];

_list lbAdd format["%1", "Teleport To"];
_list lbSetdata [(lbSize _list)-1,str(1)];

_list lbAdd format["%1", "Teleport To Me"];
_list lbSetdata [(lbSize _list)-1,str(2)];

_list lbAdd format["%1", "Toggle TP"];
_list lbSetdata [(lbSize _list)-1,str(26)];

_list lbAdd format["%1", "Full Heal"];
_list lbSetdata [(lbSize _list)-1,str(13)];

_list lbAdd format["%1", "Revive"];
_list lbSetdata [(lbSize _list)-1,str(14)];

_list lbAdd format["%1", "Revive All Dead"];
_list lbSetdata [(lbSize _list)-1,str(22)];

_list lbAdd format["%1", "Kick Player"];
_list lbSetdata [(lbSize _list)-1,str(27)];

_list lbAdd format["%1", "Message All"];
_list lbSetdata [(lbSize _list)-1,str(36)];

_list lbAdd format["%1", "Admin Inter. ON"];
_list lbSetdata [(lbSize _list)-1,str(37)];

_list lbAdd format["%1", "Admin Inter. OFF"];
_list lbSetdata [(lbSize _list)-1,str(38)];
};

if (kif_admin == 4) then {

_list lbAdd format["%1", "Teleport To"];
_list lbSetdata [(lbSize _list)-1,str(1)];

_list lbAdd format["%1", "Teleport To Me"];
_list lbSetdata [(lbSize _list)-1,str(2)];

_list lbAdd format["%1", "God Mode On"];
_list lbSetdata [(lbSize _list)-1,str(3)];

_list lbAdd format["%1", "God Mode Off"];
_list lbSetdata [(lbSize _list)-1,str(4)];

_list lbAdd format["%1", "Invisible On"];
_list lbSetdata [(lbSize _list)-1,str(5)];

_list lbAdd format["%1", "Invisible Off"];
_list lbSetdata [(lbSize _list)-1,str(6)];

_list lbAdd format["%1", "Kill Target"];
_list lbSetdata [(lbSize _list)-1,str(7)];

_list lbAdd format["%1", "Sync Player"];
_list lbSetdata [(lbSize _list)-1,str(39)];

_list lbAdd format["%1", "Sync All Players"];
_list lbSetdata [(lbSize _list)-1,str(8)];

_list lbAdd format["%1", "Freeze"];
_list lbSetdata [(lbSize _list)-1,str(9)];

_list lbAdd format["%1", "UnFreeze"];
_list lbSetdata [(lbSize _list)-1,str(10)];

_list lbAdd format["%1", "Strip Naked"];
_list lbSetdata [(lbSize _list)-1,str(11)];

_list lbAdd format["%1", "AOE Restrain 300m"];
_list lbSetdata [(lbSize _list)-1,str(12)];

_list lbAdd format["%1", "AOE Unrestrain 300m"];
_list lbSetdata [(lbSize _list)-1,str(40)];

_list lbAdd format["%1", "Restrain Target"];
_list lbSetdata [(lbSize _list)-1,str(41)];

_list lbAdd format["%1", "Unrestrain Target"];
_list lbSetdata [(lbSize _list)-1,str(42)];

_list lbAdd format["%1", "Full Heal"];
_list lbSetdata [(lbSize _list)-1,str(13)];

_list lbAdd format["%1", "Revive"];
_list lbSetdata [(lbSize _list)-1,str(14)];

_list lbAdd format["%1", "Move In Vehicle"];
_list lbSetdata [(lbSize _list)-1,str(15)];

_list lbAdd format["%1", "Driver Eject"];
_list lbSetdata [(lbSize _list)-1,str(16)];

_list lbAdd format["%1", "Full Eject"];
_list lbSetdata [(lbSize _list)-1,str(17)];

_list lbAdd format["%1", "ESP Toggle"];
_list lbSetdata [(lbSize _list)-1,str(18)];

_list lbAdd format["%1", "AOE Copy Loadout 300m"];
_list lbSetdata [(lbSize _list)-1,str(19)];

_list lbAdd format["%1", "AOE TP to Self 300m"];
_list lbSetdata [(lbSize _list)-1,str(20)];

_list lbAdd format["%1", "AOE Revive 300m"];
_list lbSetdata [(lbSize _list)-1,str(21)];

_list lbAdd format["%1", "Revive All Dead"];
_list lbSetdata [(lbSize _list)-1,str(22)];

_list lbAdd format["%1", "Unlock Vehicle"];
_list lbSetdata [(lbSize _list)-1,str(23)];

_list lbAdd format["%1", "Ghost Spectate"];
_list lbSetdata [(lbSize _list)-1,str(24)];

_list lbAdd format["%1", "Kick All"];
_list lbSetdata [(lbSize _list)-1,str(25)];

_list lbAdd format["%1", "Toggle TP"];
_list lbSetdata [(lbSize _list)-1,str(26)];

_list lbAdd format["%1", "Kick Player"];
_list lbSetdata [(lbSize _list)-1,str(27)];

_list lbAdd format["%1", "Message All"];
_list lbSetdata [(lbSize _list)-1,str(36)];

_list lbAdd format["%1", "Admin Inter. ON"];
_list lbSetdata [(lbSize _list)-1,str(37)];

_list lbAdd format["%1", "Admin Inter. OFF"];
_list lbSetdata [(lbSize _list)-1,str(38)];
};

if (kif_admin == 5) then {

_list lbAdd format["%1", "Teleport To"];
_list lbSetdata [(lbSize _list)-1,str(1)];

_list lbAdd format["%1", "Teleport To Me"];
_list lbSetdata [(lbSize _list)-1,str(2)];

_list lbAdd format["%1", "God Mode On"];
_list lbSetdata [(lbSize _list)-1,str(3)];

_list lbAdd format["%1", "God Mode Off"];
_list lbSetdata [(lbSize _list)-1,str(4)];

_list lbAdd format["%1", "Invisible On"];
_list lbSetdata [(lbSize _list)-1,str(5)];

_list lbAdd format["%1", "Invisible Off"];
_list lbSetdata [(lbSize _list)-1,str(6)];

_list lbAdd format["%1", "Kill Target"];
_list lbSetdata [(lbSize _list)-1,str(7)];

_list lbAdd format["%1", "Sync Player"];
_list lbSetdata [(lbSize _list)-1,str(39)];

_list lbAdd format["%1", "Sync All Players"];
_list lbSetdata [(lbSize _list)-1,str(8)];

_list lbAdd format["%1", "Freeze"];
_list lbSetdata [(lbSize _list)-1,str(9)];

_list lbAdd format["%1", "UnFreeze"];
_list lbSetdata [(lbSize _list)-1,str(10)];

_list lbAdd format["%1", "Strip Naked"];
_list lbSetdata [(lbSize _list)-1,str(11)];

_list lbAdd format["%1", "AOE Restrain 300m"];
_list lbSetdata [(lbSize _list)-1,str(12)];

_list lbAdd format["%1", "AOE Unrestrain 300m"];
_list lbSetdata [(lbSize _list)-1,str(40)];

_list lbAdd format["%1", "Restrain Target"];
_list lbSetdata [(lbSize _list)-1,str(41)];

_list lbAdd format["%1", "Unrestrain Target"];
_list lbSetdata [(lbSize _list)-1,str(42)];

_list lbAdd format["%1", "Full Heal"];
_list lbSetdata [(lbSize _list)-1,str(13)];

_list lbAdd format["%1", "Revive"];
_list lbSetdata [(lbSize _list)-1,str(14)];

_list lbAdd format["%1", "Move In Vehicle"];
_list lbSetdata [(lbSize _list)-1,str(15)];

_list lbAdd format["%1", "Driver Eject"];
_list lbSetdata [(lbSize _list)-1,str(16)];

_list lbAdd format["%1", "Full Eject"];
_list lbSetdata [(lbSize _list)-1,str(17)];

_list lbAdd format["%1", "ESP Toggle"];
_list lbSetdata [(lbSize _list)-1,str(18)];

_list lbAdd format["%1", "AOE Copy Loadout 300m"];
_list lbSetdata [(lbSize _list)-1,str(19)];

_list lbAdd format["%1", "AOE TP to Self 300m"];
_list lbSetdata [(lbSize _list)-1,str(20)];

_list lbAdd format["%1", "AOE Revive 300m"];
_list lbSetdata [(lbSize _list)-1,str(21)];

_list lbAdd format["%1", "Revive All Dead"];
_list lbSetdata [(lbSize _list)-1,str(22)];

_list lbAdd format["%1", "Unlock Vehicle"];
_list lbSetdata [(lbSize _list)-1,str(23)];

_list lbAdd format["%1", "Ghost Spectate"];
_list lbSetdata [(lbSize _list)-1,str(24)];

_list lbAdd format["%1", "Kick All"];
_list lbSetdata [(lbSize _list)-1,str(25)];

_list lbAdd format["%1", "Toggle TP"];
_list lbSetdata [(lbSize _list)-1,str(26)];

_list lbAdd format["%1", "Kick Player"];
_list lbSetdata [(lbSize _list)-1,str(27)];

_list lbAdd format["%1", "Give 1000$"];
_list lbSetdata [(lbSize _list)-1,str(28)];

_list lbAdd format["%1", "Arsenal"];
_list lbSetdata [(lbSize _list)-1,str(29)];

//_list lbAdd format["%1", "Debug Console"];
//_list lbSetdata [(lbSize _list)-1,str(30)];

_list lbAdd format["%1", "Add Food"];
_list lbSetdata [(lbSize _list)-1,str(31)];

_list lbAdd format["%1", "Add Water"];
_list lbSetdata [(lbSize _list)-1,str(32)];

_list lbAdd format["%1", "Remove Unhealthiness"];
_list lbSetdata [(lbSize _list)-1,str(33)];

_list lbAdd format["%1", "Add Phone Battery"];
_list lbSetdata [(lbSize _list)-1,str(34)];

_list lbAdd format["%1", "Camera"];
_list lbSetdata [(lbSize _list)-1,str(35)];

_list lbAdd format["%1", "Message All"];
_list lbSetdata [(lbSize _list)-1,str(36)];

_list lbAdd format["%1", "Admin Inter. ON"];
_list lbSetdata [(lbSize _list)-1,str(37)];

_list lbAdd format["%1", "Admin Inter. OFF"];
_list lbSetdata [(lbSize _list)-1,str(38)];

};