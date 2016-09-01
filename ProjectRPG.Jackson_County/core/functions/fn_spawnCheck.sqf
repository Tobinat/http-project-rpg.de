/*
	
	Author: Tobinat
	
	Description:
	Sets the player up if he/she used the respawn option.
*/
private["_handle"];

respawnstate = false;

if(!life_firstSpawn && (Vehicle player == player) ) then 
{
	[] spawn {
		waitUntil{!isNull (findDisplay 38500)};
		respawnstate = true;
	};
	
	[] spawn {
		sleep 1;
		if (!respawnstate) then
		{
			[] call life_fnc_spawnMenu;
		};
	};		

	
	
	
switch(playerSide) do
{
	case west: {
		_handle = [] spawn life_fnc_copLoadout;
	};
	case civilian: {
		_handle = [] spawn life_fnc_civLoadout;
	};
	case independent: {
		_handle = [] spawn life_fnc_medicLoadout;
	};
	
	case east: {
        _handle = [] spawn life_fnc_adacLoadout;
    };
	
	
	
	waitUntil {scriptDone _handle};
};
	
	
	
	
	
	
	
	
	
	
	
};

