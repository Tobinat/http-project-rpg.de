params ["_barrier"];
attachedbarrier = true;

_pia = ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS"] find _barrier;
_barrier = ["plp_up_BarrierTapePolice8m","plp_up_BarrierTapePolice4m","plp_up_BarrierTapePolice1m","plp_up_woodbarrierlongpolice","plp_up_WoodBarrierShortPoliceLightsOn"] select _pia;

barrier = _barrier createvehicle getpos player;
barrier attachto [player,[0,1.5,1]];
barrier setVectorUp surfaceNormal getpos barrier;


