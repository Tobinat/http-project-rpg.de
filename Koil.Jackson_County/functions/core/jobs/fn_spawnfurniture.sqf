// [1] spawn client_fnc_spawnFurniture;

// 0 = delete all and start over - 1 is office chair - 2 is sofa - 3 and 4 are laying chairs
private["_type","_status"];



if(count attachedobjects player > 0) then { 
	_status = 2; 
	_chairs = ["big_chair_civ","sofagris_civ","sillamedico2_civ","sillademedico_civ","Land_WoodenTable_large_F","vvv_lowmodel_mesaoficina","vvv_lowmodel_jukebox","vvv_lowmodel_comoda1","nopixel_tools_escritorio2","nopixel_tools_lampara2","nopixel_tools_mesa","nopixel_tools_planta","cama_civ"];
	_type = _chairs FIND (typeof fuckingcouch);
	_type = _type + 1;
} else {
	_del = _this select 0;
	_data = lbData[9339,lbCurSel (9339)];
	_type = call compile format["%1", _data];
	_status = 1;
	closedialog 0;
};

if(!isNil "_del") exitwith {
	{
		deletevehicle _x;
	}foreach mychairs;
	mychairs = [];
};


if(count mychairs > 6) then {
	_process = 0;
	{
		if(isNull _x) then { mychairs deleteAT _process; };
		_process = _process + 1;
	}foreach mychairs;
};

_totalallowed = player getvariable "houselevel";
_totalallowed = _totalallowed * 3;
if(count mychairs > _totalallowed && count attachedobjects player == 0) exitwith { hint "Too much furniture"; };


if(_type == 1) exitwith {
	if(_status == 1) then {
		fuckingcouch = "big_chair_civ" createvehicle getpos player;
		fuckingcouch attachto [player,[0,1,2]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch; 
		fuckingcouch = "big_chair_civ" createvehicle getpos player;
		fuckingcouch allowdamage false;
		_relpos = player getRelPos [1.6, 0]; 
		fuckingcouch setpos _relpos; 
		fuckingcouch setdir getdir player; 
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setpos [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2)];
	};
};

if(_type == 2) exitwith {
	if(_status == 1) then {
		fuckingcouch = "sofagris_civ" createvehicle getpos player; 
		fuckingcouch attachto [player,[0,1,2]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch;  
		fuckingcouch = "sofagris_civ" createvehicle getpos player; 
		fuckingcouch allowdamage false; 
		_relpos = player getRelPos [1.4, 0];  
		fuckingcouch setpos _relpos;  
		fuckingcouch setdir getdir player; 
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch; 
		fuckingcouch setpos [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2)];

	};
};

if(_type == 3) exitwith {
	if(_status == 1) then {
		fuckingcouch = "sillamedico2_civ" createvehicle getpos player; 
		fuckingcouch attachto [player,[0,1.5,1.3]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch;  
		fuckingcouch = "sillamedico2_civ" createvehicle getpos player; 
		fuckingcouch allowdamage false; 
		_relpos = player getRelPos [1.4, 0];  
		fuckingcouch setpos _relpos;  
		fuckingcouch setdir getdir player; 
		if(fuckingcouch in mychairs) exitwith {}; 
		mychairs pushback fuckingcouch;
		fuckingcouch setpos [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2)];

	};
};

if(_type == 4) exitwith {
	if(_status == 1) then {
		fuckingcouch = "sillademedico_civ" createvehicle getpos player; 
		fuckingcouch attachto [player,[0,1.5,1.3]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch;  
		fuckingcouch = "sillademedico_civ" createvehicle getpos player; 
		fuckingcouch allowdamage false; 
		_relpos = player getRelPos [1.4, 0];  
		fuckingcouch setpos _relpos;  
		fuckingcouch setdir getdir player;  
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setpos [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2)];

	};
};

if(_type == 5) exitwith {
	if(_status == 1) then {
		fuckingcouch = "Land_WoodenTable_large_F" createvehicle getpos player;
		fuckingcouch attachto [player,[0,2,1]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch; 
		fuckingcouch = "Land_WoodenTable_large_F" createvehicle getpos player;
		fuckingcouch allowdamage false;
		_relpos = player getRelPos [2.3, 0]; 
		fuckingcouch setpos _relpos; 
		fuckingcouch setdir getdir player; 
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setpos [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2)];
	};
};

