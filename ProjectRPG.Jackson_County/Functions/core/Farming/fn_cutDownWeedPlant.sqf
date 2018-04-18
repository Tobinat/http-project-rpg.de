/*
	Author: Kajetan "Kruk" Mruk
	Date: 22.01.2017 (Non-retard Units)

	Params:
		1 - Object - weed plant object
	Description: Function that cuts down plant and gives player weed
	Return: nothing
*/

params["_object"];
_randomValue = round(random 3) + 1;
_quality = _object getVariable["quality",0];
if(_quality <= 0) then { _quality = 1; };
_item = format["CG_WeedBag%1", _quality];

if(player distance [1409.98,5740.65,0.00143814] < 400) then {
	_randomValue = round(random 2) * 2;
};

_msg = format["Sciąłeś %1 paczek zioła!",_randomValue];
["MarihuanaGathered"] spawn mav_ttm_fnc_addExp;
[player,objNull,26,format ["%1 ściął marychę w sztukach %2 i jakości %3 CLASSNAME: %4",name player, _randomValue, _quality, _item],_randomValue] remoteExec ["server_fnc_actionLog", 2];
["Sukces", _msg, [0,255,0,1],""] call Client_fnc_showNotification;
while {_randomValue > 0} do { player addItem _item; _randomValue = _randomValue - 1; };
_point = weedPlantArray find _object;

if(_point >= 0) then {weedPlantArray deleteAt _point };
deletevehicle _object;
player additem "NP_GrowingPlot";