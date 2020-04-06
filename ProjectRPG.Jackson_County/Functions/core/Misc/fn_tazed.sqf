/*
	File: fn_tazed.sqf
	
	
	Description:
	Starts the tazed animation and broadcasts out what it needs to.
*/
params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]]];
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; client_istazed = false;};
_sleeptime = 25;

if(client_crazy > 0) then {
	_sleeptime = _sleeptime * 0.5;
};

if(_shooter isKindOf "Man" && !deadPlayer) then
{
	if(!client_istazed) then
	{
		client_istazed = true;
		[] spawn KK_fnc_forceRagdoll;

		disableUserInput true;
		player setVariable ["tf_voiceVolume", 0, true];

		player playmovenow "DeadState";
		_sleeptime spawn {
			_sleeptime = _this;
			uisleep _sleeptime;
			sleep 1;
			if(!(player getVariable ["escorting", false])) then {
				detach player;
			};
			sleep 1;
			client_istazed = false;
			disableUserInput false;
			[player,""] remoteExecCall ["client_fnc_animSync"];
			player setVariable ["tf_voiceVolume", 1, true];
		};
	};
} else {
	_unit allowDamage true;
	client_istazed = false;
};