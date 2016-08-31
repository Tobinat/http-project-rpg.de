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

_this setObjectTexture [4, "\PRPG_Data\plates\D.paa"];
_this setObjectTexture [1, format ["\PRPG_Data\plates\L.paa",_plate1]];
_this setObjectTexture [2, format ["\PRPG_Data\plates\V.paa",_plate2]];
_this setObjectTexture [3, format ["\PRPG_Data\plates\P.paa",_plate3]];
_this setObjectTexture [5, format ["\PRPG_Data\plates\-.paa",_plate5]];
_this setObjectTexture [6, format ["\PRPG_Data\plates\%1.paa",_plate6]];
_this setObjectTexture [7, format ["\PRPG_Data\plates\%1.paa",_plate7]];
