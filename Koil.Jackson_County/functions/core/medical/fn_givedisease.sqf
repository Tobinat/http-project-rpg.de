//[69] spawn client_fnc_givedisease;
_disease = _this select 0;

_myInjuries = player getVariable "playerInjuries";
if(_myinjuries select 10 == 0) then {
	if(_disease == 69) then {
	_myInjuries set [10, random(4)]; 
	} else {
		_myInjuries set [10,_disease]; 
	};
};
player setVariable ["playerInjuriesToUpdate",_myInjuries,false];
if(myUpdate) then {
	[] spawn client_fnc_doInjuriesUpdate;
};