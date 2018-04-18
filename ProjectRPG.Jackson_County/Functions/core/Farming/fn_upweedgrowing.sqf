/*
	Author: Unknown edit Kajetan "Kruk" Mruk
	Date: 22.01.2017 (Non-retard Units)
	
	Params:
		0 - String - type of used action
		1 - Object - weed plant object
	Description: This function check if required action meets used action of a player
	Return: nothing
*/
params["_usedAction","_object"];
_requiredOutput = _object getVariable["requiredOutput",""];
_checkFinish = _object getVariable["checkFinish",false];
if(_checkFinish) exitwith { ["Nie tak szybko!", false] spawn domsg; };

if(_requiredOutput == _usedAction) then { 
	["To chyba podziałało!", false] spawn domsg;
	playSound3D ["CG_Jobs\sounds\woodchop\woodchop1.ogg", player, false, getPosasl player, 2, 1, 15];
} else {
	_quality = _object getVariable ["quality",0];
	_object setVariable ["quality",(_quality - 1)];
	["To nie był dobry wybór..!", false] spawn domsg;
	_randomValue = random 30;
	if(_randomValue < 5) exitwith { 
		["No cóż... schrzaniłeś!", false] spawn domsg;
		_object setVariable ["growing",false,true];
		removeAllActions _object;
		deleteVehicle _object;
	};
};

_object setVariable ["actionPerformed", true];
_object setVariable ["checkFinish",true];