if(_type == 6) exitwith {
	if(_status == 1) then {
		fuckingcouch = "vvv_lowmodel_mesaoficina" createvehicle getpos player;
		fuckingcouch attachto [player,[0,1.5,2]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch; 
		fuckingcouch = "vvv_lowmodel_mesaoficina" createvehicle getpos player;
		fuckingcouch allowdamage false;
		_relpos = player getRelPos [1.6, 0]; 
		fuckingcouch setpos _relpos; 
		fuckingcouch setdir getdir player; 		
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setpos [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2)];
	};
};

if(_type == 7) exitwith {
	if(_status == 1) then {
		fuckingcouch = "vvv_lowmodel_jukebox" createvehicle getpos player;
		fuckingcouch attachto [player,[0,1.2,2]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch; 
		fuckingcouch = "vvv_lowmodel_jukebox" createvehicle getpos player;
		fuckingcouch allowdamage false;
		_relpos = player getRelPos [1.2, 0]; 
		fuckingcouch setpos _relpos; 
		fuckingcouch setdir getdir player; 	
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setpos [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2)];
	};
};

if(_type == 8) exitwith {
	if(_status == 1) then {
		fuckingcouch = "vvv_lowmodel_comoda1" createvehicle getpos player;
		fuckingcouch attachto [player,[0,1,2]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch; 
		fuckingcouch = "vvv_lowmodel_comoda1" createvehicle getpos player;
		fuckingcouch allowdamage false;
		_relpos = player getRelPos [1.6, 0]; 
		fuckingcouch setpos _relpos; 
		fuckingcouch setdir getdir player; 
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setpos [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2)];
	};
};





if(_type == 9) exitwith {
	if(_status == 1) then {
		fuckingcouch = "nopixel_tools_escritorio2" createvehicle getpos player;
		fuckingcouch attachto [player,[0,1,2]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch; 
		fuckingcouch = "nopixel_tools_escritorio2" createvehicle getpos player;
		fuckingcouch allowdamage false;
		_relpos = player getRelPos [1.6, 0]; 
		fuckingcouch setpos _relpos; 
		fuckingcouch setdir getdir player; 
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setpos [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2)];
	};
};


if(_type == 10) exitwith {
	if(_status == 1) then {
		fuckingcouch = "nopixel_tools_lampara2" createvehicle getpos player;
		fuckingcouch attachto [player,[0,1,2]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch; 
		fuckingcouch = "nopixel_tools_lampara2" createvehicle getpos player;
		fuckingcouch allowdamage false;
		_relpos = player getRelPos [1.6, 0]; 
		fuckingcouch setpos _relpos; 
		fuckingcouch setdir getdir player; 
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setpos [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2)];
	};
};


if(_type == 11) exitwith {
	if(_status == 1) then {
		fuckingcouch = "nopixel_tools_mesa" createvehicle getpos player;
		fuckingcouch attachto [player,[0,1,2]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch; 
		fuckingcouch = "nopixel_tools_mesa" createvehicle getpos player;
		fuckingcouch allowdamage false;
		_relpos = player getRelPos [1.6, 0]; 
		fuckingcouch setpos _relpos; 
		fuckingcouch setdir getdir player; 
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setposATL [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2) - 0.05 ];
	};
};


if(_type == 12) exitwith {
	if(_status == 1) then {
		fuckingcouch = "nopixel_tools_planta" createvehicle getpos player;
		fuckingcouch attachto [player,[0,1,2]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch; 
		fuckingcouch = "nopixel_tools_planta" createvehicle getpos player;
		fuckingcouch allowdamage false;
		_relpos = player getRelPos [1.6, 0]; 
		fuckingcouch setpos _relpos; 
		fuckingcouch setdir getdir player; 
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setposATL [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2) - 0.05 ];
	};
};


if(_type == 13) exitwith {
	if(_status == 1) then {
		fuckingcouch = "cama_civ" createvehicle getpos player;
		fuckingcouch attachto [player,[0,1,2]];
		attachedfurniture = true;
	} else {
		detach fuckingcouch;
		deletevehicle fuckingcouch; 
		fuckingcouch = "cama_civ" createvehicle getpos player;
		fuckingcouch allowdamage false;
		_relpos = player getRelPos [1.6, 0];
		fuckingcouch setpos _relpos; 
		fuckingcouch setdir getdir player; 
		if(fuckingcouch in mychairs) exitwith {};
		mychairs pushback fuckingcouch;
		fuckingcouch setposATL [ getpos fuckingcouch select 0,getpos fuckingcouch select 1, (getposATL player select 2) - 0.05 ];
	};
};
