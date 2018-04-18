_item = _this select 0;
_chance = _this select 1;
_roll = random(100);

if(_roll > _chance) then {
	player additem _item;
};