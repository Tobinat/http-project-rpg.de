/*
Inventory Opened Event _handler
*/
private["_container","_unit","_handle"];
if(count _this == 1) exitWith {false};
_unit = _this select 0;
_container = _this select 1;
_handle = false;


/*
if(vehicle player != player || _container isKindOf "Car" || _container isKindOf "Ship" || _container isKindOf "Air" || _container isKindOf "Motorcycle" ) then {
	[] spawn fnc_testdupe;
};	
*/


_isPack = getNumber(configFile >> "CfgVehicles" >> (typeOf _container) >> "isBackpack");
if(_isPack == 1) exitWith {
	_handle = true;
	_handle;
};

if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
	_house = nearestBuilding (getPosATL player);
	if(!(_house in life_vehicles) && {(_house getVariable ["locked",false])} && side player != west) then {
		[localize "STR_House_ContainerDeny", false] spawn domsg;
		_handle = true;
		_handle;
	};
};

if(_container isKindOf "LandVehicle" OR _container isKindOf "Ship" OR _container isKindOf "Air") exitWith {
	if(!(_container in life_vehicles) && {(locked _container) == 2}) exitWith {
		[localize "STR_MISC_VehInventory", false] spawn domsg;
		_handle = true;
		_handle;	
	};
};

//Allow !deadPlayers who've been knocked out to be looted, just not the dead ones
if(_container isKindOf "Man" && !alive _container) exitWith {
	[localize "STR_NOTF_NoLootingPerson", false] spawn domsg;
	_handle = true;
	_handle;
};

if(_container isKindOf "Car" || _container isKindOf "Ship" || _container isKindOf "Air" || _container isKindOf "Motorcycle") exitWith {
	if(!(_container in life_vehicles) && {(locked _container) == 2}) exitWith {
	["An den Kofferraum kommst du nicht ran! Das Fahrzeug ist abgeschlossen!", false] spawn domsg;
	_handle = true;
	_handle;
	};
};

[] spawn
{
	uiSleep 0.05;
	waituntil {!(isnull (finddisplay 602)) || _handle };
	if(!_handle) then {
		((findDisplay 602) displayCtrl 638) ctrlSetEvent_handler ["LBDblClick", "_this call fnc_item_CG"];  
		((findDisplay 602) displayCtrl 633) ctrlSetEvent_handler ["LBDblClick", "_this call fnc_item_CG"];  
		((findDisplay 602) displayCtrl 640) ctrlSetEvent_handler ["LBDblClick", "_this call fnc_item_CG"];  
		((findDisplay 602) displayCtrl 619) ctrlSetEvent_handler ["LBDblClick", "_this call fnc_item_CG"];
	}; 
};

[] spawn
{
	waituntil {!(isnull (finddisplay 602)) || _handle };
	if(!_handle) then {
		while {true} do
		{
			if(!isNull (findDisplay 49)) exitwith {
				closedialog 0;
				sleep 0.25;
				closedialog 0;
			};
			if(!isNull (findDisplay 602)) exitwith {
			};
			sleep 0.05;
		};
	};
};