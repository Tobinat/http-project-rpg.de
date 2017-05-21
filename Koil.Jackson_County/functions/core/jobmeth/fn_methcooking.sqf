AcetoneArray = ["ACHTUNG: Die Substanz scheint zu Schwarz!","ACHTUNG: Die Substanz wird Schwarz!","ACHTUNG: Die Substanz hat zu viel Farbe!"];
PseudoArray = ["ACHTUNG: Die Substanz verliert Farbe!","ACHTUNG: Die Substanz ist ausgeblichen!","ACHTUNG: Diue Substanz ist beinahe durchsichtig!"];
CoolArray = ["ACHTUNG: Der Herd baut Dampf auf!","ACHTUNG: Der Herd verbrennt den Tisch!","ACHTUNG: Es wird heiß im Raum!"];
HeatArray = ["ACHTUNG: Die Substanz fließt nicht korrekt!","ACHTUNG: Die Substanz ist zu dickflüssig!","ACHTUNG: Die Substanz sieht klebrig aus!"];
ReleaseArray = ["ACHTUNG: Achtung die Substanz fließt zu schnell!","ACHTUNG: Dampf versucht zu entweichen!","ACHTUNG: Die Flächen sehen sehr trüb aus!"];

_count = 0;
checkFinish = false;
while{_count < 15 && cookingMeth} do {
	checkFinish = true;
	sleep 30;
	checkFinish = false;
	_randomValue = round(random 5);
	if(_randomValue == 1 || _randomvalue == 0) then { requiredOutput = "Acetone"; _message = AcetoneArray call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 2) then { requiredOutput = "Pseudo"; _message = PseudoArray call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 3) then { requiredOutput = "Cool"; _message = CoolArray call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 4) then { requiredOutput = "Heat"; _message = HeatArray call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 5) then { requiredOutput = "Release"; _message = ReleaseArray call BIS_fnc_selectRandom; hint _message; };
	sleep 30;
	_count = _count + 1;
};

cookingMeth = false;
player removeaction myAction1;
player removeaction myAction2;
player removeaction myAction3;
player removeaction myAction4;
player removeaction myAction5;
player removeaction myActionPack;