//null = [this] execVM "virtual_arsenal_init.sqf"

//	[
//		[" (myjob == ""Cop"" && typeof cursorobject == ""Box_NATO_Uniforms_F"") && player getvariable ""cop"" > 1 "],
//		["MUNDURY", "[cursorobject] spawn client_fnc_vars"]
//	],



_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;
 
 
_availableHeadgear = [
   
];
 
_availableGoggles = [
	
];
 
_availableUniforms = [
   
];
 
_availableVests = [
   
];
 
_availableBackpacks = [
   
 
];
 
_availableMagazine = [
    
];
 
_availableWeapon = [
   
];

_availableAttachments = [

];
 
_availableItems = [
    
];


[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests)] call BIS_fnc_addVirtualItemCargo;
[_crate,((magazineCargo _crate) + _availableMagazine)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) + _availableWeapon)] call BIS_fnc_addVirtualWeaponCargo;
