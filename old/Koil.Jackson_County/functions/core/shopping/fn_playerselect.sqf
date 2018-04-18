//player select

//[8832.93,1567.56,0.00088501]
//cam pos [8832.93,1566.48,0.000883102]
//[8832.93,1565.37,0.000883102]
disableSerialization;
private["_male","_female","_dummy"];

client_kcCamera  = "CAMERA" camCreate [7797.61,326.183,2.57719];
showCinemaBorder true;   
client_kcCamera cameraEffect ["EXTERNAL", "BACK"];                             
client_kcCamera camSetPos [8193.63,2268.02,0.00144625];  
client_kcCamera camSetFOV 0.85;  

lastsync = time - 3;

charselection = true;
playMusic  "npIntro";
uisleep 15;

[
	[
		["12/12/2051","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],	
		["After Breaking off from the USA..","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Silver Lake City is now in chaos!","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;


_dummy = "C_man_polo_2_F" createVehicleLocal [8192.7,2273.28,0.00145411];
_dummy hideobject true;
_dummy setpos [8192.7,2273.28,0.00145411];
_dummy setdir 162;

client_kcCamera camSettarget _dummy; 
client_kcCamera camCommit 120;

uisleep 10;


[
	[
		["Your destiny is your choosing..","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Silver Lake City is your Story..","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;


[
	[
		["Silver Lake is a small country near chaos...","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["It recently broke off from the USA as its own Country.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;

[
	[
		["Its main city is run by an elected Mayor..","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Who may be corrupted by Mafia Bosses...","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;

[
	[
		["Maybe you can help?","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["One way or the other...","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;

[
	[
		["Its time to choose your path","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Stand your ground, or claim your empire...","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;


uisleep 18;

[
	[
		["Stamp your destiny into history!","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Silver Lake is your Destiny.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;



_male = "C_man_polo_2_F" createVehicleLocal [8193.69,2273.65,0.00145388];
removeuniform _male;
_male allowdamage false;
_male setdir 160;  
_male setpos [8193.69,2273.65,0.00145388];

_female = "C_man_polo_2_F" createVehicleLocal [8191.64,2272.88,0.00145125];
_female allowdamage false;
_female adduniform "vvv_character_protibanador";
_female setdir 158;  
_female setpos [8191.64,2272.88,0.00145125];

uisleep 15;

[
	[
		["Choose your Sex!","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["This CAN be changed, though, it may involve surgery with an untrained Doctor...","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

createdialog "charselect";
while{charselection} do { uisleep 0.05; _male setdir ((getdir _male) + 15); _female setdir ((getdir _female) - 15); };

deletevehicle _female;
deletevehicle _male;
deletevehicle _dummy;

[
	[
		["Welcome to Silver Lake!","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Use your Windows key to interact with everything.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 15;

[
	[
		["Start by Interacting with your trailer marked on the map!","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["You have mail there. Good Luck! :)","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;


["Add","license",1] call client_fnc_sustain;