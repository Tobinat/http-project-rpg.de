/*
	File: fn_lootHouse.sqf
*/
private["_loothouse","_lchance","_looting","_lootArr","_loot"];
_lchance = random (100); 					//INCREASE THIS TO MAKE LOOT HARDER TO GET
_loothouse = cursorTarget;
_lootArr = ["emerald","ruby","sapphire"];			//ADD ANY Y MENU ITEMS YOU LIKE HERE
_loot = _lootArr select floor random count _lootArr;


if(isNull _loothouse) exitWith {};
if((_loothouse getVariable ["looted",false])) exitWith { ["This building has recently been looted", false] spawn domsg; };
if(playerSide != civilian || playerSide != east) exitWith {["You can't loot this building!", false] spawn domsg; };

if (prevent_loot) exitWith { ["Already looting building!", false] spawn domsg; };
if !(!deadPlayer) exitWith {};

_looting = true;
prevent_loot = true;
 
disableSerialization;

_cP = 80;
hint format["%1 Zeit noch verbleiben",_cp];
_copchance = random (100);


if(_copchance <= 45) then 
{ 
	[1,format["911 DISPATCH: The latest call from a house robbery has been placed on your map!",_storename]] remoteExecCall ["life_fnc_broadcast", west];
	["dbe", false] remoteExec ["fnc_dispatch",west];
	_mymark = name player;
	_Pos = position player;
	_marker = createMarker [_mymark, _Pos];
	_marker setMarkerColor "ColorRed";
	_marker setMarkerText "House Robbery!";
	_marker setMarkerType "mil_warning";
};


if(_looting) then
{
	while{true} do
	{
		uiSleep 1;
		_cP = _cP - 1;
		hint format["%1 Zeit verbleiben",_cp];

		if(_cP == 0) exitWith {};
		if(player distance _loothouse > 8) exitWith {["You must stay close to the building to loot!", false] spawn domsg;};
		if!(!deadPlayer) exitWith {};
	};

	if!(!deadPlayer) exitWith { _looting = false; };
	if(player distance _loothouse > 5) exitWith { ["You must stay close to the building to loot!", false] spawn domsg; 5 cutText ["","PLAIN"];_looting = false; };
	5 cutText ["","PLAIN"];

			if(_lchance <= 25) then 
			{ 

				_chance = (floor random 140);

				if(_chance < 10) then 
				{ 
					hint parseText format["<t align='center'><t size='1'>SCORE!</t><br/><t color='#FFFF00'><t size='1.5'>Du hast ein großes Lager gefunden!</t>"];

						switch (_chance) do
						{
							case 5 : {
								[true,_loot,1] call life_fnc_handleInv;
				            };
							case 4 : {
								[true,_loot,2] call life_fnc_handleInv;
				            };
							case 3 : {
								[true,_loot,3] call life_fnc_handleInv;
				            };
							case 2 : {
								[true,_loot,4] call life_fnc_handleInv;
				            };
							case 1 : {
								[true,_loot,5] call life_fnc_handleInv;
				            };
					};
				} else {
					hint parseText format["<t align='center'><t size='1'>SCORE!</t><br/><t color='#FFFF00'><t size='1.5'>Du hast ein paar Wertgegenstände gefunden!</t>"];
				};

  			[true,_loot,1] call life_fnc_handleInv;
			} else {
			["You found nothing of any value", false] spawn domsg;
			};
};



_looting = false;
prevent_loot = false;
_loothouse setVariable ["looted",true,false];
deleteMarker _mymark;
uiSleep (15 * 60);
_loothouse setVariable ["looted",false,false];