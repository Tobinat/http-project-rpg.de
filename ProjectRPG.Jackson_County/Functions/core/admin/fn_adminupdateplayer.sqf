if(isNil "kacfocus") then { kacfocus = player; };
_player = call compile format["%1",(lbData[1500,(lbCurSel 1500)])];
kacfocus = _player;
camDestroy client_kacCamera;                       
client_kacCamera  = "CAMERA" camCreate (getPos _player);  
showCinemaBorder true;   
client_kacCamera cameraEffect ["EXTERNAL", "BACK"];                              
client_kacCamera camSetFOV 1.5;  

while { true } do { if( kacfocus != _player ) exitwith {}; client_kacCamera camSetTarget _player; client_kacCamera camSetRelPos [0,2,2]; client_kacCamera camCommit 1; uisleep 0.5; };