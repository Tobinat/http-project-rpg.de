_barrier = typeof barrier;
detach barrier;
deletevehicle barrier; 
barrier = _barrier createvehicle getpos player;
barrier allowdamage false;
_relpos = player getRelPos [1.6, 0]; 
barrier setpos _relpos; 
barrier setdir getdir player; 
barrier setVectorUp surfaceNormal getpos barrier;

attachedbarrier = false;