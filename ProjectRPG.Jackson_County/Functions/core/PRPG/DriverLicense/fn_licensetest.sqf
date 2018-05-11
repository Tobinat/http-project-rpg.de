//License Test Ground Vehicles

["Deine praktische Prüfung beginnt - Fahre nicht schneller als 70kmh - und denk daran, dich anzuschnallen!",false] spawn domsg;
playSound "racebeep1";
sleep 1;
["Deine praktische Prüfung beginnt - Fahre nicht schneller als 70kmh - und denk daran, dich anzuschnallen!",false] spawn domsg;
playSound "racebeep1";
sleep 1;
beginpos = getpos player;
_totaltest = 4;
myvehicletesticle = "critgamin_smart_civ" createVehicle (getmarkerpos "t_test_25");
myvehicletesticle setDir (markerDir "t_test_25");
sleep 1;
player action ["getInDriver", myvehicletesticle];
totalres = 0;
while{_totaltest > 0} do {
	while{true} do {
		_chance = round (random 19);
		_marker = format["t_test_%1", _chance];
		postest = getmarkerpos _marker;
		if(player distance postest < 3000) exitwith {};
		sleep 1;
	};
	["Schaue dich in der Stadt um, um den nächsten Checkpoint zu finden!",false] spawn domsg;
	[postest] spawn client_fnc_jobmarker;
	_timer = 0;
	anwser = "Error";
	_shitcunt = 0;
	while{true} do {
		if(!life_seatbelt) exitwith { answer = "Nicht angeschnallt!"; };
		if(player distance postest < 15) exitwith { answer = "Checkpoint Erfolgreich!"; totalres = totalres + 1; };
		if(speed player >= 75) exitwith { answer = "Höchstegeschwindigkeit überschritten!"; (vehicle player) setVelocity [0, 0, 0]; };
		if(_timer > 120) exitwith { answer = "Du hast zu lange gebraucht!"; };
		_timer = _timer + 1;
		uisleep 1;
		hint parsetext format["<img size='1' image='\PRPG_Data\textures\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Du hast %1 Sekunden gebraucht.",_timer];
	};
	playSound "racebeep1";
	[format["%1",answer],false] spawn domsg;
	marker_on = false;
	sleep 3;
	_totaltest = _totaltest - 1;
};

if(totalres > 1) then {
	endresult = "BESTANDEN: Du hast nun einen Neuen Fühererschein..";
	driver_test = true;
	["Add","license",1] call client_fnc_sustain;
} else {
	endresult = "DURCHGEFALLEN: Du hast es nicht geschaft! Gut gemacht, du Loser!";
};

[endresult,false] spawn domsg;
(vehicle player) setVelocity [0, 0, 0];
sleep 0.05;
player action ["Eject", vehicle player];
deletevehicle myvehicletesticle;
[getpos player,"text to display","destroy"] spawn client_fnc_hudHelper;
if(life_istazed) exitWith {};
if(life_interrupted) exitWith {};
if((player getVariable["restrained",false])) exitWith {};
player setpos beginpos;
