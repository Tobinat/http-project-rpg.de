/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Vehicle Garage, why did I spawn this in an action its self?
*/
private["_spawnPos","_dir","_type"];
_type = [_this,1,"",[""]] call BIS_fnc_param;
_spawnPos = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

life_garage_sp = [(_spawnPos modelToWorld [5,-10,0]),(getDir _spawnPos)+0];
life_garage_type = _type;
[getPlayerUID player,playerSide,_type,player] remoteExec ["TON_fnc_getVehicles",2];
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,(localize "STR_ANOTF_QueryGarage")];
