_required = _this select 0;
if(checkFinish) exitwith { hint "You need to wait before doing that!"; };

if(animationState player != "Acts_carFixingWheel") then {
	player playmovenow "Acts_carFixingWheel";  
	player disableAI "anim"; 
};

if(requiredOutput == _required) then { 
	["Looks like it worked!",false] spawn doquickmsg;
	totalskills = totalskills - 10;
	if(_required == "Acetone" || _required == "Pseudo") then { playSound3D ["CG_Jobs\sounds\meth\drugAdd.ogg", player, false, getPosasl player, 2, 1, 15]; };
	if(_required == "Cool") then { playSound3D ["CG_Jobs\sounds\meth\drugCool.ogg", player, false, getPosasl player, 2, 1, 15]; };
	if(_required == "Heat") then { playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 2, 1, 15]; };
	if(_required == "Release") then { playSound3D ["CG_Jobs\sounds\meth\drugPressure.ogg", player, false, getPosasl player, 2, 1, 15]; };
} else { 
	myDrugValue = myDrugValue - 10; 
	["Oops!",false] spawn doquickmsg;
	_randomValue = random 30;
	playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 5, 1, 15];
	playSound3D ["CG_Jobs\sounds\meth\drugPressure.ogg", player, false, getPosasl player, 5, 1, 15];
	if(_randomValue < 3) exitwith { 
		"R_60mm_HE" createvehicle (getPosatl player); 
		hint "Well, you messed up!"; 
		cookingMeth = false;
		[(getpos player)] remoteexec ["server_fnc_firestart",2];
		player removeaction myAction1;
		player removeaction myAction2;
		player removeaction myAction3;
		player removeaction myAction4;
		player removeaction myAction5;
		player removeaction myActionPack;
		deletevehicle myDT;
	};
};
checkFinish = true;

