/*
Search Words: 
pizza
*/

_item = param [0,false,[false]];
_complete = false;
_price = 750;


if(_item) then {



} else {

	if(karma_level > 0) then {
		_mydiscount = karma_level / 100;
		_discount = 1 - _mydiscount;
		_price = _price * _discount;
		_discountper = _mydiscount * 100;
		[format["Du hast einen %%1 Rabatt durch dein Karma erhalten!",_discountper], false] spawn domsg;
	};


	if(cheap_buffs) then { _price = _price * 0.7; cheap_buffs = false; ["Du hast einen Rabatt von 30% durch einen Verkäufer erhalten!", false] spawn domsg; };
	if(cash_in_hand < _price) exitWith { ["PIZZA LIEFERANT: Dude...Ich brauche 70$ für diese Ripperino Pizza", false] spawn domsg; _complete = true; };

	["cash","take",_price] call life_fnc_handleCash;

	
};

if(_complete) exitWith {};

["Add","Food",100] spawn fnc_sustain;

life_pizza = 0;
uiSleep 1.5;
life_pizza = 5400;

["Mmm, Ripperino Pizza. Das sollte mich stärken...", false] spawn domsg;

while {life_pizza > 0} do {

	uiSleep 7;
	life_pizza = life_pizza - 7;
	if(!im_hurt) then {
		["Add",0.05] call fnc_doHealth;
	};
};


["Der Stärkeeffekt lässt irgendwie nach...", false] spawn domsg;

life_pizza = 0;