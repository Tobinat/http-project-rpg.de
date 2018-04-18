if(imHealing) exitwith {};
imHealing = true;
_myInjuries = player getVariable "playerInjuries";
_chory = myInjuries select 10;

if("kif_fish_oil" in magazines player) then {
     ["Podaję tran",10,client_fnc_healTimeTran,player,"AinvPknlMstpSnonWnonDnon_medic_1",[player,_myInjuries,10,"kif_fish_oil"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; 
     } else { hint "Nie posiadasz wymaganego przedmiotu!"; };
sleep 3;
imhealing = false;