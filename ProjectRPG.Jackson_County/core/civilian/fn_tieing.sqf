/*
	Description:
	tieing
	fn_tieing.sqf
*/

params [["_civ", Objnull, [Objnull]]];
if(isNull _civ) exitWith {};

//Monitor excessive restrainment
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {uiSleep 1;(!(player getVariable ["tied", false]) || ((time - _time) > (5 * 60) && !(count (player nearEntities ["Man", 25]) > 2)))};
		
		if(!(player getVariable["tied", false])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) && (player getVariable["tied", false]) && isNull objectParent player) exitWith {
			player setVariable["restrained", nil, true];
			player setVariable["Escorting", nil, true];
			player setVariable["transporting", nil, true];
			player setVariable["tied", nil, true];

			detach player;
			["Du hast dich befreien können!", false] spawn domsg;
		};
	};
};

[format["%1 hat dich gefesselt!",name _civ], false] spawn domsg;
if((player getVariable["surrender", false])) then { player setVariable["surrender", nil, true]; };	

player switchMove "";

if(isNull objectParent player) then {
	player playMove "AmovPercMstpSnonWnonDnon_Ease";
};

[] spawn {
	while {player getVariable ["tied", false]} do
	{

		if(isNull objectParent player) then {
			player playMove "AmovPercMstpSnonWnonDnon_Ease";
		};

		_state = vehicle player;
		waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getvariable ["tied", false]) || vehicle player != _state};
				
		if(deadPlayer) exitWith
		{
			player setVariable ["restrained", nil, true];
			player setVariable ["Escorting", nil, true];
			player setVariable ["transporting", nil, true];
			player setVariable ["tied", nil, true];
			detach player;
		};

		if(vehicle player != player) then
		{
			if(driver (vehicle player) == player) then {
				player action["eject",vehicle player]
			};
		};
	};

			
	if(!deadPlayer) then
	{
		player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
		player setVariable ["restrained", nil, true];
		player setVariable ["Escorting", nil, true];
		player setVariable ["transporting", nil, true];
		player setVariable ["tied",nil , true];
		detach player;
	};
};