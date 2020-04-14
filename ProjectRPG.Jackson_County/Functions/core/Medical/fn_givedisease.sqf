//[69] spawn client_fnc_givedisease;
_disease = _this select 0;

_myInjuries = player getVariable "playerInjuries";
_corona = player getVariable "corona";
if(_myinjuries select 10 == 0) then {
	if(_disease == 420) then {
		if (_corona == 0) then {
		_myInjuries set [10, 5];
		//setzt corona variable
		player setVariable ["corona",200,true];
		player setVariable ["krank",true,true];
		};
	} else {
		if(_disease == 69) then {
		_myInjuries set [10, random(4)]; 
		player setVariable ["krank",true,true];
		} else {
			_myInjuries set [10,_disease]; 
			player setVariable ["krank",true,true];
		};
	};
};
player setVariable ["playerInjuriesToUpdate",_myInjuries,false];
if(myUpdate) then {
	[] spawn client_fnc_doInjuriesUpdate;
};