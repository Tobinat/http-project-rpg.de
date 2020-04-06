if(isnil "taskrunning") then { taskrunning = false; };
_doughnuts = player getVariable ["doughnuts",0];
if(_doughnuts < 1) exitWith {};

myjob = "Doughnuts";
if(isnil "taskrunning") then { taskrunning = false; };
[] call client_fnc_hudwork;
player setVariable ["doughnutsLevel", _doughnuts, false];
_pay = [0,60,120,200,250,350];
_payment = _pay select _doughnuts;
if(!taskrunning) then {
	[_payment] spawn {
		_payment = _this select 0;
		playertasks = [];
		taskrunning = true;
		while{taskrunning && myjob == "Doughnuts"} do {
			uisleep 180;
			paycheck = paycheck + _payment;
		};
		if(myjob == "Doughnuts") then { [] call client_fnc_jobEnd; };
	};
};