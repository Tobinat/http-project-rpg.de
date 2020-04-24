//if working - ["Naprawa obiektu",15,client_fnc_repairNear,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,"prpg_data\sounds\repair.ogg"] spawn client_fnc_dotask;
private["_thisobject"];
if(isNil "repairedobjects") then { repairedobjects = []; };
if(isNil "lastpos") then { lastpos = getpos player; };
if(isNil "vehspawned") exitWith { ["Du brauchst einen Firmenwagen, da ist dein Werkzeug drin!", false] call domsg; };
_pay = false;
{ if( damage _x == 1 && !isPlayer _x ) then { if (player distance vehspawned < 20) then { _pay = true; ["MechanicRepaired"] spawn mav_ttm_fnc_addExp;}; _x setdamage 0; _thisobject = _x;  }; } foreach nearestObjects [player, [], 20];

if(_thisobject IN repairedobjects || !(_pay)) exitwith {};
repairedobjects pushback _thisobject;
if(lastpos distance player < 30) then { paycheck = paycheck + 15; } else { paycheck = paycheck + 50; };
lastpos = getpos player;
