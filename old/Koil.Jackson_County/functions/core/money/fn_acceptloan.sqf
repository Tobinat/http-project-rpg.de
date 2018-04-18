_currentitemindex = lbCurSel 9001;
if (_currentitemindex == -1) exitWith { hint "Error"; closedialog 0; };
_amount = lbData [9001, _currentitemindex];
_amount = call compile format["%1",_amount];

_amountcheck = _amount select 1;
closedialog 0;

_owed = round(_amountcheck + (_amountcheck / 10));

if(mafiabank < _amountcheck) exitwith { hint "Mafia cant afford this. How embarrassing. "; };

hint format["You have been given a loan of %1 - you must pay back %2",_amountcheck,_owed];

loan SET [0,_amount select 0];
loan SET [2,_amount select 2];
loan SET [3,_amount select 3];




[_amountcheck] call Client_fnc_addcash;

["Remove",_amountcheck] remoteexec ["server_fnc_updateMafiaBank",2];

["Add","MafiaMoney",_owed] call client_fnc_sustain;

