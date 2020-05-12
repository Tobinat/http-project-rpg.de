/*
petroleo < string to object
*/
private["_n","_i","_localprotection"];

_oreArray = ["prpg_item_sandsack"];
_barArray = ["prpg_item_glas"];
_farmingVehicles = ["VVV_Chevrolet_Cone0","VVV_Chevrolet_Cone0_1","VVV_Chevrolet_Cone0_2","Jonzie_Transit","Jonzie_Transit_1","Jonzie_Transit_2","Jonzie_Raptor","Jonzie_Raptor_1","Jonzie_Raptor_2"];

if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { ["Eins nach dem anderen!",false] spawn domsg; };
_localProtection = 0;

["Du Verarbeitest Sand, bleibe kurz stehen!",false] spawn domsg;


_total = {_x == "prpg_item_sandsack"} count items player;
_i = _total;

while{ _i > 0 } do {

	_localProtection = _localprotection + 1;
	globalProtection = globalProtection + 1;
	if(_localProtection != globalProtection) exitwith { [1,"Refine Pelt Script"] spawn client_fnc_anticheat; };

	player removeitem "prpg_item_sandsack";
	player additem "prpg_item_glas";
	_i = _i - 1;
	playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
	uisleep 0.25;
	if(dialog) then { closedialog 0; };
	["Processed"] spawn mav_ttm_fnc_addExp;
};



if(_localProtection != globalProtection) exitwith { globalProtection = 0; };


if(typeof (vehicle player) IN _farmingVehicles && driver (vehicle player) == player) then {

	_thecargo = getItemCargo (vehicle player);

	clearItemcargoGlobal (vehicle player);

	_holder = (vehicle player);

	_process = _thecargo select 0;
	_ItemCount = _thecargo select 1;


	if(!isnil "_process") then {
		_number = _process find "prpg_item_sandsack";
		_howmany = _ItemCount select _number;

		vehicle player addItemCargoGlobal ["prpg_item_sandsack",_howmany];
		playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
		if(dialog) then { closedialog 0; };
		["Processed"] spawn mav_ttm_fnc_addExp;
	};
};
globalProtection = 0;
