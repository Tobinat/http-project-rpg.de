private["_display","_list","_i","_EMS","_Cop","_Fire","_Mafia","_legal"];
//Cop - EMS - Mafia - Fire
disableSerialization;
_max = 0;
_EMS = player getVariable ["EMS",0];
_Cop = player getVariable ["Cop",0];
_Fire = player getVariable ["Fire",0];
_Mafia = player getVariable ["Mafia",0];
_legal = player getVariable ["legal",0];
if(myJob isEqualTo "Cop" && _Cop < 4) exitwith { hint "Musisz miec 4 poziom aby kogos awansowac."; };
if(myJob isEqualTo "EMS" && _EMS < 8) exitwith { hint "Musisz miec 8 poziom aby kogos awansowac."; };
if(myJob isEqualTo "Fire" && _Fire < 8) exitwith { hint "Musisz miec 8 poziom aby kogos awansowac."; };
if(myJob isEqualTo "Mafia" && _Mafia < 8) exitwith { hint "Musisz miec 8 poziom aby kogos awansowac."; };

if(myJob isEqualTo "Judge" && _legal < 6) exitwith { hint "Musisz miec 6 poziom aby kogos awansowac."; };
if(myJob isEqualTo "Lawyer" && _legal < 6) exitwith { hint "Musisz miec 6 poziom aby kogos awansowac."; };
if(myJob isEqualTo "Prosecutor" && _legal < 6) exitwith { hint "Musisz miec 6 poziom aby kogos awansowac."; };


if(myJob isEqualTo "Cop") then { _max = _Cop; };
if(myJob isEqualTo "EMS") then { _max = _EMS; };
if(myJob isEqualTo "Fire") then { _max = _Fire; };
if(myJob isEqualTo "Mafia") then { _max = _Mafia; };
if(myJob isEqualTo "Judge") then { _max = _legal; };
if(myJob isEqualTo "Lawyer") then { _max = _legal; };
if(myJob isEqualTo "Prosecutor") then { _max = _legal; };

createdialog "promotion";

_target = _this select 0;

_display = findDisplay 5111;
_list = _display displayCtrl 911;

lbClear _list;
_i = 0;

while{_i < _max} do {
	if(_i isEqualTo 0) then { 
		_list lbAdd "Usun";
	} else {
		_list lbAdd format["RANGA: %1", _i];
	};
	_list lbSetdata [(lbSize _list)-1,str(_i)];
	_i = _i + 1;
};