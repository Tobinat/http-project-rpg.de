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
		["Jest rok 2018. Po 20 latach staran malutka wysepka na polnocy Morza Karaibskiego uzyskala autonomie.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Dzieki finansowemu wsparciu USA Silver Lake rozkwitlo. Uchwalilo wlasna konstytucje, powolalo sluzby i w koncu wyszlo ze strefy wpływow panstw Ameryki Lacinskiej.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
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
		["Z racji swojej dogodnej pozycji Silver Lake od zawsze byl jednym z glownych narkotykowych szlakow laczącym obie Ameryki.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Policja robi co może lecz nie jest w stanie zablokowac ciagle rozwijajacej się mafii i gangow.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;


[
	[
		["Przestepczym polswiatkiem zarzadza tajemniczy boss, ktory pozostaje w ukryciu. Trzyma w ryzach wszystkie gangi i nic nie umknie jego uwadze.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Piecze nad wyspa trzyma demokratycznie wybrany burmistrz. To on, wraz ze swoimi doradcami, stanowia prawo na tej wyspie.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;

[
	[
		["Od decyzji burmistrza zalezy czy Silver Lake będzie prosperowac, czy pograzy się w dlugach i inflacji.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Lud nie znosi nieudacznikow. Wladza musi się liczyc z tym, ze mieszkancy Silver Lake moga powiedziec dosc i wyjsc na ulice.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;

[
	[
		["Na wyspie pojawiles się Ty, moj drogi czytelniku. W poszukiwaniu lepszego miejsca na Ziemi przyleciales na wyspę.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Za ostatnie dolary wynajales niechlujne mieszkanie i zakupiłes stare auto, w ktorym pasowałoby zmienić olej.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;

[
	[
		["To co teraz zrobisz zalezy tylko od Ciebie i od twoich ambicji. Mozesz zostać sklepikarzem, politykiem. Mozesz uratowac zycie jako lekarz lub chronic je jako policjant.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["A moze z pistoletem w ręce wzbogacisz się na innych, dokonujac smiałych napadow i rozkrecajac swoj wlasny narkotykowy kartel. 
","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;


uisleep 18;

[
	[
		["To wiesz tylko Ty. Pamietaj, ze bede Ci się uwaznie przygladal. Jestem ciekaw do czego dojdziesz.
","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Ruszaj, juz czas… obudzic sie.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
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
		["Wybierz płeć!","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Płeć może być zmieniona w szpitalu...","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

createdialog "charselect";
while{charselection} do { uisleep 0.05; _male setdir ((getdir _male) + 15); _female setdir ((getdir _female) - 15); };

deletevehicle _female;
deletevehicle _male;
deletevehicle _dummy;

[
	[
		["Witaj w Silver Lake!","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Używaj przycisku Windows by otwierać menu interakcji.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 15;

[
	[
		["Zacznij od otworzenia menu interakcji w Twojej przyczepie oznaczonej na mapie!","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Możesz w niej przeczytać swojego pierwszego maila. Powodzenia! :)","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;


["Add","license",1] call client_fnc_sustain;