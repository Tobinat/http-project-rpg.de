AcetoneArray = ["UWAGA: Substancja jest zbyt ciemna!","UWAGA: Substancja wydaje się być czarna!","UWAGA: Substancja jest zbyt jaskrawa!","UWAGA: Do substancji wpadł proszek do prania!","UWAGA: Substancja jest zanieczyszczona!"];
PseudoArray = ["UWAGA: Substancja traci kolor!","UWAGA: Substancja jest mętna!","UWAGA: Substancja jest prawie przeźroczysta!","UWAGA: Substancja zmienia kolor na różowy!","UWAGA: Substancja ma odczyn kwasowy!"];
CoolArray = ["UWAGA: Wydziela się zbyt dużo pary!","UWAGA: Kończy się gaz w palniku!","UWAGA: Robi się gorąco!","UWAGA: Substancja się pieni!","UWAGA: Substancja pachnie jak olej!","UWAGA: Substancja się przelewa!"];
HeatArray = ["UWAGA: Substancja nie może przedostać się przez rurkę!","UWAGA: Substancja jest bardzo gęsta!","UWAGA: Substancja wygląda jak klej!","UWAGA: Substancja ma konsystencję gumy!"];
ReleaseArray = ["UWAGA: Substancja płynie zbyt szybko!","UWAGA: Para zaczyna się ulatniać!","UWAGA: Fiolki wyglądają na zamglone!"];

_count = 0;
checkFinish = false;
while{_count < 10 && cookingMeth} do {
	checkFinish = true;
	sleep 10;
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
mydrugvalue = mydrugvalue - totalskills;
player removeaction myAction1;
player removeaction myAction2;
player removeaction myAction3;
player removeaction myAction4;
player removeaction myAction5;
player removeaction myActionPack;

if(isNull mydt) exitwith {};

_randomValue = round(random 5) + 1;

if(myDrugValue < 50) then { myDrugValue = 50; };
_item = format["CG_MethBag%1", myDrugValue];
["Sukces",format["Ugotowałeś %1 worków metamfetaminy", _randomvalue],[0,255,0,1],""] call Client_fnc_showNotification;
[player,objNull,28,format ["%1 ugotował %2 worków metamfetaminy o jakości %3 CLASSNAME %4",name player, _randomValue, myDrugValue, _item],_randomValue] remoteExec ["server_fnc_actionLog", 2];
//hint format["Ugotowałeś %1 worków metamfetaminy!",_randomvalue];
player additem "NP_DrugTable";
["MethGathered"] spawn mav_ttm_fnc_addExp;

while {_randomValue > 0} do { player additem _item; _randomValue = _randomValue - 1; };

deletevehicle myDT;