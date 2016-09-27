#include <macro.h>
/*
	File: fn_aufstocken.sqf
	
	
	Description: Medizinisches Equipment, welches dem Rucksack hinzugefügt wird
	
*/
removeBackpack player;
player addBackpack "cg_invisbp";

for "_i" from 1 to 25 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV_250";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_surgicalKit";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};



["Medizinisches Equipment aufgestockt!", false] spawn doquickmsg;






this addItemToBackpack "ACE_personalAidKit";



