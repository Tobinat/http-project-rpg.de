(vehicle player) setVelocity [0, 0, 0];
if(vehicle Player != player) exitwith {
	["Du musst aussteigen um eine Pizza zu liefern.", false] spawn domsg;
};
player playmove "AmovPercMrunSnonWnonDf_AmovPercMstpSnonWnonDnon_gthEnd";
opfer addItemToBackpack "np_hpizza";
["PizzaGeliefert"] spawn mav_ttm_fnc_addExp;
