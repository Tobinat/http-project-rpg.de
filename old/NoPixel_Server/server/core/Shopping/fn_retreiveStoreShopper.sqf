 
 
 
 
private ["_shop","_unit","_shopplayer","_shopcontent"];  
 
_shop = _this select 0; 
_unit = _this select 1; 
 
diag_log ["open someones store %1", _unit]; 
 
 
_shop = nearestObjects [_unit, [_shop], 30]; 
_shop = _shop select 0; 
 
_shopplayer = _shop getVariable "shop"; 
 
if(isNil "_ShopPlayer") exitWith { ["Dieser Shop ist momentan in keinem Besitz.", false] remoteExec ["domsg",_unit]; }; 
 
_uid = getPlayerUID _shopplayer; 
 
if(_uid in activeshopcrates) exitwith { ["Dieser Laden wird moment aufgefüllt, Bitte haben Sie einen Moment Geduld.", false] remoteExec ["domsg",_unit]; }; 
 
_shopcontent = _shopplayer getVariable "shopcontent"; 
 
[_shopcontent,_shopplayer] remoteExec ["client_fnc_openShop",_unit]; 
 
 
