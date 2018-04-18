private["_new"];
_type = _this select 0;
_current = (vehicle player) animationphase "light_x_anim"; 

if(_type == 2) then {
	if(_current > 0.65) then { _current = 0; }; 
	_new = _current + 0.02; 
} else {
	if(_current < 0) then { _current = 0.64; }; 
	_new = _current - 0.02; 
};
(vehicle player) animate["light_x_anim",_new];