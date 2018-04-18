/*

*/
private["_civ"];
_civ = param [0,Objnull,[Objnull]];
if(isNull _civ) exitWith {};

//Monitor excessive gag
[] spawn
{
	private["_time"];
	for "_i" from 0 to 1 step 0 do 
	{
		uisleep 5;
		_chance = round (random 100);
		if(_chance > 98) then {
			//[player,"gagged"] spawn life_fnc_nearestSound;

		};
		if(!(player getVariable["gagged", false])) exitWith {};
		if(!(imRestrained)) exitwith {
			player setVariable["gagged", nil, true];
			player setVariable ["tf_voiceVolume", 1, true];
			["Udało Ci się wypluć skarpetę!", false] spawn domsg;
		};
	};
};

["Włożono Ci skarpetę do mordy.",true] spawn domsg;
player setVariable ["tf_voiceVolume", 0, true];
while { true } do
{	
	if(!(player getvariable ["gagged", false])) exitWith {
		["Wyjeto Ci skarpete z mordy.",true] spawn domsg;
		player setVariable ["tf_voiceVolume", 1, true];
		player setVariable ["gagged", nil, true];
	};
	if(deadPlayer) exitWith
	{
		["Wyjeto skarpete z mordy.",true] spawn domsg;
		player setVariable ["tf_voiceVolume", 1, true];
		player setVariable ["gagged", nil, true];
	};
	uiSleep 1;
};

//removeHeadGear player;
if(!deadPlayer) then
{
	player setVariable ["gagged", nil, true];
	player setVariable ["tf_voiceVolume", 1, true];
	detach player;
};