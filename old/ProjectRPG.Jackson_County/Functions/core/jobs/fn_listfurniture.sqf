_chairs = ["big_chair_civ","sofagris_civ","sillamedico2_civ","sillademedico_civ","Land_WoodenTable_large_F","vvv_lowmodel_mesaoficina","vvv_lowmodel_jukebox","vvv_lowmodel_comoda1","nopixel_tools_escritorio2","nopixel_tools_lampara2","nopixel_tools_mesa","nopixel_tools_planta","cama_civ"];
_chairType = ["Office Chair","Corner Sofa","Relaxing Chair 1","Relaxing Chair 2","Wood Table","Box Table","Juke Box","Chest of Drawers","Office Table","Tall Lamp","Coffee Table","Plant","Bed"];


disableSerialization;
_display = findDisplay 9999;
_list = _display displayCtrl 9339;
lbClear _list;

_n = 1;
{
	_list lbAdd format["%1",_x];
	_list lbSetdata [(lbSize _list)-1,str(_n)];
	_n = _n + 1;
} foreach _chairType;