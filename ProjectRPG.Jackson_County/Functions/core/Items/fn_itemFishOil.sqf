if(imHealing) exitwith {};
imHealing = true;
_myInjuries = player getVariable "playerInjuries";
_chory = myInjuries select 10;

if("kif_fish_oil" in magazines player) then {
     ["Verabreiche Tran",10,client_fnc_healTimeTran,player,"AinvPknlMstpSnonWnonDnon_medic_1",[player,_myInjuries,10,"kif_fish_oil"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; 
     } else { hint "Du hast das erforderlichen Item nicht!"; };
sleep 3;
imhealing = false;