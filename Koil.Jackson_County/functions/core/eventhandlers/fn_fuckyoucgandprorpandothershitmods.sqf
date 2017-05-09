_idc = ctrlIDC (_this select 0);          
_selectedIndex = _this select 1;         
_unit = player;
_item = lbData [_idc, _selectedIndex];

_current = {_x == _item} count magazines player;
if(_current == 0) exitwith {};
if (_item == "NP_DrugTable") then { [] spawn client_fnc_usedrugtable; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "NP_GrowingPlot") then { [] spawn client_fnc_plantweed; closeDialog 0; };

if (_item == "np_water") then { ["remove","unhealthiness",1] call client_fnc_sustain; ["add","drink",100] call client_fnc_sustain; [_item,20] spawn client_fnc_removeitem; closeDialog 0; };

if (_item IN ["np_sausage","np_chickensoup","np_peasoup","np_psoup","np_beefsoup","np_lettucesoup","np_tuna"]) then { ["remove","unhealthiness",1] call client_fnc_sustain; ["add","food",100] call client_fnc_sustain; ["add","drink",10] call client_fnc_sustain;  [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "np_groceries") then { ["add","drink",100] call client_fnc_sustain; ["add","food",100] call client_fnc_sustain; ["remove","unhealthiness",1] call client_fnc_sustain; [_item,80] spawn client_fnc_removeitem; closeDialog 0; };

//junky drink
if (_item IN ["np_beer","np_coke","np_drpepper"]) then { ["add","drink",50] call client_fnc_sustain; ["add","unhealthiness",10] call client_fnc_sustain; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

//junkfood&drink
if (_item IN 
	["np_hpizza","np_mpizza","np_cpizza","np_spizza","np_vpizza","np_chdonuts","np_jdonuts","np_cdonuts","np_donuts","np_happymeal","np_bigmac","np_mchicken","np_quater","np_cheeseburger","np_hamburger","np_hotdog","np_mhotdog","np_kmhotdog","np_bbqhotdog","np_cheesehotdog"]
	) then { ["add","drink",60] call client_fnc_sustain; ["add","food",60] call client_fnc_sustain; ["add","unhealthiness",10] call client_fnc_sustain;  [_item,20] spawn client_fnc_removeitem; closeDialog 0; };


if (_item IN ["np_ugroceries"] ) then { ["add","drink",100] call client_fnc_sustain; ["add","food",100] call client_fnc_sustain; ["add","unhealthiness",6] call client_fnc_sustain;  [_item,80] spawn client_fnc_removeitem; closeDialog 0; };


if (_item == "NP_drillitem") then { [] spawn client_fnc_bankrobbery; closeDialog 0; };

if (_item == "CG_C4") then { if(currentcop < 3) exitwith { hint "Not enough police 3+"; }; [] spawn client_fnc_blowdoor; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "CG_Dynamite") then { [] spawn client_fnc_dynamiteFishing; [_item,82] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "CG_HackingTool") then { [] spawn client_fnc_hackdoor; closeDialog 0; };

if (_item == "CG_MetalWire") then { [] spawn client_fnc_sendhook; closeDialog 0; };

if (_item == "CG_Lockpick") then { ["Lockpicking",120,client_fnc_lockpick,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,"cg_sndimg\sounds\repair.ogg"] spawn client_fnc_dotask; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "cg_atf_bandage_i") then {  ["Healing",5,client_fnc_dohealth,player,0,["Add",100],0] spawn client_fnc_dotask2;  [_item,0] spawn client_fnc_removeitem;  closeDialog 0; };

if (_item == "CG_MethBag100") then { ["meth",18] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_MethBag90") then { ["meth",15] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_MethBag80") then { ["meth",12] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_MethBag70") then { ["meth",9] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_MethBag60") then { ["meth",6] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_MethBag50") then { ["meth",3] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_WeedBag4") then { ["marijuana",20] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "CG_WeedBag3") then { ["marijuana",16] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "CG_WeedBag2") then { ["marijuana",12] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "CG_WeedBag1") then { ["marijuana",5] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "CG_heroin") then { ["heroin",30] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_cocaine") then { ["cocaine",10] spawn client_fnc_useDrug; [_item,70] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "np_energydrink") then { ["energy",3] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item IN ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS"] && myjob IN ["Cop","Fire","EMS"]) then { [_item] spawn client_fnc_useBarrier; closeDialog 0; };

if (_item == "CG_Spikes_Collapsed") then { [] spawn client_fnc_spikestrip; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

false

/*

"CG_MethBag100","CG_MethBag90","CG_MethBag80","CG_MethBag70","CG_MethBag60","CG_MethBag50"

"CG_WeedBag4","CG_WeedBag3","CG_WeedBag2","CG_WeedBag1"
"CG_Heroin"
player additem "CG_cocaine";
*/