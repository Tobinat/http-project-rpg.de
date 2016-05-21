#include <macro.h>
/*
	
	file: fn_newMsg.sqf
	Author: Silex
	
*/

private["_to","_type","_playerData","_msg"];
disableSerialization;

_type = [_this,0,-1] call BIS_fnc_param;
_playerData = [_this,1,-1] call BIS_fnc_param;
_msg = [_this,2,"",[""]] call BIS_fnc_param;

_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageEdit = _display displayCtrl 88884;

if(!PRPG_leitstelle) exitWith {["Nur die Leitstelle / F.B.I. / H.R.T. / L.V. Special Force / Staatsanwalt kann eine Nachricht an alle verfassen!",false] spawn domsg;};
if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben.";};

parseText format["<t size='2' color='#0000FF'>Staatsbenachrichtigung:</t><br/><br/><t size='1.25' align='center' color='#FFFFFF'>%1</t>",_msg] remoteExec["hint"];

closeDialog 240519;