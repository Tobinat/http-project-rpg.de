_markername="hospital2"; 
_terrainobjects=nearestTerrainObjects [(getMarkerPos _markername),[],(getmarkersize _markername)select 0]; 
{hideObjectGlobal _x} foreach _terrainobjects;