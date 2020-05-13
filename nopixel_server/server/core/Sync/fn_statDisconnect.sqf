params ["_player", "_id", "_uid", "_name", "_items", "_messages", "_cash", "_bank", "_position", "_syncInfo", "_updatestr", "_playeroffice", "_pia"]; 
if(isNull _player) exitWith { diag_log "Stat Disconnect - player null"; };

_items = getUnitLoadout _player;

_messages = [];

deletemarker format["%1",_uid];
_cash = _player getVariable "sl_wallet_silverlake";
_bank = _player getVariable "sl_atm_silverlake";

if(_player getVariable  "ACE_isUnconscious") then {
	diag_log "COMBAT LOG:";
	diag_log _name; 
	diag_log "hat sich ausgeloggt, während er Bewusstlos war!"; 
	[_player,3,format ["%1 hat sich während er Bewustlos war ausgeloggt!", _name],_uid,"",_name] call server_fnc_connectionLog;
} else {
	[_player,2,format ["%1 vom Server getrennt", _name],_uid,"",_name] call server_fnc_connectionLog;
};

_position = position _player;

_syncInfo = _player getVariable "sync";
if(isNil "_syncInfo") then { _syncinfo = 1; };

if(_syncInfo == 0 || _uid in currentCop || _uid in currentEMS || _uid in currentFire) then {

	_updatestr = format ["updatePlayerInfoNoGearNoShopNoHouse:%1:%2:%3:%4:%5", _cash, _bank, _position, _messages, _uid]; 
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;

	if (_uid IN currentPoliceDispatch) then {
		_pia = currentPoliceDispatch find _uid;
		currentPoliceDispatch deleteAt _pia;
		publicvariable "currentPoliceDispatch";
	};

	if (_uid IN currentMedicDispatch) then { 
		_pia = currentMedicDispatch find _uid;
		currentMedicDispatch deleteAt _pia;
		publicvariable "currentMedicDispatch";
	};

	if (_uid IN currentFireDispatch) then { 
		_pia = currentFireDispatch find _uid;
		currentFireDispatch deleteAt _pia;
		publicvariable "currentFireDispatch";
	};


	if (_uid IN currentCop) then {
    	_pia = currentCop find _uid;
    	currentCop deleteAt _pia;
    	publicvariable "currentCop";
		//currentCop ="";
	};

	if (_uid IN currentEMS) then {
    	_pia = currentEMS find _uid;
    	currentEMS deleteAt _pia;
    	publicvariable "currentEMS";
   		//currentEMS ="";
	};

} else { 
	_updatestr = format ["updatePlayerInfoNoShopNoHouse:%1:%2:%3:%4:%5:%6", _items, _cash, _bank, _position, _messages, _uid]; 
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
}; 

[_uid,"disconnected"] spawn Server_fnc_connected;

[] spawn server_fnc_refreshjobs;

_playeroffice = _player getVariable "office";

if(!isNil "_playerOffice") then {
_pia = rentedshops FIND _playeroffice;
rentedshops DELETEAT _pia;
deletemarker format["%1OFFICE",_uid];
};

if(isNil "racecontestents") then { racecontestents = []; };
_pia = racecontestents FIND _player; 
racecontestents DELETEAT _pia;

_pia = MafiaLoan1 FIND _player;

if(_pia != -1) then {
	MafiaLoan1 DELETEAT _pia;
	MafiaLoan2 DELETEAT _pia;
};

if (_uid in currentsecurity || _uid in currentTowTruckDrivers || _uid in currentRepairmen || _uid in currentJudges || _uid in currentProsecutor || _uid in currentLawyers || _uid in currentTaxiDrivers || _uid in currentMailmen || _uid in currentNewsMan || _uid in currentTrashman || _uid in currentPizzaFicker) then {

	if (_uid IN currentsecurity) then {
		_pia = currentsecurity find _uid;
		currentsecurity deleteAt _pia;
		publicvariable "currentsecurity";
	};
	if (_uid IN currentTowTruckDrivers) then {
		_pia = currentTowTruckDrivers find _uid;
		currentTowTruckDrivers deleteAt _pia;
		publicvariable "currentTowTruckDrivers";
	};
	if (_uid IN currentRepairmen) then {
		_pia = currentRepairmen find _uid;
		currentRepairmen deleteAt _pia;
		publicvariable "currentRepairmen";
	};
	if (_uid IN currentJudges) then {
		_pia = currentJudges find _uid;
		currentJudges deleteAt _pia;
		publicvariable "currentJudges";
	};
	if (_uid IN currentProsecutor) then {
		_pia = currentProsecutor find _uid;
		currentProsecutor deleteAt _pia;
		publicvariable "currentProsecutor";
	};
	if (_uid IN currentLawyers) then {
		_pia = currentLawyers find _uid;
		currentLawyers deleteAt _pia;
		publicvariable "currentLawyers";
	};
	if (_uid IN currentTaxiDrivers) then {
		_pia = currentTaxiDrivers find _uid;
		currentTaxiDrivers deleteAt _pia;
		publicvariable "currentTaxiDrivers";
	};
	if (_uid IN currentMailmen) then {
		_pia = currentMailmen find _uid;
		currentMailmen deleteAt _pia;
		publicvariable "currentMailmen";
	};
	if (_uid IN currentNewsMan) then {
		_pia = currentNewsMan find _uid;
		currentNewsMan deleteAt _pia;
		publicvariable "currentNewsMan";
	};
	if (_uid IN currentTrashman) then {
		_pia = currentTrashman find _uid;
		currentTrashman deleteAt _pia;
		publicvariable "currentTrashman";
	};
	if (_uid IN currentPizzaFicker) then {
		_pia = currentPizzaFicker find _uid;
		currentPizzaFicker deleteAt _pia;
		publicvariable "currentPizzaFicker";
	};

};

_player setvariable ["getunitloadout",nil,false];
_player setVariable ["sync", nil, false];
_player setVariable ["sl_wallet_silverlake", nil, false];
_player setVariable ["sl_atm_silverlake", nil, false];
_player setVariable ["bankAccount", nil, false];
_player setVariable ["cop", nil, false];
_player setVariable ["ems", nil, false];
_player setVariable ["mafia", nil, false];
_player setVariable ["fire", nil, false];
_player setVariable ["legal", nil, false];
_player setVariable ["garage", nil, false];
_player setVariable ["phoneBackground", nil, false];
_player setVariable ["messages", nil, false];
_player setVariable ["statuses", nil, false];
_player setVariable ["houselevel", nil, false];
_player setVariable ["housecontent", nil, false];
_player setVariable ["shopcontent", nil, false];
_player setVariable ["house", nil, false];
_player setVariable ["office", nil, false];
_player setVariable ["shop", nil, false];

deleteVehicle _player;