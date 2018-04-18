player removeAllEventHandlers "Put";

player addEventHandler["put", {
		if(uniform player == "" && female) then {
		player forceadduniform "U_BasicBody_FS";
		if(_this select 2 == "U_BasicBody_FS") then {
		_container = _this select 1;
		_thecargo = getitemCargo _container;
		clearitemcargoglobal _container;
		_process = _thecargo select 0;
		_container = createVehicle ["groundWeaponHolder", getpos player, [], 0, "can_collide"];
			if(!isnil "_process") then {
				_count = 0;
				{
				_ItemCount = _myweapons select 1;
				_itemNumber = _ItemCount select _count;
					if(_x != "U_BasicBody_FS") then {
						_container addItemCargoGlobal [_x,_itemnumber];
					}; 
				_count = _count + 1;
				} foreach _process;
			};
		};
	};
}];
 