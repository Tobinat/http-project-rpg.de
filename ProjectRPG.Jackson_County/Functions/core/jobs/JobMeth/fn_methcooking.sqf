AcetoneArray = ["Hinweis: Die Substanz ist zu dunkel!","Hinweis: Die Substanz scheint schwarz zu sein!","Hinweis: Die Substanz ist zu hell!","Hinweis:  Die Substanz ist schneint weiß!","Hinweis: Die Substanz ist kontaminiert"];
PseudoArray = ["Hinweis: Die Substanz verliert an Farbe!","Hinweis: Die Substanz ist druebe!","Hinweis: Die Substanz ist fast transparent!","Hinweis: Die Substanz wird rosa!","Hinweis: Die Substanz ist sauer!"];
CoolArray = ["Hinweis: Zu viel Dampf wird ausgestoßen!","Hinweis: Die Substanz verdampft","Hinweis: Es wird heiß!","Hinweis: Die Substanz schäumt!","Hinweis: Die Substanz riecht nach Öl!","Hinweis: Die Substanz ist sehr dickfluessig!"];
HeatArray = ["Hinweis: Die Substanz kann nicht durch die Röhre dringen!","Hinweis: Die Substanz ist sehr dick!","Hinweis: Die Substanz sieht aus wie Kleber!","Hinweis: Die Substanz hat eine gummiartige Konsistenz!"];
ReleaseArray = ["Hinweis: Die Substanz fließt zu schnell!","Hinweis: Der Dampf beginnt zu verdampfen!","Hinweis:Die Fläschchen sehen druebe aus!"];

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
["Verarbeite",format["Du hast %1 MethBag hergestellt.", _randomvalue],[0,255,0,1],""] call Client_fnc_showNotification;
[player,objNull,28,format ["%1 kochte %2 MethBag %3 CLASSNAME %4",name player, _randomValue, myDrugValue, _item],_randomValue] remoteExec ["server_fnc_actionLog", 2];
//hint format["Ugotowałeś %1 worków metamfetaminy!",_randomvalue];
player additem "NP_DrugTable";
["MethGathered"] spawn mav_ttm_fnc_addExp;

while {_randomValue > 0} do { player additem _item; _randomValue = _randomValue - 1; };

deletevehicle myDT;