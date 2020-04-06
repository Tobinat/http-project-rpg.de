if(life_karma < 0) exitwith { hint "Du stehst auf der Liste!"; };

if(life_gift_recent) exitwith { hint "Du hast bereits ein Geschenk erhalten! (45 Minuten)"; };

life_gift_recent = true;

"standard" spawn fnc_delivery;
"fastfood" spawn fnc_delivery;

uisleep 2700;

life_gift_recent = false;