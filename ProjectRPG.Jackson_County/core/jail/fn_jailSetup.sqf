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
	[9243.17,9283.73,2.00144],
	[9241.39,9286.06,2.00144]
	//[9239.83,9302.13,2.00144],
	//[9283.14,9298.38,0.6143909],
	//[9289.01,9310.3,0.5143909]
	];
	_randomer = floor random (count _lowsecjaillocations);
	_jailpos = _lowsecjaillocations select _randomer;
	player setPos _jailpos;
	["Sie wurden ins County Jail geschickt.", false] spawn domsg;
} else {
	_jaillocations = [
	[9233.89,9275.98,2.00144],
	[9232.51,9278.43,2.00144],
	[9239.83,9288.35,2.00144]
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