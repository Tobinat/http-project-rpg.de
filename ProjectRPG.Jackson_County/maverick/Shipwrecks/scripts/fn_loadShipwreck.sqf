/*
	Author: Maverick Applications
	Desc: Altis Life Shipwreck
*/

//Do not touch below
if(hasInterface) exitWith {
    life_wrecklooting = false;
    player addAction[getText(missionConfigFile >> "Maverick_Shipwrecks" >> "ShipLootText"),{
        [] spawn {
            if(life_wrecklooting) exitWith {};
            life_wrecklooting = true;
            private["_lootArray","_allGood","_index"];
            _allGood = true;
            sleep random(1.9);
			_index = -1;
            _lootArray = ((nearestObjects[player,["Land_Wreck_Traw_F"], 20]) select 0) getVariable["wreckloot", []];
            if(_lootArray isEqualTo []) exitWith {};
            {
                if(player canAdd _x) then {
                    player addItem _x;
                    _index = _forEachIndex;
                } else {
                    _allGood = false;
                };
                if(!_allGood) exitWith {hint getText(missionConfigFile >> "Maverick_Shipwrecks" >> "ShipLootFail");};
            } forEach _lootArray;
            if(_allGood) then {
                hint getText(missionConfigFile >> "Maverick_Shipwrecks" >> "ShipLootSuccess");
                ["Shipwreck"] spawn mav_ttm_fnc_addExp;
                ((nearestObjects[player,["Land_Wreck_Traw_F"], 20]) select 0) setVariable ["wreckloot", [], true];
            } else {
				for "_i" from 0 to _index do {_lootArray deleteAt 0;};
                ((nearestObjects[player,["Land_Wreck_Traw_F"], 20]) select 0) setVariable ["wreckloot", _lootArray, true];
            };
            life_wrecklooting = false;
        };
    },"",0,false,false,"",'!life_wrecklooting && ((count nearestObjects[player,["Land_Wreck_Traw_F"], 20]) != 0) && (count(((nearestObjects[player,["Land_Wreck_Traw_F"], 20]) select 0) getVariable["wreckloot", []]) != 0)'];
};
if(!isServer) exitWith {};
[] spawn mav_Shipwrecks_fnc_initShipwreck;