_oreArray = ["CG_Heroin"];

if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { hint "Przetwarzanie w toku"; };
_localProtection = 0;

_thecargo = getmagazineCargo missionVehicle;

clearmagazinecargoGlobal missionVehicle;

_holder = missionVehicle;

_process = _thecargo select 0; 
_ItemCount = _thecargo select 1;

_totalValue = 0;

if(!isnil "_process") then {
	_count = 0;
	{ 

		_localProtection = _localprotection + 1;
		globalProtection = globalProtection + 1;
		if(_localProtection != globalProtection) exitwith { [1,"Mafia Drop Off"] spawn client_fnc_anticheat; };

		_itemNumber = _ItemCount select _count;
		 if !(_x IN _oreArray) then {
			_holder addMagazineCargoGlobal [_x,_itemnumber];
			_count = _count + 1;
			uisleep 0.05;
		} else {
			_n = _oreArray FIND _x;

			_totalValue = _itemNumber;

			_count = _count + 1;
			playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
			uisleep 1.5;
		};
	} foreach _process; 
};

globalProtection = 0;

_mafiacash = _totalValue * 500;

["Add",_mafiaCash] remoteexec ["server_fnc_updateMafiaBank",2];

//format["Mafia zgarnęła %1 z transportu narkotykowego.",_mafiaCash] remoteexec ["hint",-2];

deletevehicle missionvehicle;