/*
	fn_getTester.sqf
	Pennyworth	
*/

if(life_requestingTestDrive) exitWith {["Du hast bereits eine Testfahrt beantragt!", false] spawn domsg};
if!(isNull objectParent player) exitWith {["Du kannst die Testfahrt nur außerhalb eines Fahrzeuges beantragen!", false] spawn domsg};
if(life_onTestDrive) exitWith {["Du bist in einer laufenden Testfahrt!", false] spawn domsg};

disableSerialization;

_display = findDisplay 2700;
_salesmanList = _display displayCtrl 2701;
_salesman = _salesmanList lbData (lbCurSel _salesmanList);

if(_salesman isEqualTo "") then {
	[] spawn life_fnc_testDrive;
 } else {
	_salesman = call compile _salesman;
	if(player isEqualTo _salesman) exitWith {["Du kannst nicht selber eine Testfahrt beantragen!", false] spawn domsg};
	[] spawn {
		waitUntil {closeDialog 0; (isNull findDisplay 2700 && isNull findDisplay 17500)};
	};
	life_requestingTestDrive = true;
	life_testDriveRequest = nil;

	[format ["Du hast eine Anfrage für eine Testafahrt an %1 geschickt. In 30 Sekunden kannst du nochmal nachfragen.",name _salesman], false] spawn domsg;
	[_salesman,player] remoteExec ["life_fnc_requestTestDrive",_salesman];
	_time = time;
	waitUntil {sleep 1; (!isNil "life_testDriveRequest" || (time - _time) > 30)};

	life_requestingTestDrive = false;
	
	if(isNil "life_testDriveRequest") exitWith {["Dein Antrag wurde nicht beantwortet", false] spawn domsg};
	if!(life_testDriveRequest) exitWith {[format ["Der Antrag auf eine Testfahrt mit %1 wurde abgelehnt! Vielleicht ist er schon auf einer Testfahrt...",_salesman],false]; life_testDriveRequest = nil};
	if(life_testDriveRequest) then {
		if!(isNull objectParent player) exitWith {
			["Du kannst die Testfahrt nur außerhalb eines Fahrzeuges beantragen!", false] spawn domsg;
			life_testDriveRequest = nil;
		};
		[false,_salesman] spawn life_fnc_testDrive;
	};
};
