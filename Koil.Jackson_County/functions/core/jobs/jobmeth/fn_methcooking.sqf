AcetoneArray = ["WARNING: The substance seems too dark!","WARNING: The substance is turning black!","WARNING: The substance has too much color!"];
PseudoArray = ["WARNING: The substance is losing color!","WARNING: The substance is faded!","WARNING: The substance is almost see-thru!"];
CoolArray = ["WARNING: The stove is forcing steam!","WARNING: The stove is burning the table!","WARNING: The room is filling with heat!"];
HeatArray = ["WARNING: The substance isnt flowing properly!","WARNING: The substance is very thick!","WARNING: The substance is looking sticky!"];
ReleaseArray = ["WARNING: The substance is flowing too fast!","WARNING: Steam is trying to escape!","WARNING: The vials are looking very foggy!"];

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
hint format["You cooked %1 bags of meth!",_randomvalue];

while {_randomValue > 0} do { player additem _item; _randomValue = _randomValue - 1; };

deletevehicle myDT;

player additem "NP_DrugTable";