/*
	Author: Unknown edit Kajetan "Kruk" Mruk
	Date: 22.01.2017 (Non-retard Units)
	
	Params:
		0 - Object - weed plant object
		1 - Number - ID of the action
	Description: Function plants the weed and addActions to the weed plant.
	Return: nothing
*/
params["_player","_caller","_action","_myDT"];
detach _myDT;
_player removeAction _action;

["Twoja sadzonka została zasadzona!",true] spawn domsg;


_action = _myDT addAction [ "Posadź", { 
	params["_target", "_caller", "_id"];
	[_target] spawn client_fnc_weedgrowing;
	myDrugValue2 = 4;
	totalskills = 4;
	_target removeAction _id;
	_target addAction [ "Podlej rosline", { ["Water", (_this select 0)] call client_fnc_upweedgrowing; } ];
	_target addAction [ "Przytnij rosline", { ["Prune", (_this select 0)] call client_fnc_upweedgrowing; } ];
	_target addAction [ "Ochlodz rosline", { ["Cool", (_this select 0)] call client_fnc_upweedgrowing; } ];
	_target addAction [ "Ogrzej rosline", { ["Heat", (_this select 0)] call client_fnc_upweedgrowing; } ];
	_target addAction [ "Kultywatorowanie", { ["Turnover", (_this select 0)] call client_fnc_upweedgrowing; } ];
	[player,objNull,25,format ["%1 posadził marychę",name player],""] remoteExec ["server_fnc_actionLog", 2];
} ];
weedPlantArray pushBack _myDT;