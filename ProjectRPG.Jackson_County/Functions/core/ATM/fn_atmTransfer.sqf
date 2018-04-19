params["_bankType"];
if (true) exitWith { ["Verdammt!","Momentan sind leider keine Überweisungen möglich!",[255,0,0,1],""] call Client_fnc_showNotification; };
/*                                                                                        //hint "Ihnen fehlt der nötige Zugriff!";
if(_bankType == 1) exitwith { ["Verdammt!","Ihnen fehlt der nötige Zugriff!",[255,0,0,1],""] call Client_fnc_showNotification; };

_amount = parseNumber (ctrlText 1400);
_player = call compile format["%1",(lbData[1111,(lbCurSel 1111)])];
if(isnull _player) exitwith {};
                                                                                   //hint "Nie wybrano gracza!";
if(isnil "_player") exitwith { ["Verdammt!","Bitte wählen Sie aus, wem Sie geld überweisen wollen!",[255,0,0,1],""] call Client_fnc_showNotification;};
closeDialog 0;
if (_amount > 999999) exitWith {hint "Bitte wählen Sie einen Betrag, der 999 999$ nicht überschreitet!";};
_check = [2, _amount] call Client_fnc_sl_checkMoney_secure;
if (_check) then {

_tax = round (_amount / 20);
_amount = _amount + _tax;
[_amount] call Client_fnc_sl_removeBank_secure;
[_amount] remoteExec ["Client_fnc_sl_addBank_secure",_player];

["Erledigt!","Die Überweisung wurde Erfolgreich übermittelt",[0,255,0,1],""] call Client_fnc_showNotification;
[player,_player,6,format ["%1 Überwiesen %2 an %3", name player, _amount, name _player],_amount] remoteExec ["server_fnc_moneyLog", 2];
} else {
                                                            //hint "Unzureichende Deckung des Kontos!"; 
     ["Verdammt!","Ihr Konto ist nicht genügend gedeckt!",[255,0,0,1],""] call Client_fnc_showNotification;  
};*/
