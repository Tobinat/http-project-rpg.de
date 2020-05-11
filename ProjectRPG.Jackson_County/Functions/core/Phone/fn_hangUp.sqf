
playSound "cgphone_hangup";
if(player == myCallOwner) exitwith {
	[] call client_fnc_resetcall;
	callInProgress = false;
