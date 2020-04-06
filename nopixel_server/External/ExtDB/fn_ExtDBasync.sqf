private["_queryStmt","_queryResult","_key","_mode","_return","_loop"]; 
 
if (!params [["_queryStmt", "", [""]], ["_mode", 0, [0]]]) exitWith {}; 

 
_key = "extdb3" callExtension format["%1:%2:%3",_mode, (call extDB_SQL_CUSTOM_ID), _queryStmt]; 
if(_mode isEqualTo 1) exitWith {true}; 

diag_log "ExtDB ASYNC:"; 
diag_log _queryStmt; 
 
_key = call compile format["%1",_key]; 
_key = _key select 1; 
 
uisleep (random .03); 
 
_queryResult = ""; 
_loop = true; 
_count = 0; 
while{_loop} do 
{ 
	_queryResult = "extdb3" callExtension format["4:%1", _key]; 
	_count = _count + 1; 
	if(_count > 60) exitwith {}; 
	if (_queryResult isEqualTo "[5]") then { 
		_queryResult = ""; 
		for "_i" from 0 to 1 step 0 do { 
			_pipe = "extdb3" callExtension format["5:%1", _key]; 
			if(_pipe isEqualTo "") exitWith {_loop = false}; 
			_queryResult = _queryResult + _pipe; 
		}; 
	} else { 
		if (_queryResult isEqualTo "[3]") then { 
			uisleep 0.1; 
		} else { 
			_loop = false; 
		}; 
	}; 
}; 
if(_count > 60) exitwith { diag_log "DB Error - 10 loops"; }; 
 
_queryResult = call compile _queryResult; 
 
 
if((_queryResult select 0) isEqualTo 0) exitWith {diag_log format ["extdb3: Protocol Error: %1", _queryResult]; []}; 
_return = (_queryResult select 1); 
diag_log _return;
_return; 