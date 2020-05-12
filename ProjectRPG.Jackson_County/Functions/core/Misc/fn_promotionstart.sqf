private["_display","_list","_i","_EMS","_Cop","_Fire","_Mafia","_legal"];
//Cop - EMS - Mafia - Fire
disableSerialization;
_max = 0;
_EMS = player getVariable ["EMS",0];
_Cop = player getVariable ["Cop",0];
_Fire = player getVariable ["Fire",0];
_Mafia = player getVariable ["Mafia",0];
_legal = player getVariable ["legal",0];

if(myJob isEqualTo "Cop" && _Cop < 11) exitwith { hint "Du musst Assistant Sheriff sein um jemanden zu Befördern."; };
if(myJob isEqualTo "EMS" && _EMS < 7) exitwith { hint "Du musst Assistant Chief sein um jemanden zu Befördern."; };
if(myJob isEqualTo "Fire" && _Fire < 9) exitwith { hint "Du musst Rang 9 sein um jemanden zu Befördern."; };
if(myJob isEqualTo "Mafia" && _Mafia < 9) exitwith { hint "Du musst Rang 9 sein um jemanden zu Befördern."; };
if(myJob isEqualTo "Judge" && _legal < 9) exitwith { hint "Du musst Rang 6 sein um jemanden zu Befördern."; };
if(myJob isEqualTo "Lawyer" && _legal < 6) exitwith { hint "Du musst Rang 6 sein um jemanden zu Befördern."; };
if(myJob isEqualTo "Prosecutor" && _legal < 6) exitwith { hint "Du musst Rang 6 sein um jemanden zu Befördern."; };


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
		_list lbAdd "Entfernen";
	} else {
		_list lbAdd format["Rang: %1", _i];
	};
	_list lbSetdata [(lbSize _list)-1,str(_i)];
	_i = _i + 1;
};