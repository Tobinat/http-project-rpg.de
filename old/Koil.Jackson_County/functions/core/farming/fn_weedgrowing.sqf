WaterArray = ["WARNING: Die Blätter sehen Welk aus!","WARNING: Die Erde ist zu trocken!","WARNING: Die Pflanze verwelkt!!"];
PruneArray = ["WARNING: Zu viele Blätter verdecken die Knospen!","WARNING: Sieht verwuchert aus!"];
CoolArray2 = ["WARNING: Es bilden sich braune Punkte auf den Blättern!","WARNING: Trocknet aufgrund der Hitze aus!"];
HeatArray2 = ["WARNING: Es ist zu Feucht!!"];
TurnoverArray = ["WARNING: Der Boden muss gedreht werden!!"];
private["_stage1","_stage2"];
_count = 0;
checkFinish2 = false;
while{_count < 10 && growingweed} do {
	checkFinish2 = true;
	sleep 10;
	checkFinish2 = false;
	_randomValue = round(random 5);
	if(_randomValue == 1 || _randomvalue == 0) then { requiredOutput2 = "Water"; _message = waterArray call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 2) then { requiredOutput2 = "Prune"; _message = PruneArray call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 3) then { requiredOutput2 = "Cool"; _message = CoolArray2 call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 4) then { requiredOutput2 = "Heat"; _message = HeatArray2 call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 5) then { requiredOutput2 = "Turnover"; _message = TurnoverArray call BIS_fnc_selectRandom; hint _message; };
	sleep 20;	
	_count = _count + 1;
	MYDT2 setpos [(getpos mydt2 select 0),(getpos mydt2 select 1),(getpos mydt2 select 2)+0.15];
};

mydrugvalue = mydrugvalue - totalskills;

player removeaction myAction12;
player removeaction myAction22;
player removeaction myAction32;
player removeaction myAction42;
player removeaction myAction52;
player removeaction myActionPack2;

if(isNull mydt2) exitwith {};

_randomValue = round(random 3);
_randomValue = _randomValue + 1;

if(myDrugValue2 < 0) then { myDrugValue2 = 1; };

_item = format["CG_WeedBag%1", myDrugValue2];

if(player distance [1409.98,5740.65,0.00143814] < 400) then { 
	_randomValue = round(random 2);
	_randomvalue = _randomvalue + _randomvalue;
};

hint format["Du hast %1 Tütchen voller Gras!",_randomvalue];

while {_randomValue > 0} do { player additem _item; _randomValue = _randomValue - 1; };

deletevehicle myDT2;
player additem "NP_GrowingPlot";
