/*
blunt melee hit
*/
private["_curWep","_curMags","_attach"];
params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]]];
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; client_istazed = false;};
if(deadPlayer) exitWith {};

if(_shooter isKindOf "Man" && !deadPlayer) then
{
	
	if(!client_istazed) then
	{
		[] spawn KK_fnc_forceRagdoll;
		client_istazed = true;
		disableUserInput true;
		[] spawn {
			uiSleep 3;
			[player,"amovppnemstpsraswrfldnon"] remoteExecCall ["client_fnc_animSync"];
			detach player;
			client_istazed = false;
			player allowDamage true;
			disableUserInput false;
		};
	};
}
	else
{
	_unit allowDamage true;
	client_iztazed = false;
};