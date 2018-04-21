private ["_shop","_unit","_shopplayer","_shopcontent"];  
 
_shop = _this select 0; 
_unit = _this select 1; 
 
diag_log format ["Otworzył sklep %1", _unit]; 
 
 
_shop = nearestObjects [_unit, [_shop], 30]; 
_shop = _shop select 0; 
 
_shopplayer = _shop getVariable "shop"; 
 
if(isNil "_ShopPlayer") exitWith { ["Aktualnie nie ma właściciela sklepu.", false] remoteExec ["domsg",_unit]; }; 
 
_uid = getPlayerUID _shopplayer; 
 
if(_uid in activeshopcrates) exitwith { ["Ten sklep jest aktualizowany, poczekaj chwilę.", false] remoteExec ["domsg",_unit]; }; 
 
_shopcontent = _shopplayer getVariable "shopcontent"; 
 
[_shopcontent,_shopplayer] remoteExec ["client_fnc_openShop",_unit]; 
 
 
