/*
File: fn_stealVehicle.sqf
Author: Kevin Webb
Edit by: MrSalametro
Description: Allows the player to put a stolen vehicle in his garage.
*/
disableSerialization;
private["_control","_price","_vehicle","_nearVehicles","_color","_check"];
_control = ((findDisplay 39400) displayCtrl 39402);
_price = _control lbValue (lbCurSel _control);
_price = _price*2;
if(cash_in_bank < _price) exitWith {[format["Alter! Wenn du dir sowas nicht leisten kannst, dann zieh ab Junge! Komm wieder wenn du $%1 hast!", _price], false] spawn domsg; };
sleep 0.05;
closeDialog 0;
_vehicle = _control lbData (lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_nearVehicles = nearestObjects [getMarkerPos life_chopShop,["Car","Truck"],25];
_vehicle = _nearVehicles select _vehicle;
if(isNull _vehicle) exitWith {};
_check = false; 
{if(player distance _x < 200 && side _x == west) then { _check = true; };} forEach playableUnits; 
if(_check) exitWith {[format["Sorry Alter. In der Nähe sind die verfickten Bullen!", _price], false] spawn domsg;};
_color = 0;
if(typeOf _vehicle in["B_Quadbike_01_F"]) then { _color = floor(random 9); };
[format["Ich ziehe dir dann mal $%1 von deinem Konto ein, Lastschrift, du verstehst?", _price], false] spawn domsg;
["bank","take",_price] call life_fnc_handleCash; 
//[[_vehicle],"TON_fnc_vehicleIsDead",false,false] spawn life_fnc_MP;
[_vehicle] remoteExecCall ["TON_fnc_vehicleDead",(call life_fnc_HCC)];
sleep 0.05;
//[[(getPlayerUID player),playerSide,_vehicle,_color,1],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;
[(getPlayerUID player),playerSide,_vehicle,_color] remoteExecCall ["TON_fnc_getChopCar",(call life_fnc_HCC)];
sleep 0.05;
//[_vehicle],"TON_fnc_getChopCar"] spawn life_fnc_MP;
sleep 0.5;
if(!isNil "_vehicle" && !isNull _vehicle) then { deleteVehicle _vehicle; }; 
["Der Dealer wird nun die Fahrzeugnummer, sowie alle Beweise verschwinden lassen. Warte einen Moment ...", false] spawn domsg;
sleep 5;
["Der Dealer hat das Fahrzeug in deine Garage bringen lassen!", false] spawn domsg;