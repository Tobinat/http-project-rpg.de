//player select

//[8832.93,1567.56,0.00088501]
//cam pos [8832.93,1566.48,0.000883102]
//[8832.93,1565.37,0.000883102]
disableSerialization;
private["_male","_female","_dummy"];
/*
client_kcCamera  = "CAMERA" camCreate [7797.61,326.183,2.57719];
showCinemaBorder true;   
client_kcCamera cameraEffect ["EXTERNAL", "BACK"];                             
client_kcCamera camSetPos [8193.63,2268.02,0.00144625];  
client_kcCamera camSetFOV 0.85;  

lastsync = time - 3;
*/
charselection = true;
/*
playMusic  "npIntro";
uisleep 15;

[
	[
		["12/12/2051","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],	
		["Es ist 2018. Nach 20 Jahren erlangte eine sehr kleine Insel im Norden der Karibik die Eigenständigkeit.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Dank der finanziellen Unterstützung der USA floriert Silver Lake. Sie verabschiedeten ihre eigene Verfassung, riefen zum Dienst auf und kamen schließlich aus der Einflusssphäre Lateinamerikas heraus.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
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
		["Wegen seiner günstigen Lage war Silver Lake schon immer eine der wichtigsten Drogenrouten zwischen beiden Amerikas.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Die Polizei tut, was sie kann, ist aber nicht in der Lage, die ständig wachsenden Mafias und Banden zu blockieren.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;


[
	[
		["Das Verbrechen wird von einem mysteriösen Boss beherrscht, der sich versteckt hält. Er hält alle Banden in Schach, und nichts entgeht seiner Aufmerksamkeit.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Der demokratisch gewählte Buergermeister hält die Insel fest. Er und seine Berater sind die richtigen auf dieser Insel.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;

[
	[
		["Es liegt an der Entscheidung des Buergermeisters, ob Silver Lake gedeihen wird oder nicht, ob es sich um Schulden oder Inflation handelt.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Menschen mögen keine Verlierer. Die Behörden muessen sich darauf verlassen, dass die Einwohner von Silver Lake genug sagen und auf die Straße gehen können.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;

[
	[
		["Du bist auf der Insel erschienen, mein lieber Leser. Auf der Suche nach einem besseren Ort auf der Erde bist du auf die Insel gekommen.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Fuer den letzten Dollar hast du eine unordentliche Wohnung gemietet und ein altes Auto gekauft.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;

[
	[
		["Was du jetzt tun, hängt nur von Ihnen und Ihren Ambitionen ab. Du kannst ein Ladenbesitzer werden, ein Politiker. Sie können leben als Arzt retten oder als Polizist schützen.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Und vielleicht kannst du dich mit einer Waffe in deiner Hand bereichern oder dein eigenes Drogenkartell aufbauen. 
","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;


uisleep 18;

[
	[
		["Das weißt du nur. Denk daran es ist dein Leben und deine Zukunft.
","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Aufstehen, es ist Zeit ... aufzuwachen.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
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
		["Wähle Geschlecht","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Geschlecht kann im Krankenhaus geändert werden ...","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;
*/
createdialog "charselect";

//while{charselection} do { uisleep 0.05; _male setdir ((getdir _male) + 15); _female setdir ((getdir _female) - 15); };

//deletevehicle _female;
//deletevehicle _male;
//deletevehicle _dummy;

[
	[
		["Willkommen in Silver Lake.","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Verwenden die Windowstaste oder belege Use Action 10, um das Interaktionsmenü zu öffnen.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

uisleep 18;

[
	[
		["Beginnen mit dem Öffnen des Interaktionsmenüs bei dem auf der Karte markierten Trailer.","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Du kannst deine erste E-Mail lesen. Viel Glück! :)","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;


["Add","license",1] call client_fnc_sustain;