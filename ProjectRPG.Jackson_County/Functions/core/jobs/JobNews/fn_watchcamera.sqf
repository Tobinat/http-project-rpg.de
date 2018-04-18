
[] spawn {  

private["_textureselection","_object"];

recording = false; 
target = player; 
 

sleep 1;

recording = true;
 
neck = "Sign_Sphere10cm_F" createVehicleLocal position player; 
pilot = "Sign_Sphere10cm_F" createVehicleLocal position player; 
sometarget = "Sign_Sphere10cm_F" createVehicleLocal position player; 
hideobject neck; 
hideobject pilot; 
hideobject sometarget; 
if(!isNil "cam") then {
	camDestroy cam;
};
 
_object = "nopixel_tools_tv1" createvehicle getpos player;
_object setObjectTexture [1, "#(argb,512,512,1)r2t(uavrtt,1)"]; 
 
cam = "camera" camCreate [0,0,0]; 
cam cameraEffect ["Internal", "Back", "uavrtt"]; 
cam attachTo [neck,[-0.18,0.08,0.05]]; 
 
neck attachTo [target,[0,0,0],"neck"]; 
pilot attachTo [target,[0,0,0],"pilot"]; 
  
cam camSetTarget sometarget; 
cam camSetFov 0.5; 
 
"uavrtt" setPiPEffect [0]; 
 
	while{recording} do { 

		sleep 0.05; 

		_pos1 = target worldToModel getPos pilot; 
		_pos2 = target worldToModel getPos neck; 

		_vx1 = (_pos1 select 0) - (_pos2 select 0); 
		_vy1 = (_pos1 select 1) - (_pos2 select 1); 
		_vz1 = (_pos1 select 2) - (_pos2 select 2); 
		_dir = (_vx1 atan2 _vy1) - 25; 

		_dive = (_vy1 atan2 _vz1) + 35;  
		 
		if ((sin _dive) == 0) then {_dive = _dive +1}; 
		_tz = ((1 / sin _dive) * cos _dive);   

		cam attachTo [neck,[-0.18,0.08,0.05]]; 
		sometarget attachTo [neck,[0.5,10,_tz*12]]; 
		cam camSetTarget sometarget; 

		neck setDir _dir; 
		cam camCommit 0; 

	}; 
 
}; 


[] spawn {  

private["_textureselection","_object"];

recording = false; 
target = player; 
 

sleep 1;

recording = true;
 
neck = "Sign_Sphere10cm_F" createVehicleLocal position player; 
pilot = "Sign_Sphere10cm_F" createVehicleLocal position player; 
sometarget = "Sign_Sphere10cm_F" createVehicleLocal position player; 
hideobject neck; 
hideobject pilot; 
hideobject sometarget; 
if(!isNil "cam2") then {
	camDestroy cam2;
};
 
_object = "nopixel_tools_tv1" createvehicle getpos player;
_object setObjectTexture [1, "#(argb,256,256,1)r2t(rendertarget0,1.0)"]; 
 
cam2 = "camera" camCreate [0,0,0]; 
cam2 cameraEffect ["Internal", "Back", "uavrtt"]; 
cam2 attachTo [neck,[-0.18,1.08,0.05]]; 
 
neck attachTo [target,[0,1,0],"neck"]; 
pilot attachTo [target,[0,1,0],"pilot"]; 
  
cam2 camSetTarget sometarget; 
cam2 camSetFov 0.5; 
 
"rendertarget0" setPiPEffect [0];
 
	while{recording} do { 

		sleep 0.05; 

		_pos1 = target worldToModel getPos pilot; 
		_pos2 = target worldToModel getPos neck; 

		_vx1 = (_pos1 select 0) - (_pos2 select 0); 
		_vy1 = (_pos1 select 1) - (_pos2 select 1); 
		_vz1 = (_pos1 select 2) - (_pos2 select 2); 
		_dir = (_vx1 atan2 _vy1) - 25; 

		_dive = (_vy1 atan2 _vz1) + 35;  
		 
		if ((sin _dive) == 0) then {_dive = _dive +1}; 
		_tz = ((1 / sin _dive) * cos _dive);   

		cam2 attachTo [neck,[-0.18,0.08,0.05]]; 
		sometarget attachTo [neck,[0.5,10,_tz*12]]; 
		cam2 camSetTarget sometarget; 

		neck setDir _dir; 
		cam2 camCommit 0; 

	}; 
 
}; 























808 cutRsc ["RscHcamDialog", "PLAIN"]; 


UI_DISP = (uiNamespace getVariable "uil_disp");
CTRL_PIP = (uiNamespace getVariable "CTRL_PIP");
CTRL_CALLED_PIP = (uiNamespace getVariable "CTRL_CALLED_PIP");


[] spawn {   

disableserialization;
private["_textureselection","_object"];

target = player; 
target2 = player; 


recording = true;
 
neck = "Sign_Sphere10cm_F" createVehicleLocal position player; 
pilot = "Sign_Sphere10cm_F" createVehicleLocal position player; 
sometarget = "Sign_Sphere10cm_F" createVehicleLocal position player; 

hideobject neck; 
hideobject pilot; 
hideobject sometarget; 
if(!isNil "cam") then {
	camDestroy cam;
};
 
CTRL_PIP ctrlsettext "#(argb,256,256,1)r2t(rendertarget0,1.0)"


cam = "camera" camCreate [0,0,0]; 
cam cameraEffect ["Internal", "Back", "uavrtt"]; 
cam attachTo [neck,[-0.18,0.08,0.05]]; 
 
neck attachTo [target,[0,0,0],"hand"]; 
pilot attachTo [target,[0,0,0],"pilot"]; 
 
 
 
cam camSetTarget sometarget; 
cam camSetFov 0.25; 
 
"uavrtt" setPiPEffect [0]; 
 
	while{recording} do { 

		sleep 0.05; 

		_pos1 = target worldToModel getPos pilot; 
		_pos2 = target worldToModel getPos neck; 

		_vx1 = (_pos1 select 0) - (_pos2 select 0); 
		_vy1 = (_pos1 select 1) - (_pos2 select 1); 
		_vz1 = (_pos1 select 2) - (_pos2 select 2); 
		_dir = (_vx1 atan2 _vy1) - 25; 

		_dive = (_vy1 atan2 _vz1) + 35;  
		 
		if ((sin _dive) == 0) then {_dive = _dive +1}; 
		_tz = ((1 / sin _dive) * cos _dive);   

		sometarget attachTo [neck,[0,-1,0.05]];
		cam attachTo [neck,[0.5,1.4,0]]; 
		cam camSetTarget sometarget; 

		neck setDir _dir; 
		cam camCommit 0; 

	}; 
 
}; 














