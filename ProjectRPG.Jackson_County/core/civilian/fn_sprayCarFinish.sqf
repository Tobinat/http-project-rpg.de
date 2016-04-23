/*
Lakeside Spray Car Finish
SprayCarFinish.sqf
*/
_price = 1000;
if(side player != civilian && side player != east) exitwith {["Lakierer: Ich lakiere doch keine staatlichen Fahrzeuge um! Hast du den Arsch offen?", false] spawn domsg;};
if(vehicle player == player) exitwith { ["Lakierer: Du musst dich auf den Fahrersitz setzen", false] spawn domsg; };
if(driver (vehicle player) != player) exitwith { ["Lakierer: Du musst dich auf den Fahrersitz setzen", false] spawn domsg; };
if(cash_in_hand < _price) exitWith { ["Lakierer: Ist das hier ein Basar? Das kostet 1000$ und fertig!", false] spawn domsg; };	
_vehicle = vehicle player;

["Lakierer: Nich das Fahrzeug bewegen...Ich mache mich an die Arbeit", false] spawn domsg;

_texture = _this select 1;
_startPos = getpos player;
_complete = false;
_remaining = 30;
[player,"spraypaint"] spawn life_fnc_nearestSound;
while{true} do {
	hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Bewege dich nicht! Sprühe: %1 Sekunden.",_remaining];
	uisleep 1;
	_remaining = _remaining - 1;
	if(_remaining == 0) exitwith { _complete = true; };
	if(getpos player distance _startpos > 5) exitwith {};
	if( _remaining == 7 || _remaining == 18 ) then { [player,"spraypaint"] spawn life_fnc_nearestSound; };
	if(vehicle player == player) exitwith {};
};

hint "";

if(_complete) then {
	["cash","take",_price] call life_fnc_handleCash;
	_vehicle setObjectTextureGlobal [0,_texture];
	_vehicle setObjectTextureGlobal [1,_texture];
	_vehicle setObjectTextureGlobal [2,_texture];
	_vehicle setObjectTextureGlobal [3,_texture];
	_vehicle setObjectTextureGlobal [4,_texture];
	_vehicle setObjectTextureGlobal [5,_texture];
	hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/>Lakierer: Abgeschlossen!",_remaining];
} else {
	hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/>Lakierer: Fehlgeschlagen!",_remaining];	
}; 