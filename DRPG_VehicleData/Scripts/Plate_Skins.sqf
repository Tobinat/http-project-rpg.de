sleep 2;
if(local _this && {isNil {_this getVariable "plate1"}&& isNil {_this getVariable "plate2"}&& isNil {_this getVariable "plate3"}&& isNil {_this getVariable "plate5"}&& isNil {_this getVariable "plate6"}&& isNil {_this getVariable "plate7"}}) then 
{
	_numToLetter = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
	_rnd1 = floor random 25;
	_rnd2 = floor random 25;
	_rnd3 = floor random 25;
	_digit1 = _numToLetter select _rnd1;
	_digit2 = _numToLetter select _rnd2;
	_digit3 = _numToLetter select _rnd3;
	_this setVariable ["plate1", _digit1, TRUE];
	_this setVariable ["plate2", _digit2, TRUE];  
	_this setVariable ["plate3", _digit3, TRUE];  
	_this setVariable ["plate5", (round(random 9)), TRUE];  
	_this setVariable ["plate6", (round(random 9)), TRUE];  
	_this setVariable ["plate7", (round(random 9)), TRUE];
};
waitUntil {!(isNil {_this getVariable "plate1"})};
_plate1 = _this getVariable "plate1";
waitUntil {!(isNil {_this getVariable "plate2"})};
_plate2 = _this getVariable "plate2";
waitUntil {!(isNil {_this getVariable "plate3"})};
_plate3 = _this getVariable "plate3";
waitUntil {!(isNil {_this getVariable "plate5"})};
_plate5 = _this getVariable "plate5";
waitUntil {!(isNil {_this getVariable "plate6"})};
_plate6 = _this getVariable "plate6";
waitUntil {!(isNil {_this getVariable "plate7"})};
_plate7 = _this getVariable "plate7";

_this setObjectTextureGlobal  [4, "\DRPG_VehicleData\plates\-.paa"];
_this setObjectTextureGlobal  [1, format ["\DRPG_VehicleData\plates\%1.paa",_plate1]];
_this setObjectTextureGlobal  [2, format ["\DRPG_VehicleData\plates\%1.paa",_plate2]];
_this setObjectTextureGlobal  [3, format ["\DRPG_VehicleData\plates\%1.paa",_plate3]];
_this setObjectTextureGlobal  [5, format ["\DRPG_VehicleData\plates\%1.paa",_plate5]];
_this setObjectTextureGlobal  [6, format ["\DRPG_VehicleData\plates\%1.paa",_plate6]];
_this setObjectTextureGlobal  [7, format ["\DRPG_VehicleData\plates\%1.paa",_plate7]];
