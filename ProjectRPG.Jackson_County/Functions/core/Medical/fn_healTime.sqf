disableSerialization;
_arrayNeeded = _this select 0;
_user = _arrayNeeded select 0;
_myInjuries = _arrayNeeded select 1;
_arrayCount = _arrayNeeded select 2;
_item = _arrayNeeded select 3;
player removeMagazine _item;
5 cutText ["","PLAIN"];
_myInjuries set [_arrayCount, 0]; 
_user setVariable ["playerInjuries",_myInjuries,true]; 
if (_arraycount == 10) then {
	_user setVariable ["krank",false,true];
};
imHealing = false;
//[_user] spawn client_fnc_medicUpdater;