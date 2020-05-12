/*
petroleo < string to object
*/
private["_n","_i","_localprotection"];

//_oreArray = ["prpg_item_kupfer_ore", "prpg_item_eisen_ore", "prpg_item_silber_ore","prpg_item_aluminium_ore","prpg_item_blei_ore","prpg_item_sandsack"];
//_barArray = ["prpg_item_kupfer_bar", "prpg_item_eisen_bar", "prpg_item_silber_bar","prpg_item_aluminium_bar","prpg_item_blei_bar","prpg_item_glas"];
_farmingVehicles = ["VVV_Chevrolet_Cone0","VVV_Chevrolet_Cone0_1","VVV_Chevrolet_Cone0_2","Jonzie_Transit","Jonzie_Transit_1","Jonzie_Transit_2","Jonzie_Raptor","Jonzie_Raptor_1","Jonzie_Raptor_2"];

if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { ["Eins nach dem anderen!",false] spawn domsg; };
_localProtection = 0;

["Du Verarbeitest Sand, bleibe kurz stehen!",false] spawn domsg;

_n = 0;
{
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

	_n = _n + 1;

} foreach _oreArray;

if(_localProtection != globalProtection) exitwith { globalProtection = 0; };


if(typeof (vehicle player) IN _farmingVehicles && driver (vehicle player) == player) then {

	_thecargo = getmagazineCargo (vehicle player);

	clearmagazinecargoGlobal (vehicle player);

	_holder = (vehicle player);

	_process = _thecargo select 0;
	_ItemCount = _thecargo select 1;


	if(!isnil "_process") then {
		_count = 0;
		{

			_localProtection = _localprotection + 1;
			globalProtection = globalProtection + 1;
			if(_localProtection != globalProtection) exitwith { [1,"Refine Pelt Script"] spawn client_fnc_anticheat; };

			_itemNumber = _ItemCount select _count;
			 if !(_x IN _oreArray) then {
				_holder addMagazineCargoGlobal [_x,_itemnumber];
				_count = _count + 1;
				uisleep 0.05;
			} else {
				_n = _oreArray FIND _x;
				_holder addItemCargoGlobal [(_barArray select _n),_itemNumber];
				_count = _count + 1;
				playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
				uisleep 0.25;
				if(dialog) then { closedialog 0; };
			};
			["Processed"] spawn mav_ttm_fnc_addExp;
		} foreach _process;
	};
};
globalProtection = 0;