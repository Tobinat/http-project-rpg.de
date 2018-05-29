/*
Abfrage ob busfahrer anwesend sind

Author: PRPG
*/

_dimis = count currentdimis;

if (_dimis >= 0) then {
  [format ["Aktuell sind %1 Busfahrer im Dienst!",_dimis],false] spawn domsg;
} else {
  ["Aktuell sind keine Busfahrer im Dienst, musst also Laufen oder Taxi fahren.",false] spawn domsg;
};
