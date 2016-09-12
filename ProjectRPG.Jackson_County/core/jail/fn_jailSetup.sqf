/*
	fn_jailSetup.sqf
*/

_minutes = parseNumber life_arrestMinutes;
life_bail_amount = _minutes * 425;

_hours = floor (_minutes/60);
_minutes = _minutes % 60;

player setVariable ["restrained2", nil, true];
player setVariable ["restrained", nil, true];
player setVariable ["Escorting", nil, true];
player setVariable ["transporting", nil, true];	

if(jail_money_init && _hours > 1) then {
	_lossMoney = _hours - 1;
	_lossTotal = cash_in_bank;
	_lossTotal = _lossTotal * 0.9;
	["Ihnen wurden aufgrund der über 10 jährigen Strafe 10% Ihres Vermögens abgebucht.", false] spawn domsg; 
};

life_is_arrested = true;
player setVariable["life_is_arrested", true, true];
life_battery = 0;
removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);
	
if(life_bail_amount < 12751) then {
	_lowsecjaillocations = [
	[5621.13,6317.65,0.00143433],
	[5620,6320.4,0.00143433],
	[5618.66,6322.88,0.00143433],
	[5616.96,6324.93,0.00143433],
	[5615.63,6327.47,0.00143433]
	];
	_randomer = floor random (count _lowsecjaillocations);
	_jailpos = _lowsecjaillocations select _randomer;
	player setPos _jailpos;
	["Sie wurden ins County Jail geschickt.", false] spawn domsg;
} else {
	_jaillocations = [
	[5631.88,6323.71,0.00143433],
	[5630.63,6326.25,0.00143433],
	[5629.47,6328.7,0.00143433],
	[5627.5,6330.88,0.00143433],
	[5626.37,6333.46,0.00143433]
	];
	_randomer = floor random (count _jaillocations);
	_jailpos = _jaillocations select _randomer;
	player setPos _jailpos;
	[format["Ihre Kaution beträgt: %1", life_bail_amount], false] spawn domsg;
};

uiSleep 2;
[player,"cellclose"] spawn life_fnc_nearestSound;
if((player distance (getMarkerPos "jail_county_1")) > 40 && life_bail_amount < 12751) then
{
	player setPos [9243.17,9283.73,2.00144];
};

if((player distance (getMarkerPos "jail_marker")) > 40 && life_bail_amount > 12750) then
{
	player setPos (getMarkerPos "jail_marker");
};

("A3LJAILTIME" call BIS_fnc_rscLayer) cutRsc ["a3l_jail_timer","PLAIN"]; //show
	
_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#ffffff' align='center' size='0.9'>%1</t>",life_arrestReason];
((uiNamespace getVariable "a3ljailtimer") displayCtrl 1101) ctrlSetStructuredText _sexytext;

[0,_minutes,_hours,0] spawn life_fnc_jailTimer;
cutText ["","BLACK IN"];
if(life_firstSpawn) then {
	life_firstSpawn = false;
	(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
	(findDisplay 46) displayAddEventHandler ["MouseZchanged", "_this spawn life_fnc_enableActions"];
	[] execVM "core\init_survival.sqf";
	[] call life_fnc_hudSetup;
	player setVariable ["loaded", true, true];
};