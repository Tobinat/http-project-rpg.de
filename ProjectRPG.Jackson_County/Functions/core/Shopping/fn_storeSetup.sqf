_dummy = "C_man_polo_2_F" createVehicleLocal [9818.83,1079.16,0.00126028];
_dummy setpos [9818.83,1079.16,0.00126028];
client_kcCamera  = "CAMERA" camCreate (getPos player);  
showCinemaBorder true;   
client_kcCamera cameraEffect ["EXTERNAL", "BACK"];                             
client_kcCamera camSetPos [9821.32,1079.3,1];  
client_kcCamera camSetFOV 0.85;  
client_kcCamera camSettarget _dummy; 
 
client_kcCamera camCommit 0;
uisleep 0.25;
deletevehicle _dummy;

cockbag = "C_man_polo_2_F" createVehicleLocal [9819.32,1079.66,0.0015521];  
cockbag setdir 90;  
cockbag setpos [9819.32,1079.66,0.0015521];

if(isNil "dialog_open") then { dialog_open = true; };
dialog_open = true;
while{dialog_open} do { uisleep 0.05; cockbag setdir ((getdir cockbag) + 5); };