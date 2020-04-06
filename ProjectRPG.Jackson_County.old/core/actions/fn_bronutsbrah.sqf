
_item = param [0,false,[false]];

_complete = false;
_price = 1250;




if(_item) then {

	

} else {

	if(karma_level > 0) then {
		_mydiscount = karma_level / 100;
		_discount = 1 - _mydiscount;
		_price = _price * _discount;
		_discountper = _mydiscount * 100;
		[format["Durch dein Karma-Level hast du %%1 gespart!",_discountper], false] spawn domsg;
	};

	if(cheap_buffs) then { _price = _price * 0.7; cheap_buffs = false; ["Du hast 30% durch einen Gutschein gespart!", false] spawn domsg; };

	if(cash_in_hand < _price) exitWith { ["DONUT GUY: Du hast nicht genug Geld, ich brauche $1250 für die Donuts!", false] spawn domsg;  _complete = true; };

	["cash","take",_price] call life_fnc_handleCash;
};

if(_complete) exitWith {};

["Dieser Bronut enthielt sehr viel Zucker! Du Zielst nun fpr 90 Minuten einfacher!", false] spawn domsg;

life_bro = 0;
uiSleep 1;
life_bro = 5400;
player setUnitRecoilCoefficient 1.8;
while{life_bro > 0} do {
	life_bro = life_bro - 1;
	uiSleep 1;
};
["Die Wirkung des Bronuts lässt nach!", false] spawn domsg;
player setUnitRecoilCoefficient 2.8;