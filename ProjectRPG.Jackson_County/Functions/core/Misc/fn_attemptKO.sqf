// attemptKO CurrentCursorTarget;
_target = _this select 0;

playSound3D ["cg_mission_files\sounds\punch1.ogg", player, false, getPosASL player, 1, 1, 25];
player playmove "AwopPercMstpSgthWrflDnon_End2";

_chance = round (random 100);
if(_chance > 75) then {
	[] remoteExecCall ["client_fnc_successKO",_target];
};