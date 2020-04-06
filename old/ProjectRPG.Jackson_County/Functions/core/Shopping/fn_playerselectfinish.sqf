//player select

//[8832.93,1567.56,0.00088501]
//cam pos [8832.93,1566.48,0.000883102]
//[8832.93,1565.37,0.000883102]
disableSerialization;
_answer = _this select 0;

if(_answer == "Female") then { Female = true; player forceAddUniform "EF_FEM_4_2LPBP2"; };
if(_answer == "Male") then { Female = false; };

_display = findDisplay 1444;
_control = _display displayCtrl 1500;
charselection = false;
closedialog 0;


client_kcCamera cameraEffect ["TERMINATE","BACK"]; 
camDestroy client_kcCamera;
playMusic  "";
//updates sex based off FEMALE variable
["NA","sex",0] call client_fnc_sustain;
player setVariable["loaded", 1, false];

