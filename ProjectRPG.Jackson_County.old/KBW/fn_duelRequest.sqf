/*
fn_duelRequest.sqf
Kevin Webb
Description: "1v1 me bro!"
*/
if(count life_racers == 0) exitWith {
[localize "STR_Global_NoSelection", false] spawn domsg;
};
createDialog "Life_KBW_price_diag";
waitUntil{!isNull (findDisplay 13371)};
ctrlSetText[2651,"Enter your wager"];
waitUntil{isNull (findDisplay 13371) || life_charged};
if(!(life_charged)) exitWith {};
life_charged = false;
_stake = ctrlText 7331;
if(!([_stake] call fnc_isnumber)) exitWith {["Sie haben keine Zahl eingeben.", false] spawn domsg; closeDialog 0;};
_stake = parseNumber _stake;
if(_stake < 0 || _stake > cash_in_bank) exitWith {["Die Zahl war ungültig oder Sie haben nicht genug Geld.", false] spawn domsg; closeDialog 0;};
closeDialog 0;
//racing
waitUntil{closeDialog 0; uiSleep 0.1; !dialog};
openMap [true, false];
_finishLine = createMarkerLocal["startPoint",getPos player];
_finishLine setMarkerTypeLocal "mil_warning";
_finishLine setMarkerColorLocal "ColorRed";
_finishLine setMarkerTextLocal "START POINT";
onMapSingleClick "life_race = _pos; true";
waitUntil{!isNil "life_race" || !visibleMap};
deleteMarkerlocal _finishLine;
if(!visibleMap) exitWith {["It seems you didn't pick a race endpoint.", false] spawn domsg; onMapSingleClick ""; life_racers = [];};
openMap [false, false];
onMapSingleClick "";
vehicle player enableSimulation false;
[] spawn {uiSleep 31; vehicle player enableSimulation true}; //failsafe!
[player,_stake,life_race] remoteExec ["KBW_fnc_duelRequested",life_racers];
{missionNameSpace setVariable[str _x + "racer",0]} forEach life_racers;
["Die Anfrage wurde abgeschickt. Warten sie auf die Antwort...", false] spawn domsg;
_time = time;
waitUntil{
	uiSleep 1;
	_test1 = {if(call compile (str _x + "racer") != 1) exitWith {false}; true} forEach life_racers;
	_test3 = {if(call compile (str _x + "racer") == -1) exitWith {true}; false} forEach life_racers; 
	time - _time > 20 || 
	_test1 ||  
	_test3
};
_test = {if(call compile (str _x + "racer") != 1) exitWith {true}; false} forEach life_racers;
if(_test) exitWith { 
	["Es scheint nicht jeder akzeptiert das Rennen.", false] spawn domsg;
	life_race = nil; 
	life_racers = [];
	{missionNameSpace setVariable[str _x + "racer",nil]} forEach life_racers;
};
life_racers pushBack player;
[life_racers,life_race,_stake] remoteExec ["TON_fnc_startRace",2];
life_race = nil; 
{missionNameSpace setVariable[str _x + "racer",nil]} forEach life_racers; 
life_racers = [];