waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["werbung1","Homepage"];
player createDiarySubject ["werbung2","Teamspeak"];
player createDiarySubject ["spacer3","==================="];
player createDiarySubject ["stvo","StVO u. LuftVO"];
player createDiarySubject ["controls","Steuerung"];


													// Werbung - Serverinfos
	player createDiaryRecord["werbung2",
		[
			" ",
				"
<font size='25'>84.200.209.247</font>
				"
		]
	];

	player createDiaryRecord["werbung1",
		[
			" ",
				"
<font size='25'>Project-RPG.de</font>
				"
		]
	];

// Sonstiges ---------------------------------

	player createDiaryRecord ["controls",
		[
			" ",
				"
<font size='25' color='#ff0000'>• Steuerung •</font><br/><font color='#639C18'>Hier findest du die aktuelle Steuerung die auf unserem Altis Life Server gültig ist. Wir gehen von einer deutschsprachigen Tastatur aus. Um von Deutsch auf Englisch (und umgekehrt) zu wechseln, drücke</font><font color='#D66321'> ALT + SHIFT</font><br/><br/>
<font color='#D60000'>Z</font><br/>Spieler-Menü öffnen<br/><br/>
<font color='#D60000'>SHIFT + P</font><br/>Ohropax eingesetzt<br/><br/>
<font color='#D60000'>U</font><br/>Fahrzeuge auf- und zuschließen<br/><br/>
<font color='#D60000'>T</font><br/>Kofferraum öffnen (Z-Items / Virtuelle Items)<br/><br/>
<font color='#D60000'>SHIFT + G</font><br/>Person niederschlagen (MIT WAFFE)<br/><br/>
<font color='#D60000'>SHIFT + T</font><br/>Boxen<br/><br/>
<font color='#D60000'>STRG + 8</font><br/>Speichern<br/><br/>
<font color='#D60000'>WINDOWSTASTE</font><br/>Interaktionsmenü aufrufen<br/>-- Sollte WINDOWSTASTE bei dir nicht funktionieren, öffne dein ESC-Menü > Konfigurieren > Steuerung > Indiv. Steuerung > Aktionstaste 10 anders belegen.<br/><br/>
<font color='#D60000'>WINDOWSTASTE + T</font><br/>Sammeln<br/><br/>
<font color='#D60000'>SHIFT + 6</font><br/>Ergeben<br/><br/>
<font color='#D60000'>WINDOWSTASTE</font><br/>Abbauen (Spitzhacke)<br/><br/>




<font color='#D60000'>Bild Hoch</font><br/>Schranke Öffnen bei der Polizei/Medic/R.F.A<br/><br/>
				"
		]
	];