private["_container","_unit","_handle"];
if(count _this == 1) exitWith {false};
_unit = _this select 0;
_container = _this select 1;
handle = false;

if(isNil "globalProtection") then { globalProtection = 0; };

if(imrestrained || globalProtection != 0) exitwith {
	handle = true;
	handle;
};

_isPack = getNumber(configFile >> "CfgVehicles" >> (typeOf _container) >> "isBackpack");
if(_isPack == 1) exitWith {
	handle = true;
	handle;
};

if(_container isKindOf "Car" && {(locked _container) == 2}) exitWith {
	if(!(_container in current_cars)) then {
		["You're not allowed to open the vehicles inventory while it's locked.", false] spawn domsg;
	handle = true;
	handle;
	};
};

if(_container isKindOf "Ship" && {(locked _container) == 2}) exitWith {
	if(!(_container in current_cars)) then {
		["You're not allowed to open the vehicles inventory while it's locked.", false] spawn domsg;
	handle = true;
	handle;
	};
};

if(_container isKindOf "Air" && {(locked _container) == 2}) exitWith {
	if(!(_container in current_cars)) then {
		["You're not allowed to open the vehicles inventory while it's locked.", false] spawn domsg;
	handle = true;
	handle;
	};
};

if(_container isKindOf "LandVehicle" && {(locked _container) == 2}) exitWith {
	if(!(_container in current_cars)) then {
		["You're not allowed to open the vehicles inventory while it's locked.", false] spawn domsg;
	handle = true;
	handle;
	};
};

if(_container isKindOf "MotorCycle" && {(locked _container) == 2}) exitWith {
	if(!(_container in current_cars)) then {
		["You're not allowed to open the vehicles inventory while it's locked.", false] spawn domsg;
	handle = true;
	handle;
	};
};



[] spawn
{
	uiSleep 0.05;
	waituntil {!(isnull (finddisplay 602)) || handle };
	if(!handle) then {
		((findDisplay 602) displayCtrl 638) ctrlSetEventHandler ["LBDblClick", "_this call client_fnc_fuckyoucgandprorpandothershitmods"];  
		((findDisplay 602) displayCtrl 633) ctrlSetEventHandler ["LBDblClick", "_this call client_fnc_fuckyoucgandprorpandothershitmods"];  
		((findDisplay 602) displayCtrl 640) ctrlSetEventHandler ["LBDblClick", "_this call client_fnc_fuckyoucgandprorpandothershitmods"];  
		((findDisplay 602) displayCtrl 619) ctrlSetEventHandler ["LBDblClick", "_this call client_fnc_fuckyoucgandprorpandothershitmods"];
	}; 
};

[] spawn
{
	waituntil {!(isnull (finddisplay 602)) || handle };
	if(!handle) then {
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