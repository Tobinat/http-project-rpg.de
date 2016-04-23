if (isServer) then {
	
	//Transmitter Pole at Lakeside PD
	_obj = [8721,7239.64,0] nearestObject 1005587; 
	hideObjectGlobal _obj;

	//Lamp (Halogen) at Lakeside PD
	_obj = [8717.26,7235.45,0] nearestObject 1005433; 
	hideObjectGlobal _obj;
	
	//Fence intersecting with new Lakeside PD
	_obj = [8719.13,7238.85,0] nearestObject 1015350; 
	_obj setDamage 1;

	//Fence intersecting with new Lakeside PD
	_obj = [8717.74,7237.44,0] nearestObject 1015351; 
	_obj setDamage 1;

	//Fence intersecting with new Lakeside PD
	_obj = [8716.51,7235.84,0] nearestObject 1015349; 
	_obj setDamage 1;

	//Fence intersecting with new Lakeside PD	
	_obj = [8715.61,7233.75,0] nearestObject 1015371; 
	_obj setDamage 1;

	//Floating billboard at Lakeside PD	
	_obj = [8751.29,7234.47,0] nearestObject 346196; 
	_obj setDamage 1;

	//Lamp (Halogen) at Los Diablos PD
	_obj = [3388.49,7627.19,0] nearestObject 1003361; 
	hideObjectGlobal _obj;

	//Fence intersecting with new Los Diablos PD	
	_obj = [3400,7610.11,0] nearestObject 1018598; 
	_obj setDamage 1;

	//Fence intersecting with new Los Diablos PD	
	_obj = [3403.45,7613.89,0] nearestObject 1018599; 
	_obj setDamage 1;

	_obj = [8536.61,6737.22,-9.18438] nearestObject 1006169;
	_obj enableSimulationGlobal false;

	_obj = [8600.51,6656.91,-23.7557] nearestObject 1006370;
	_obj enableSimulationGlobal false;

	_obj = [8513.54,6533.82,-9.17581] nearestObject 1007006;
	_obj enableSimulationGlobal false;

	_obj = [8552.66,6869.1,37.8495] nearestObject 1005776;
	_obj enableSimulationGlobal false;

	_obj = [8630.85,6893.68,-16.5092] nearestObject 1005860;
	_obj enableSimulationGlobal false;

	_obj = [8178.37,6414.38,0.0500259] nearestObject 1006686;
	_obj enableSimulationGlobal false;

	_obj = [8610.33,6353.54,0.0501709] nearestObject 1008477;
	_obj enableSimulationGlobal false;

	_obj = [8474.69,6531.61,0.0578384] nearestObject 1006982;
	_obj enableSimulationGlobal false;

	_obj = [8591.67,6683.38,0.0499992] nearestObject 1006383;
	_obj enableSimulationGlobal false;

	_obj = [8732.03,6660.5,0.0499992] nearestObject 1006600;
	_obj enableSimulationGlobal false;

	_obj = [8698.91,6858.63,0.0500069] nearestObject 1005906;
	_obj enableSimulationGlobal false;
	
	removeHeadgear LakesidePDAir; removeVest LakesidePDAir; removeGoggles LakesidePDAir; LakesidePDAir addUniform "TRYK_U_B_BLK"; LakesidePDAir addHeadgear "TCG_pdav_helmet";

	removeHeadgear LakesidePDGarage; removeVest LakesidePDGarage; removeGoggles LakesidePDGarage; LakesidePDGarage addUniform "CG_SO3"; LakesidePDGarage addVest "highthreatvesttan";

	removeHeadgear LakesidePDShop; removeVest LakesidePDShop; removeGoggles LakesidePDShop; LakesidePDShop addUniform "CG_SO1"; LakesidePDShop addVest "k_black_so"; 

	removeHeadgear AirfieldPD; removeVest AirfieldPD; removeGoggles AirfieldPD; AirfieldPD addUniform "TRYK_U_B_BLK"; AirfieldPD addHeadgear "TCG_pdav_helmet";

	removeHeadgear MorrisonPDGarage; removeVest MorrisonPDGarage; removeGoggles MorrisonPDGarage; MorrisonPDGarage addUniform "CG_SO3"; MorrisonPDGarage addVest "highthreatvesttan";

	removeHeadgear MorrisonPDShop; removeVest MorrisonPDShop; removeGoggles MorrisonPDShop; MorrisonPDShop addUniform "CG_SO1"; MorrisonPDShop addVest "k_black_so";

	removeHeadgear DOCShop; removeVest DOCShop; removeGoggles DOCShop; DOCShop addUniform "doj_uni";

	removeHeadgear DOCGarage; removeVest DOCGarage; removeGoggles DOCGarage; DOCGarage addUniform "doj_uni"; DOCGarage addVest "k_gree2_so";

	removeVest LosDPDGarage; removeGoggles LosDPDGarage; removeHeadgear LosDPDGarage; LosDPDGarage addUniform "CG_SO3"; LosDPDGarage addVest "highthreatvesttan";

	removeVest LosDPDShop; removeGoggles LosDPDShop; removeHeadgear LosDPDShop; LosDPDShop addUniform "CG_SO1"; LosDPDShop addVest "k_black_so";

	removeHeadgear LosDPDAir; removeGoggles LosDPDAir; LosDPDAir addUniform "TRYK_U_B_BLK"; LosDPDAir addHeadgear "TCG_pdav_helmet";

	removeHeadgear farmmarketNPC; farmmarketNPC addUniform "A3L_Farmer_Outfit";

	removeHeadgear farmworkNPC;  farmworkNPC addUniform "A3L_Farmer_Outfit";
	
	// prisondoor = createVehicle ["A3L_PrisonWall_Enterence", [9623.1729, 10052.688, -0.046915393], [], 0, "CAN_COLLIDE"];
	// publicvariable "prisondoor";
	// _vehicle_0 = prisondoor;
	// prisondoor setDir -139.78291;
	// prisondoor setPos [9623.1729, 10052.688, -0.046915393];
	// prisondoor allowDamage false;
	// prisondoor enableSimulationGlobal false;


	// _vehicle_4 = objNull;

	// _this = createVehicle ["A3L_Prison", [9627.9658, 10093.347], [], 0, "CAN_COLLIDE"];
	// _vehicle_4 = _this;
	// _this setDir -154.35838;
	// _this setPos [9627.9658, 10093.347];
	// _this allowDamage false;
	// _this enableSimulationGlobal false;


	// _vehicle_5 = objNull;

	// _this = createVehicle ["A3L_Prison_Geo1", [9627.9658, 10093.347], [], 0, "CAN_COLLIDE"];
	// _vehicle_5 = _this;
	// _this setDir -154.35838;
	// _this setPos [9627.9658, 10093.347];
	// _this allowDamage false;
	// _this enableSimulationGlobal false;


	// _vehicle_6 = objNull;

	// _this = createVehicle ["A3L_Prison_Geo2", [9627.9658, 10093.347], [], 0, "CAN_COLLIDE"];
	// _vehicle_6 = _this;
	// _this setDir -154.35838;
	// _this setPos [9627.9658, 10093.347];
	// _this allowDamage false;
	// _this enableSimulationGlobal false;


	_vehicle_7 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9646.9434, 10082.854, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
	_vehicle_7 = _this;
	_this setPos [9646.9434, 10082.854, 9.5367432e-007];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_8 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9615.6406, 10066.601, 4.6730042e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_8 = _this;
	_this setPos [9615.6406, 10066.601, 4.6730042e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_9 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9619.7969, 10077.976, -0.00015926361], [], 0, "CAN_COLLIDE"];
	_vehicle_9 = _this;
	_this setPos [9619.7969, 10077.976, -0.00015926361];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_10 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9615.2607, 10075.805, -2.3841858e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_10 = _this;
	_this setPos [9615.2607, 10075.805, -2.3841858e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_11 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9615.2998, 10079.383, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_11 = _this;
	_this setPos [9615.2998, 10079.383, 9.1552734e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_12 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9623.0557, 10072.669, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_12 = _this;
	_this setPos [9623.0557, 10072.669, 3.8146973e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_13 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9623.9629, 10085.456, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_13 = _this;
	_this setPos [9623.9629, 10085.456, -2.8610229e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_14 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9627.0498, 10092.332, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_14 = _this;
	_this setPos [9627.0498, 10092.332, -1.1444092e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_15 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9630.8926, 10099.868, -5.9127808e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_15 = _this;
	_this setPos [9630.8926, 10099.868, -5.9127808e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_16 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9634.5703, 10104.57, -1.2397766e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_16 = _this;
	_this setPos [9634.5703, 10104.57, -1.2397766e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_17 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9637.8809, 10099.336, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_17 = _this;
	_this setPos [9637.8809, 10099.336, -9.5367432e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_18 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9638.4141, 10102.041, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_18 = _this;
	_this setPos [9638.4141, 10102.041, 6.6757202e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_19 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9639.6816, 10101.738, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_19 = _this;
	_this setPos [9639.6816, 10101.738, 2.8610229e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_20 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9635.4795, 10094.775, -1.8119812e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_20 = _this;
	_this setPos [9635.4795, 10094.775, -1.8119812e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_21 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9632.9414, 10090.351, 5.4359436e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_21 = _this;
	_this setPos [9632.9414, 10090.351, 5.4359436e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_22 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9630.3828, 10084.476, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_22 = _this;
	_this setPos [9630.3828, 10084.476, 5.7220459e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_23 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9617.4111, 10085.731, 0], [], 0, "CAN_COLLIDE"];
	_vehicle_23 = _this;
	_this setPos [9617.4111, 10085.731, 0];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_24 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9616.3428, 10086.776, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_24 = _this;
	_this setPos [9616.3428, 10086.776, 8.5830688e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_25 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9619.2334, 10091.51, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_25 = _this;
	_this setPos [9619.2334, 10091.51, 6.6757202e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_26 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9621.3691, 10096.799, 7.0571899e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_26 = _this;
	_this setPos [9621.3691, 10096.799, 7.0571899e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_27 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9623.959, 10101.443, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_27 = _this;
	_this setPos [9623.959, 10101.443, -7.6293945e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_28 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9627.1025, 10108.011, 5.7220459e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_28 = _this;
	_this setPos [9627.1025, 10108.011, 5.7220459e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_29 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9617.375, 10061.023, -9.8228455e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_29 = _this;
	_this setPos [9617.375, 10061.023, -9.8228455e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_30 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9627.9346, 10056.822, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_30 = _this;
	_this setPos [9627.9346, 10056.822, 3.8146973e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_31 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9628.8857, 10050.141, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_31 = _this;
	_this setPos [9628.8857, 10050.141, -2.2888184e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_32 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9623.5469, 10053.65, -2.7656555e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_32 = _this;
	_this setPos [9623.5469, 10053.65, -2.7656555e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_33 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9639.8115, 10010.326, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_33 = _this;
	_this setPos [9639.8115, 10010.326, -1.9073486e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_34 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9638.5186, 10020.051, 0.00014686584], [], 0, "CAN_COLLIDE"];
	_vehicle_34 = _this;
	_this setPos [9638.5186, 10020.051, 0.00014686584];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_35 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9631.4521, 10026.394, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_35 = _this;
	_this setPos [9631.4521, 10026.394, -1.9073486e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_36 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9624.498, 10031.57, -1.7166138e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_36 = _this;
	_this setPos [9624.498, 10031.57, -1.7166138e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_37 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9619.2227, 10034.604, -6.6757202e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_37 = _this;
	_this setPos [9619.2227, 10034.604, -6.6757202e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_38 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9635.2383, 10051.073, -2.0980835e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_38 = _this;
	_this setPos [9635.2383, 10051.073, -2.0980835e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_39 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9641.0781, 10055.479, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_39 = _this;
	_this setPos [9641.0781, 10055.479, 7.6293945e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_40 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9645.8799, 10059.737, 0.00014877319], [], 0, "CAN_COLLIDE"];
	_vehicle_40 = _this;
	_this setPos [9645.8799, 10059.737, 0.00014877319];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_41 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9651.1875, 10063.846, -2.1934509e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_41 = _this;
	_this setPos [9651.1875, 10063.846, -2.1934509e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_42 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9656.3193, 10067.556, -0.00012111664], [], 0, "CAN_COLLIDE"];
	_vehicle_42 = _this;
	_this setPos [9656.3193, 10067.556, -0.00012111664];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_43 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9650.8213, 10071.772, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_43 = _this;
	_this setPos [9650.8213, 10071.772, -7.6293945e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_44 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9644.4053, 10066.582, 5.6266785e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_44 = _this;
	_this setPos [9644.4053, 10066.582, 5.6266785e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_45 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9648.6738, 10054.707, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
	_vehicle_45 = _this;
	_this setPos [9648.6738, 10054.707, 8.5830688e-006];
	_this allowDamage false;
	_this enableSimulationGlobal false;


	_vehicle_46 = objNull;

	_this = createVehicle ["Land_ClutterCutter_large_F", [9655.9434, 10056.976, -2.3841858e-005], [], 0, "CAN_COLLIDE"];
	_vehicle_46 = _this;
	_this setPos [9655.9434, 10056.976, -2.3841858e-005];
	_this allowDamage false;
	_this enableSimulationGlobal false;
};