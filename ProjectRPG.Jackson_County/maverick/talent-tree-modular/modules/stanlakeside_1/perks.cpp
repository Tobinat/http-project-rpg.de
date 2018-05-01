//Mechanik
class perk_mechanic {
	displayName = "Mechaniker";
	requiredPerkPoints = 2;
	requiredLevel = 2;
	requiredPerk = "";
	subtitle = "Erforderliche Stufe 2, 2 Pkt. noetig.";
	description = "Beginne die Motorisierung zu erlernen.<br/><br/><t color='#10FF45'>Die Reperatur dauert 5 Sekunden weniger<br/>Autoservice ist 5% guenstiger</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_fasterRepair_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_fasterrepair_2 {
	displayName = "Schnellere Reparatur I";
	requiredPerkPoints = 4;
	requiredLevel = 5;
	requiredPerk = "perk_mechanic";
	subtitle = "Erforderliche Stufe 5, 4 Pkt. noetig.";
	description = "Erlernen sie die Automobitechnologie, um die Reperatur ihres Fahrzeuges zu beschleunigen.<br/><br/><t color='#10FF45'>Die Reperatur dauert 10 Sekunden wenigerd</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_fasterRepair_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_fasterrepair_3 {
	displayName = "Schnellere Reparatur II";
	requiredPerkPoints = 6;
	requiredLevel = 9;
	requiredPerk = "perk_mechanic_fasterrepair_2";
	subtitle = "Erforderliche Stufe 9, 6 Pkt. noetig.";
	description = "Erlernen sie die Automobitechnologie, um die Reperatur ihres Fahrzeuges zu beschleunigen.<br/><br/><t color='#10FF45'>Die Reperatur dauert 15 Sekunden weniger</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_fasterRepair_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_fasterrepair_4 {
	displayName = "Schnellere Reparatur III";
	requiredPerkPoints = 8;
	requiredLevel = 13;
	requiredPerk = "perk_mechanic_fasterrepair_3";
	subtitle = "Erforderliche Stufe 13, 8 Pkt. noetig.";
	description = "Erlernen sie die Automobitechnologie, um die Reperatur ihres Fahrzeuges zu beschleunigen.<br/><br/><t color='#10FF45'>Die Reperatur dauert 20 Sekunden weniger</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_fasterRepair_4.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_lowerprice_1 {
	displayName = "Guenstigerer Automobilservice I";
	requiredPerkPoints = 2;
	requiredLevel = 3;
	requiredPerk = "perk_mechanic";
	subtitle = "Erforderliche Stufe 3, 2 Pkt. noetig.";
	description = "Erlernen sie mit Haendlern besser zu diskutieren, um den Preis zu verhandeln.<br/><br/><t color='#10FF45'>Autoservice um 10% guenstiger.</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_mechanicRent_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_lowerprice_2 {
	displayName = "Guenstigerer Automobilservice II";
	requiredPerkPoints = 4;
	requiredLevel = 6;
	requiredPerk = "perk_mechanic_lowerprice_1";
	subtitle = "Erforderliche Stufe 6, 4 Pkt. noetig.";
	description = "Erlernen sie mit Haendlern besser zu diskutieren, um den Preis zu verhandeln.<br/><br/><t color='#10FF45'>Autoservice um 15% guenstiger.</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_mechanicRent_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_lowerprice_3 {
	displayName = "Guenstigerer Automobilservice III";
	requiredPerkPoints = 4;
	requiredLevel = 8;
	requiredPerk = "perk_mechanic_lowerprice_2";
	subtitle = "Erforderliche Stufe 8, 4 Pkt. noetig.";
	description = "Erlernen sie mit Haendlern besser zu diskutieren, um den Preis zu verhandeln.<br/><br/><t color='#10FF45'>Autoservice um 25% guenstiger.</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_mechanicRent_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_more_exp_1 {
	displayName = "Erfahrungsbonus";
	requiredPerkPoints = 3;
	requiredLevel = 2;
	requiredPerk = "";
	subtitle = "Erforderliche Stufe 2, 3 Pkt. noetig.";
	description = "Steigern sie ihre Faehigkeit wissen zu erwerben.<br/><br/><t color='#10FF45'>+1 EXP bei jeder Aktivitaet</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_more_exp_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_more_exp_2 {
	displayName = "Erfahrungsbonus II";
	requiredPerkPoints = 5;
	requiredLevel = 5;
	requiredPerk = "perk_more_exp_1";
	subtitle = "Erforderliche Stufe 5, 5 Pkt. noetig.";
	description = "Steigern sie ihre Faehigkeit wissen zu erwerben.<br/><br/><t color='#10FF45'>+2 EXP bei jeder Aktivitaet</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_more_exp_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_more_exp_3 {
	displayName = "Erfahrungsbonus III";
	requiredPerkPoints = 6;
	requiredLevel = 9;
	requiredPerk = "perk_more_exp_2";
	subtitle = "Erforderliche Stufe 9, 6 Pkt. noetig.";
	description = "Steigern sie ihre Faehigkeit wissen zu erwerben.<br/><br/><t color='#10FF45'>+3 EXP bei jeder Aktivitaet</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_more_exp_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};
