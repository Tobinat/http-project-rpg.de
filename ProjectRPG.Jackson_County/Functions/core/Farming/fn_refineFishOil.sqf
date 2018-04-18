/*
Refine fish by koil
*/

private["_n","_i"];

_rareFish = ["Fish_Mackerel_7", "Fish_Tuna_7", "Fish_Trout_Rare", "Fish_Shark_Rare"];
_oreArray = ["Fish_Tuna_1","Fish_Tuna_2","Fish_Tuna_3","Fish_Tuna_4","Fish_Tuna_5","Fish_Tuna_6","Fish_Mackerel_1","Fish_Mackerel_2","Fish_Mackerel_3","Fish_Mackerel_4","Fish_Mackerel_5","Fish_Mackerel_6"];
_barArray = ["kif_fish_oil"];
_farmingVehicles = ["POP_Speed_yatch","vvv_NewYacht"];



_n = 0;
{
	_total = {_x == (_oreArray select _n)} count magazines player;
	_i = _total;


	while{ _i > 0 } do {
		player removeitem (_oreArray select _n);
		_itemnumber = 0;

		if(str _x find "1" > -1) then { _itemNumber = 1; };
		if(str _x find "2" > -1) then { _itemnumber = 2; };
		if(str _x find "3" > -1) then { _itemnumber = 3; };
		if(str _x find "4" > -1) then { _itemnumber = 4; };
		if(str _x find "5" > -1) then { _itemnumber = 5; };
		if(str _x find "6" > -1) then { _itemnumber = 6; };

		while{_itemnumber > 0} do {
			player additem "kif_fish_oil";
			_itemnumber = _itemnumber - 1;
		};

		_i = _i - 1;
		playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosasl player, 5, 1, 5];
		sleep 0.25;
		if(dialog) then { closedialog 0; };
		["Sukces","Twoje ryby są przetwarzane na tran, poczekaj chwilę!",[0,255,0,1],""] call Client_fnc_showNotification;
		["Processed"] spawn mav_ttm_fnc_addExp;
		//hint "Your fish is being filleted, stay still!";
	};

	_n = _n + 1;

} foreach _oreArray;



if(typeof (vehicle player) IN _farmingVehicles && driver (vehicle player) == player) then {

	_thecargo = getmagazineCargo (vehicle player);

	clearmagazinecargoGlobal (vehicle player);

	_holder = (vehicle player);

	_process = _thecargo select 0;
	_ItemCount = _thecargo select 1;


	if(!isnil "_process") then {
		_count = 0;
		{
			_itemNumber = _ItemCount select _count;
			 if !(_x IN _oreArray) then {
				_holder addMagazineCargoGlobal [_x,_itemnumber];
				_count = _count + 1;
				uisleep 0.05;
			} else {
				_n = _oreArray FIND _x;
				if(str _x find "1" > -1) then { _holder addItemCargoGlobal [(_barArray select _n),_itemNumber]; };
				if(str _x find "2" > -1) then { _itemnumber = _itemnumber * 2;  _holder addItemCargoGlobal [(_barArray select 0),_itemNumber]; };
				if(str _x find "3" > -1) then { _itemnumber = _itemnumber * 3;  _holder addItemCargoGlobal [(_barArray select 0),_itemNumber]; };
				if(str _x find "4" > -1) then { _itemnumber = _itemnumber * 4;  _holder addItemCargoGlobal [(_barArray select 0),_itemNumber]; };
				if(str _x find "5" > -1) then { _itemnumber = _itemnumber * 4;  _holder addItemCargoGlobal [(_barArray select 0),_itemNumber]; };
				if(str _x find "6" > -1) then { _itemnumber = _itemnumber * 4;  _holder addItemCargoGlobal [(_barArray select 0),_itemNumber]; };
				_count = _count + 1;
				playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosasl player, 5, 1, 5];
				if(dialog) then { closedialog 0; };
				uisleep 0.25;
			};
		} foreach _process;
	};

};
