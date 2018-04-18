"A3L_Fnc_Request" addPublicVariableEventHandler {
private ["_player"];
_player = _this select 1;

[{{[] spawn _x} foreach A3L_fnc_Zep6EvEd;},"BIS_fnc_spawn",_player,false] call BIS_fnc_MP;

//[_this select 1] execVM "\life_server\vew3s4Af\Core\Network\fn_CheckWL.sqf";
};
