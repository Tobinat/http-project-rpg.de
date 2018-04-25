_idc = ctrlIDC (_this select 0);          
_selectedIndex = _this select 1;         
_unit = player;
_item = lbData [_idc, _selectedIndex];

_current = {_x == _item} count magazines player;
if(_current == 0) exitwith {};
//if (_item == "NP_DrugTable") then { [] spawn client_fnc_usedrugtable; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

//if (_item == "NP_GrowingPlot") then { [] spawn client_fnc_plantweed; closeDialog 0; };

if (_item == "np_water") then { ["remove","unhealthiness",1] call client_fnc_sustain; ["add","drink",100] call client_fnc_sustain; [_item,20] spawn client_fnc_removeitem; closeDialog 0; };

if (_item IN ["np_sausage","np_chickensoup","np_peasoup","np_psoup","np_beefsoup","np_lettucesoup","np_tuna"]) then { ["remove","unhealthiness",1] call client_fnc_sustain; ["add","food",100] call client_fnc_sustain; ["add","drink",10] call client_fnc_sustain;  [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "np_groceries") then { ["add","drink",100] call client_fnc_sustain; ["add","food",100] call client_fnc_sustain; ["remove","unhealthiness",1] call client_fnc_sustain; [_item,80] spawn client_fnc_removeitem; closeDialog 0; };

//junky drink
if (_item IN ["np_coke","np_drpepper"]) then {playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45]; ["add","drink",50] call client_fnc_sustain; ["add","unhealthiness",10] call client_fnc_sustain; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };
//intox system
if (_item IN ["np_beer"]) then {playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45]; player playmove "vvv_anim_drink"; client_intox = client_intox + 0.02; [] spawn client_fnc_intox; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };
if (_item IN ["plp_bo_inv_BottleTequila"]) then {playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45]; player playmove "vvv_anim_drink"; client_intox = client_intox + 0.04; [] spawn client_fnc_intox; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };
if (_item IN ["plp_bo_inv_BottleBitters","plp_bo_inv_BottleLiqCream","plp_bo_inv_BottleLiqOrange"]) then {playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45]; player playmove "vvv_anim_drink"; client_intox = client_intox + 0.05; [] spawn client_fnc_intox; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };
if (_item IN ["plp_bo_inv_BottleBlueCorazol","plp_bo_inv_BottleGin"]) then {playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45]; player playmove "vvv_anim_drink"; client_intox = client_intox + 0.03; [] spawn client_fnc_intox; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

//junkfood&drink
if (_item IN 
	["np_hpizza","np_mpizza","np_cpizza","np_spizza","np_vpizza","np_chdonuts","np_jdonuts","np_cdonuts","np_donuts","np_happymeal","np_bigmac","np_mchicken","np_quater","np_cheeseburger","np_hamburger","np_hotdog","np_mhotdog","np_kmhotdog","np_bbqhotdog","np_cheesehotdog"]
	) then { ["add","drink",60] call client_fnc_sustain; ["add","food",60] call client_fnc_sustain; ["add","unhealthiness",10] call client_fnc_sustain;  [_item,20] spawn client_fnc_removeitem; closeDialog 0; };


if (_item IN ["np_ugroceries"] ) then { ["add","drink",100] call client_fnc_sustain; ["add","food",100] call client_fnc_sustain; ["add","unhealthiness",6] call client_fnc_sustain;  [_item,80] spawn client_fnc_removeitem; closeDialog 0; };


//if (_item == "NP_drillitem") then {_cops = (count currentcop); if(_cops < 5) exitwith { hint "Za mało policjantów - 5+"; }; [] spawn client_fnc_bankrobbery; closeDialog 0; };

//if (_item == "CG_C4") then {_cops = (count currentcop); if(_cops < 3) exitwith { hint "Za mało policjantów - 3+"; }; [] spawn client_fnc_blowdoor; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

//if (_item == "CG_Dynamite") then { [] spawn client_fnc_dynamiteFishing; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

//if (_item == "CG_HackingTool") then { [] spawn client_fnc_hackdoor; closeDialog 0; };

//if (_item == "CG_MetalWire") then { [] spawn client_fnc_sendhook; closeDialog 0; };

//if (_item == "CG_Lockpick") then { ["Wytrychuję",120,client_fnc_lockpick,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,"cg_sndimg\sounds\repair.ogg"] spawn client_fnc_dotask; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "cg_atf_bandage_i") then {  ["Leczę",15,client_fnc_dohealth,player,0,["Add",100],0] spawn client_fnc_dotask2;  [_item,0] spawn client_fnc_removeitem;  closeDialog 0; };

if (_item == "CG_MethBag100") then { ["meth",18] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_MethBag90") then { ["meth",15] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_MethBag80") then { ["meth",12] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_MethBag70") then { ["meth",9] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_MethBag60") then { ["meth",6] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_MethBag50") then { ["meth",3] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_WeedBag4") then { ["marijuana",20] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "CG_WeedBag3") then { ["marijuana",16] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "CG_WeedBag2") then { ["marijuana",12] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "CG_WeedBag1") then { ["marijuana",5] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "CG_heroin") then { ["heroin",30] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "CG_cocaine") then { ["cocaine",10] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item == "np_energydrink") then { ["energy",3] spawn client_fnc_useDrug; [_item,0] spawn client_fnc_removeitem; ["Add","unhealthiness",1] call client_fnc_sustain; closeDialog 0; };

if (_item IN ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS"] && myjob IN ["Cop","Fire","EMS"]) then { [_item] spawn client_fnc_useBarrier; closeDialog 0; };

//if (_item == "CG_Spikes_Collapsed") then { [] spawn client_fnc_spikestrip; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };

if (_item == "kif_gopro") then { [] spawn client_fnc_itemGoPro; /*[] call client_fnc_hudgopro;*/ closeDialog 0; };
if (_item == "kif_panicbutton") then { [player] spawn client_fnc_itemPanicButton; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };
if (_item == "kif_nitro") then { client_nos_count = client_nos_count + 3; [] call client_fnc_hudnos; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };
if (_item == "kif_fuel") then { [] spawn client_fnc_itemFuel; [_item,0] spawn client_fnc_removeitem; closeDialog 0; };
if (_item == "kif_fish_oil") then { [] spawn client_fnc_itemFishOil; closeDialog 0; };

//if (_item == "kif_speedbomb") then {if((!(cursorObject isKindOf "LandVehicle"))&&(!(player getVariable ["escorted",false])) && (ClientArrested) && (client_istazed)) exitWith {["Błąd","Nie możesz podłożyć bomby!",[255,0,0,1],""] call Client_fnc_showNotification;}; if(player distance cursorObject > 7) exitWith {["Błąd","Jesteś za daleko!",[255,0,0,1],""] call Client_fnc_showNotification; player addItem "kif_speedbomb";}; ["Podkładam bombę",15,client_fnc_itemSpeedBomb,player,'AinvPknlMstpSnonWnonDnon_medic_1',player,"cg_sndimg\sounds\repair.ogg"] spawn client_fnc_dotask; closeDialog 0; };

false

/*

"CG_MethBag100","CG_MethBag90","CG_MethBag80","CG_MethBag70","CG_MethBag60","CG_MethBag50"

"CG_WeedBag4","CG_WeedBag3","CG_WeedBag2","CG_WeedBag1"
"CG_Heroin"
player additem "CG_cocaine";
*/