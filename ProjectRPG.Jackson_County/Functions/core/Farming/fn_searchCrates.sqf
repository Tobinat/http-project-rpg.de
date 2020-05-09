/*
	Author: project-rpg.de

	Leute können Kisten durchsuchen und bekommen Random Loot zugewiesen.
*/

private ["_playeruid","_player"];

if (isNil "searchedcrates") then { searchedcrates = []; };

if (({_x == "cg_lockpick"} count magazines player) == 0) exitWith {["Du brauchst einen Lockpick um den Container zu öffnen!", true] spawn domsg;};

if (cursorobject IN searchedcrates) exitwith { ["Dieser Container ist bereits aufgebrochen!", true] spawn domsg;};
searchedcrates pushback cursorobject;
publicVariable "searchedcrates";

_chancelockpick = random(1000);
_chancepolice = random(1000);
_chanceloot = random(1000);

if (_chancelockpick > 750) then {player removeItem "cg_lockpick"; ["Dein Dietrich ist abgebrochen!", true] spawn domsg;};
if (_chancepolice > 875) then {
	if (_chancepolice > 925) then {
		{
			_unit = _x call BIS_fnc_getUnitByUid;
			[getPos player,"cop"] remoteexec ["client_fnc_jobMarker", _unit];
			["911: Ein unbekannter wurde beim Aufbrechen eines Containers am Silver Lake Hafen gesichtet!", false] remoteExec ["domsg", _unit];
		} foreach currentCop;
		_playeruid = currentsecurity call BIS_fnc_selectRandom;
		_player = _playeruid call BIS_fnc_getUnitByUid;
		[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", _player];
		["Dispatch: Ein unbekannter wurde beim Aufbrechen eines Containers am Silver Lake Hafen gesichtet!", false] remoteExec ["domsg", _player];
		["Du wurdest entdeckt!", true] spawn domsg;
	} else {
		_playeruid = currentsecurity call BIS_fnc_selectRandom;
		_player = _playeruid call BIS_fnc_getUnitByUid;
		[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", _player];
		["Dispatch: Ein unbekannter wurde beim Aufbrechen eines Containers am Silver Lake Hafen gesichtet!", false] remoteExec ["domsg", _player];
		["Du wurdest entdeckt!", true] spawn domsg;
	};
};

if (_chanceloot > 400) then {
	_lootarray = ["1","2","3","4","5","6","7","8","9","10","11","12"];
	_selected = _lootarray call BIS_fnc_selectRandom;
	
	switch (_selected) do {
    case "0": {player addItem "CG_DrugBrick"; ["Du hast Drogen gefunden, es könnte Kokain oder Heroin sein, du musst es Verarbeiten!", true] spawn domsg; };
    case "1": {player addItem "CG_DrugBrick"; player addItem "CG_DrugBrick"; ["Du hast Drogen gefunden, es könnte Kokain oder Heroin sein, du musst es Verarbeiten!", true] spawn domsg; };
	case "2": { for "_i" from 1 to 5 do { player addItem "prpg_item_kupfer_bar"; }; ["Du hast 5 Kupfer Barren gefunden!", true] spawn domsg; };
	case "3": {for "_i" from 1 to 5 do { player addItem "prpg_item_eisen_bar"; }; ["Du hast 5 Eisen Barren gefunden!", true] spawn domsg; };
	case "4": {player addItem "NP_kPelt"; ["Du hast einen Seltenen Pelz gefunden, bringe ihn zu dem seltsammen Mann in der Oase!", true] spawn domsg; };
	case "5": {player addItem "NP_kPelt"; ["Du hast einen Seltenen Pelz gefunden, bringe ihn zu dem seltsammen Mann in der Oase!", true] spawn domsg; };
	case "6": {player addItem "prpg_workbench_normal_kit"; ["Du hast eine Werkbank gefunden!", true] spawn domsg; };
	case "7": {
			_rareFish = ["Fish_Mackerel_7", "Fish_Tuna_7", "Fish_Trout_Rare", "Fish_Shark_Rare"];
			_rarefishselected = _rarefish call BIS_fnc_selectRandom;
			player addItem _rarefishselected;
			player addItem _rarefishselected;
			["Du zwei Seltene Fische gefunden, der Mann in der Oase gibt dir was für diese!", true] spawn domsg;
		};
	case "8": { for "_i" from 1 to 5 do { player addItem "np_energydrink"; }; ["Du hast einen Container mit Energydrinks geöffnet, du nimmst dir 5!", true] spawn domsg; };
	case "9": { 
		for "_i" from 1 to 20 do { player addItem "ACE_fieldDressing"; }; 
		for "_i" from 1 to 5 do { player addItem "ACE_tourniquet"; };
		["In diesem Container sind Medizinische verbrauchsgüter, du nimmst dir ein paar Bandagen und Tourniquets.", true] spawn domsg;
	};
	case "10": { for "_i" from 1 to 5 do { player addItem "np_beer"; }; ["Du hast einen Container mit Energydrinks geöffnet, du nimmst dir 5!", true] spawn domsg; }; 
	case "11": { for "_i" from 1 to 5 do { player addItem "np_beefsoup"; }; ["Du hast einen Container mit Rindersuppe geöffnet, du nimmst dir 5!", true] spawn domsg; };
	case "12": { for "_i" from 1 to 3 do { player addItem "CG_OilCanister"; }; ["Du hast einen Container mit Rafiniertem Öl geöffnet, du nimmst dir 3 Kanister!", true] spawn domsg; };
    default { ["In dem Container war nur unbrauchbarer Müll!", true] spawn domsg; };
};
	
} else {
	["In dem Container war nur unbrauchbarer Müll!", true] spawn domsg;
};