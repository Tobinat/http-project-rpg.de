private["_msg","_dMarker"];
if(life_is_arrested) exitWith {}; 
life_lastKnownPos = param [0,[],[[]]];
waitUntil{!deadPlayer};
_dMarker = createMarkerLocal["Letzter Todespunkt",life_lastKnownPos];
_dMarker setMarkerTypeLocal "hd_warning";
_dMarker setMarkerTextLocal "Letzter Todespunkt - Fernhalten !";
_dMarker setMarkerColorLocal "ColorWhite";
NLR = time + 900;
while{!deadPlayer && (NLR - time) >= 0} do
{
	if(player distance life_lastKnownPos < 300) then {
		["Du bist zu nahe an deinem letzten Todespunkt! Du darfst hier nicht mehr eingreifen!", false] spawn domsg;
	};
	uiSleep 30;
};
life_lastKnownPos = [0,0,0];
deleteMarker _dMarker;