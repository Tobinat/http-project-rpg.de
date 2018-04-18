disableSerialization;
if(isNil "TracingPlayers") then { TracingPlayers = []; };
if(!dialog) then {	createdialog "phoneTapMenu"; };

uisleep 0.05;
_display = findDisplay 1111;
_list = _display displayCtrl 1113;
lbClear _list;

{
	_list lbAdd format["%1", name _x];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach tracingPlayers;
