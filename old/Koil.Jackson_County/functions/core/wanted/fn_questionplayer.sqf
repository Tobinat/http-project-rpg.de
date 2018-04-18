//["Do you like chicken?"] call client_fnc_questionPlayer;

disableSerialization;

createdialog "yn_Menu";

_texticles = _this select 0;

_display = findDisplay 9999; 

_text = _display displayCtrl 9993;

_text ctrlSetStructuredText parseText format["%1",_texticles];