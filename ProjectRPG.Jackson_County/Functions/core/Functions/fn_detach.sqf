// detach CurrentCursorTarget;
_chairs = ["big_chair_civ","sofagris_civ","sillamedico2_civ","sillademedico_civ","Land_WoodenTable_large_F","vvv_lowmodel_mesaoficina","vvv_lowmodel_jukebox","vvv_lowmodel_comoda1","nopixel_tools_escritorio2","nopixel_tools_lampara2","nopixel_tools_mesa","nopixel_tools_planta"];

{
	if(typeof _x IN _chairs) then { hint "Du kannst keine besetzten Stühle entfernen."; } else { detach _x; };
} forEach attachedObjects player;

if(attachedcar) then {
	attachedcar = false;
	{
		_vehicle = _x;
		_vehicle allowdamage true;
		_pia = attachedCarArray find _vehicle;
    	attachedCarArray deleteAt _pia;
		{
			_vehicle enableCollisionWith _x;
		}foreach allplayers;
	}forEach attachedCarArray;
};
